#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
**listTemplatesReleases.py**

**Platform:**
	Windows, Linux, Mac Os X.

**Description:**
	Lists Templates releases.

**Others:**

"""

#**********************************************************************************************************************
#***	Future imports.
#**********************************************************************************************************************
from __future__ import unicode_literals

#**********************************************************************************************************************
#***	External imports.
#**********************************************************************************************************************
import os
import sys

#**********************************************************************************************************************
#***	Internal imports.
#**********************************************************************************************************************
import foundations.parsers
import foundations.strings
import foundations.walkers
import foundations.verbose
from foundations.io import File
from foundations.parsers import SectionsFileParser
from foundations.globals.constants import Constants

#**********************************************************************************************************************
#***	Module attributes.
#**********************************************************************************************************************
__author__ = "Thomas Mansencal"
__copyright__ = "Copyright (C) 2008 - 2014 - Thomas Mansencal"
__license__ = "GPL V3.0 - http://www.gnu.org/licenses/"
__maintainer__ = "Thomas Mansencal"
__email__ = "thomas.mansencal@gmail.com"
__status__ = "Production"

__all__ = ["LOGGER", "TEMPLATES_PATH", "TEMPLATES_EXTENSION", "listTemplatesReleases"]

LOGGER = foundations.verbose.installLogger()

TEMPLATES_PATH = "../templates"
TEMPLATES_EXTENSION = "sIBLT"

foundations.verbose.getLoggingConsoleHandler()
foundations.verbose.setVerbosityLevel(3)

#**********************************************************************************************************************
#***	Main python code.
#**********************************************************************************************************************
def listTemplatesReleases():
	"""
	Lists Templates releases.
	"""

	for template in sorted(list(foundations.walkers.filesWalker(os.path.normpath(TEMPLATES_PATH), (TEMPLATES_EXTENSION,), ("\._",)))):
		sectionsFileParser = SectionsFileParser(template)
		sectionsFileParser.read() and sectionsFileParser.parse(rawSections=("Script",))

		LOGGER.info("{0} | '{1}': '{2}'.".format(listTemplatesReleases.__name__,
												foundations.strings.getSplitextBasename(template),
												foundations.parsers.getAttributeCompound("Release",
												sectionsFileParser.getValue("Release", "Template")).value))

if __name__ == "__main__":
	listTemplatesReleases()

