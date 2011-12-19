#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
**listTemplatesReleases.py

**Platform:**
	Windows, Linux, Mac Os X.

**Description:**
	Lists Templates releases.

**Others:**

"""
#**********************************************************************************************************************
#***	External imports.
#**********************************************************************************************************************
import logging
import os
import sys

#**********************************************************************************************************************
#***	Path settings.
#**********************************************************************************************************************
sys.path.append("../../Foundations/src")

#**********************************************************************************************************************
#***	Internal imports.
#**********************************************************************************************************************
import foundations.core as core
import foundations.namespace as namespace
import foundations.parsers
from foundations.io import File
from foundations.walkers import OsWalker
from foundations.parsers import SectionsFileParser
from foundations.globals.constants import Constants

#**********************************************************************************************************************
#***	Module attributes.
#**********************************************************************************************************************
__author__ = "Thomas Mansencal"
__copyright__ = "Copyright (C) 2008 - 2011 - Thomas Mansencal"
__license__ = "GPL V3.0 - http://www.gnu.org/licenses/"
__maintainer__ = "Thomas Mansencal"
__email__ = "thomas.mansencal@gmail.com"
__status__ = "Production"

__all__ = ["LOGGER", "LOGGING_CONSOLE_HANDLER", "TEMPLATES_PATH", "TEMPLATES_EXTENSION", "listTemplatesReleases"]

LOGGER = logging.getLogger(Constants.logger)

LOGGING_CONSOLE_HANDLER = logging.StreamHandler(sys.stdout)
LOGGING_CONSOLE_HANDLER.setFormatter(core.LOGGING_DEFAULT_FORMATTER)
LOGGER.addHandler(LOGGING_CONSOLE_HANDLER)

core.setVerbosityLevel(3)

TEMPLATES_PATH = "../src/templates"
TEMPLATES_EXTENSION = "sIBLT"

#**********************************************************************************************************************
#***	Main python code.
#**********************************************************************************************************************
def listTemplatesReleases():
	"""
	This definition lists Templates releases.
	"""

	osWalker = OsWalker()
	osWalker.root = TEMPLATES_PATH
	templates = osWalker.walk((TEMPLATES_EXTENSION,), ("\._",))
	for template in sorted(templates):
		sectionsFileParser = SectionsFileParser(templates[template])
		sectionsFileParser.read() and sectionsFileParser.parse(rawSections=("Script",))

		LOGGER.info("{0} | '{1}': '{2}'.".format(listTemplatesReleases.__name__, namespace.getNamespace(template), foundations.parsers.getAttributeCompound("Release", sectionsFileParser.getValue("Release", "Template", encode=True)).value))

if __name__ == "__main__":
	listTemplatesReleases()

