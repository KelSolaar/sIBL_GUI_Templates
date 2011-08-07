#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
**sIBL_GUI_Templates_getTemplatesReleases.py

**Platform:**
	Windows, Linux, Mac Os X.

**Description:**
	Get Templates releases.

**Others:**

"""
#***********************************************************************************************
#***	External imports.
#***********************************************************************************************
import logging
import os
import sys

#***********************************************************************************************
#***	Path settings.
#***********************************************************************************************
sys.path.append("../../Foundations/src")

#***********************************************************************************************
#***	Internal imports.
#***********************************************************************************************
import foundations.core as core
import foundations.namespace as namespace
import foundations.parser
from foundations.io import File
from foundations.walker import Walker
from foundations.parser import Parser
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

TEMPLATES_PATH = "../src/templates"
TEMPLATES_EXTENSION = "sIBLT"

#***********************************************************************************************
#***	Main python code.
#***********************************************************************************************
def getTemplatesReleases():
	"""
	This definition gets Templates releases.
	"""

	walker = Walker()
	walker.root = TEMPLATES_PATH
	templates = walker.walk((TEMPLATES_EXTENSION,), ("\._",))
	for template in sorted(templates.keys()):
		parser = Parser(templates[template])
		parser.read() and parser.parse()

		LOGGER.info("{0} | '{1}': '{2}'.".format(getTemplatesReleases.__name__, namespace.getNamespace(template), foundations.parser.getAttributeCompound("Release", parser.getValue("Release", "Template", encode=True)).value))

if __name__ == "__main__":
