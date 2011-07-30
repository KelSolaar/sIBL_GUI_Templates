#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
**sIBL_GUI_Templates_textileToHtml.py

**Platform:**
	Windows, Linux, Mac Os X.

**Description:**
	Converts a Textile file to HTML.

**Others:**

"""
#***********************************************************************************************
#***	External imports.
#***********************************************************************************************
import logging
import os
import sys
import textile

#***********************************************************************************************
#***	Internal imports.
#***********************************************************************************************
import foundations.core as core
from foundations.io import File
from foundations.globals.constants import Constants

#***********************************************************************************************
#***	Module attributes.
#***********************************************************************************************
__author__ = "Thomas Mansencal"
__copyright__ = "Copyright (C) 2008 - 2011 - Thomas Mansencal"
__license__ = "GPL V3.0 - http://www.gnu.org/licenses/"
__maintainer__ = "Thomas Mansencal"
__email__ = "thomas.mansencal@gmail.com"
__status__ = "Production"

LOGGER = logging.getLogger(Constants.logger)

LOGGING_CONSOLE_HANDLER = logging.StreamHandler(sys.stdout)
LOGGING_CONSOLE_HANDLER.setFormatter(core.LOGGING_DEFAULT_FORMATTER)
LOGGER.addHandler(LOGGING_CONSOLE_HANDLER)

core.setVerbosityLevel(3)

#***********************************************************************************************
#***	Main python code.
#***********************************************************************************************
def textileToHtml(fileIn, fileOut, title):
	"""
	This definition outputs a Textile file to HTML.

	:param fileIn: File to convert. ( String )
	:param fileOut: Output file. ( String )
	:param title: HTML file title. ( String )
	"""

	LOGGER.info("{0} | Converting '{1}' Textile file to HTML!".format(textileToHtml.__name__, fileIn))
	file = File(fileIn)
	file.read()

	output = []
	output.append("<html>\n\t<head>\n")
	output.append("\t\t<title>{0}</title>\n".format(title))
	output.append(
			"""\t\t<style type="text/css">
	            body {
	                text-align: justify;
	                font-size: 10pt;
	                margin: 10px 10px 10px 10px;
	                background-color: rgb(48, 48, 48);
	                color: rgb(192, 192, 192);
	            }
	            A:link {
	                text-decoration: none;
	                color: rgb(160, 96, 64);
	            }
	            A:visited {
	                text-decoration: none;
	                color: rgb(160, 96, 64);
	            }
	            A:active {
	                text-decoration: none;
	                color: rgb(160, 96, 64);
	            }
	            A:hover {
	                text-decoration: underline;
	                color: rgb(160, 96, 64);
	            }
	        </style>\n""")
	output.append("\t</head>\n\t<body>\n\t")
	output.append("\n\t".join(line for line in textile.textile("".join(file.content)).split("\n") if line))
	output.append("\t\t</span>\n")
	output.append("\t</body>\n</html>")

	file = File(fileOut)
	file.content = output
	file.write()

	LOGGER.info("{0} | Formatting HTML file!".format(textileToHtml.__name__))
	os.system("tidy -config {0} -m '{1}'".format(os.path.join(os.path.dirname(__file__), "tidy/tidySettings.rc"), file.file))

	file.read()
	file.content = [line.replace(" " * 4, "\t") for line in file.content]
	file.write()

if __name__ == "__main__":
	textileToHtml(sys.argv[1], sys.argv[2], sys.argv[3])

