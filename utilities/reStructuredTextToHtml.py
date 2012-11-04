#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
**reStructuredTextToHtml.py

**Platform:**
	Windows, Linux, Mac Os X.

**Description:**
	Converts a reStructuredText file to html.

**Others:**

"""

#**********************************************************************************************************************
#***	External imports.
#**********************************************************************************************************************
import os
import re
import sys
if sys.version_info[:2] <= (2, 6):
	from ordereddict import OrderedDict
else:
	from collections import OrderedDict

#**********************************************************************************************************************
#***	Internal imports.
#**********************************************************************************************************************
import foundations.verbose
from foundations.io import File

#**********************************************************************************************************************
#***	Module attributes.
#**********************************************************************************************************************
__author__ = "Thomas Mansencal"
__copyright__ = "Copyright (C) 2008 - 2012 - Thomas Mansencal"
__license__ = "GPL V3.0 - http://www.gnu.org/licenses/"
__maintainer__ = "Thomas Mansencal"
__email__ = "thomas.mansencal@gmail.com"
__status__ = "Production"

__all__ = ["LOGGER",
		"OUTPUT_FILES_EXTENSION",
		"SLICE_ATTRIBUTE_INDENT",
		"CONTENT_DELETION",
		"CONTENT_SUBSTITUTIONS",
		"sliceDocumentation"]

LOGGER = foundations.verbose.installLogger()

OUTPUT_FILES_EXTENSION = "rst"
SLICE_ATTRIBUTE_INDENT = 2
CONTENT_DELETION = ()
CONTENT_SUBSTITUTIONS = {"resources/": "../",
						"     \|":"            |" }

foundations.verbose.getLoggingConsoleHandler()
foundations.verbose.setVerbosityLevel(3)

#**********************************************************************************************************************
#***	Main Python code.
#**********************************************************************************************************************
def reStructuredTextToHtml(fileIn, fileOut):
	"""
	This definition outputs a reStructuredText file to html.

	:param fileIn: File to convert. ( String )
	:param fileOut: Output file. ( String )
	"""

	LOGGER.info("{0} | Converting '{1}' reStructuredText file to html!".format(reStructuredTextToHtml.__name__, fileIn))
	os.system("{0} --stylesheet-path='{1}' '{2}' > '{3}'".format(RST2HTML,
																os.path.join(os.path.dirname(__file__), CSS_FILE),
																fileIn,
																fileOut))

	LOGGER.info("{0} | Formatting html file!".format("Tidy"))
	os.system("tidy -config {0} -m '{1}'".format(os.path.join(os.path.dirname(__file__), TIDY_SETTINGS_FILE), fileOut))

	file = File(fileOut)
	file.read()
	LOGGER.info("{0} | Replacing spaces with tabs!".format(reStructuredTextToHtml.__name__))
	file.content = [line.replace(" " * 4, "\t") for line in file.content]
	file.write()

if __name__ == "__main__":
	reStructuredTextToHtml(sys.argv[1], sys.argv[2])
