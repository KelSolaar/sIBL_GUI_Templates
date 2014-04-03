Maya VRay Dome Light Standard - Template
========================================

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

Maya VRay Dome Light is a sIBL_GUI Template for Maya and VRay starting from Maya 2011 version. It provides a bridge between Maya, VRay and Smart IBL.
It creates a VRay Dome Light and connects the Lighting Texture to it so the Lighting is provided by the Light and not the Environment.
There is an Helper Script with everything you need to use sIBL_GUI smoothly with Maya here: `sIBL_GUI For Maya - Helper Script <http://www.hdrlabs.com/cgi-bin/forum/YaBB.pl?num=1223936394/2#2>`_

Options
-------

Common Attributes
-----------------

-  **Scene Setup Prefix**: Defines the prefix used by the Scene Setup.
-  **Create Background**: Creates the Background Environment Branch of the Raytype Shader ( Using the High Resolution LDR file of the current IBL Set ).
-  **Create Reflection**: Creates the Reflection Environment Branch of the Raytype Shader ( Using the Reflection HDR file of the current IBL Set ).
-  **Create Lighting**: Creates the Lighting Environment Branch of the Raytype Shader ( Using the Lighting HDR file of the current IBL Set ).
-  **Create Sun**: Creates the light used as Sun.
-  **Create Dynamic Lights**: Creates the sIBL Dynamics Lights.

Additional Attributes
---------------------

-  **Preserve Session Settings**: Preserves sIBL session setup settings: previous sIBL_Feedback and sIBL_Ground transformations are restored.
-  **Display Feedback**: Displays a viewport Visual Feedback with the current IBL LDR Background image.
-  **Sun Light Type**: Creates the Sun as one of these lights type: "VRaySun", "Directional", "Area", "Spot", "Point", "VRaySphere", "VRayRect", "VRayIES".
-  **Dynamic Lights Type**: Creates the Dynamics Lights as one of these lights type: "Directional", "Area", "Spot", "Point", "VRaySun", "VRaySphere", "VRayRect", "VRayIES".
-  **Hide Lights**: Hides all current Scene lights.
-  **Create Ground**: A Plane is added to the Scene.
-  **Ground Shadow Catcher**: A VRayObjectProperties Node is assigned to the Ground.
-  **Activate Linear Workflow**: Sets the Output Gamma to 2.2.

Scene Components
----------------

sIBL_Controls / [ Smart IBL Controls ]
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

+-----------------------------------------------------------------+
| ..  image:: resources/pictures/sIBL_Controls_Attributes.jpg     |
+-----------------------------------------------------------------+

There are several Controls Attributes on the sIBL_Controls Annotation available in the Channel Box.

Render Togglers:

-  Activate / Deactivate the different Smart IBL Components.
-  [* CC]: Gamma / Gain Controls of the different Smart IBL Components.

Changes
----------

`sIBL_GUI_Templates - Changes <http://kelsolaar.hdrlabs.com/sIBL_GUI/Repository/Templates/Changes/Changes.html>`_

About
-----

| **sIBL_GUI** by Thomas Mansencal - 2008 - 2014
| Copyright © 2008 - 2014 - Thomas Mansencal - `thomas.mansencal@gmail.com <mailto:thomas.mansencal@gmail.com>`_
| This software is released under terms of GNU GPL V3 license: http://www.gnu.org/licenses/
| http://www.thomasmansencal.com/