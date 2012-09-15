Maya VRay Lightsmith - Template
===============================

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

Maya VRay Lightsmith is a sIBL_GUI Template for Maya and VRay for Maya. It provides a way to create Lightsmith Lights in your scene.
There is an Helper Script with everything you need to use sIBL_GUI smoothly with Maya here: `sIBL_GUI For Maya - Helper Script <http://www.hdrlabs.com/cgi-bin/forum/YaBB.pl?num=1223936394/2#2>`_

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

-  **Activate Indirect Lighting**: Indirect Lighting is activated in the current Scene.
-  **Activate Linear Workflow**: Sets the Output Gamma to 2.2.

Scene Components
----------------

Lightsmith_Controls
^^^^^^^^^^^^^^^^^^^

+-----------------------------------------------------------------------+
| ..  image:: resources/pictures/Lightsmith_Controls_Attributes.jpg     |
+-----------------------------------------------------------------------+

There are several Controls Attributes on the Lightsmith_Controls Annotation available in the Lightsmith Light Hook Group.

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

| **sIBL_GUI** by Thomas Mansencal - 2008 - 2012
| Copyright© 2008 - 2012 - Thomas Mansencal - `thomas.mansencal@gmail.com <mailto:thomas.mansencal@gmail.com>`_
| This software is released under terms of GNU GPL V3 license: http://www.gnu.org/licenses/
| http://www.thomasmansencal.com/