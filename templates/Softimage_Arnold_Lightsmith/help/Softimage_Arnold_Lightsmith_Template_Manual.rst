Softimage Arnold Lightsmith - Template
======================================

Manual - Help File
==================

Table Of Content
----------------

-  `Introduction`_
-  `Options`_

   -  `Common Attributes`_
   -  `Additional Attributes`_
   -  `Scene Components`_

-  `Changes`_
-  `About`_

Introduction
------------

Softimage Arnold Lightsmith is a sIBL_GUI Template for Softimage and Arnold for Softimage. It provides a way to create Lightsmith Lights in your scene.
There is a Softimage Addon with everything needed to use sIBL_GUI smoothly with Softimage here: `sIBL_GUI For Softimage - Helper Script <http://www.hdrlabs.com/cgi-bin/forum/YaBB.pl?num=1221392511>`_

Options
-------

Common Attributes
-----------------

-  **Scene Setup Prefix**: Defines the prefix used by the Scene Setup.
-  **Light Scale**: Defines the Lightsmith Light scale.
-  **Create Light**: Creates a real light that will drive the HDR texture as companion for the Lightsmith Light.
-  **Textured Light**: The real light will be textured using the HDR texture.
-  **Connect To Smart Ibl Lights**: The Lightsmith Light will be connected to the existing scene Smart Ibl Lights.

Additional Attributes
---------------------

-  **Passes Selection Dialog**: A Pass(es) selection dialog appears to choose which Pass(es) will be affected by the Linear Workflow.
-  **Hide Default Light**: Hides current Scene Default Light.
-  **Activate Linear Workflow**: Activates Linear Workflow.
-  **Use Arnold Gamma Correction**: Uses Arnold Gamma Correction instead of Softimage Native Color Management ( Preferences > Display > Color Management ).

Scene Components
----------------

Lightsmith_Controls
^^^^^^^^^^^^^^^^^^^
+------------------------------------------------------------+
| ..  image:: resources/pictures/Lightsmith_Controls.jpg     |
+------------------------------------------------------------+

There are several Controls Attributes on the Lightsmith_Controls Property available in the Lightsmith Light Hook Group.

General Controls:

-  **Color**: Defines the Lightsmith Light color.
-  **Intensity**: Defines the Lightsmith Light intensity.

Others Controls:

-  **Override**: Override the Lightsmith Light HDR texture color without affecting the Lightsmith Light color.

Changes
----------

`sIBL_GUI_Templates - Changes <http://kelsolaar.hdrlabs.com/sIBL_GUI/Repository/Templates/Changes/Changes.html>`_

About
-----

| **sIBL_GUI** by Thomas Mansencal - 2008 - 2013
| Copyright© 2008 - 2013 - Thomas Mansencal - `thomas.mansencal@gmail.com <mailto:thomas.mansencal@gmail.com>`_
| This software is released under terms of GNU GPL V3 license: http://www.gnu.org/licenses/
| http://www.thomasmansencal.com/