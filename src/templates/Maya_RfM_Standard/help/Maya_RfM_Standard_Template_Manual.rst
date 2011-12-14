Maya RfM Standard - Template
============================

Manual - Help File
==================

Table Of Content
----------------

-  `Introduction`_
-  `Options`_

   -  `Common Attributes`_
   -  `Additional Attributes`_
   -  `Scene Components`_

-  `Change Log`_
-  `About`_

Introduction
------------

Maya RfM Standard is a sIBL_GUI Template for Maya and Renderman For Maya starting from 2K versions. It provides a bridge between Maya, Mental Ray and Smart IBL.
There is an Helper Script with everything you need to use sIBL_GUI smoothly with Maya here: `sIBL_GUI For Maya - Helper Script <http://www.hdrlabs.com/cgi-bin/forum/YaBB.pl?num=1223936394/2#2>`_

Options
-------

Common Attributes
-----------------

-  **Create Background**: Creates the Background Environment Branch of the Raytype Shader ( Using the High Resolution LDR file of the current IBL Set ).
-  **Create Reflection**: Creates the Reflection Environment Branch of the Raytype Shader ( Using the Reflection HDR file of the current IBL Set ).
-  **Create Lighting**: Creates the Lighting Environment Branch of the Raytype Shader ( Using the Lighting HDR file of the current IBL Set ).
-  **Create Sun**: Creates the light used as Sun.
-  **Create Dynamic Lights**: Creates the sIBL Dynamics Lights.

Additional Attributes
---------------------

-  **Preserve Session Settings**: Preserves sIBL session setup settings: previous sIBL_Feedback and sIBL_Ground transformations are restored.
-  **Display Feedback**: Displays a viewport Visual Feedback with the current IBL LDR Background image.
-  **Sun Light Type**: Creates the Sun as one of these lights type: "Directional", "Area", "Spot", "Point".
-  **Dynamic Lights Type**: Creates the Dynamics Lights as one of these lights type: "Directional", "Area", "Spot", "Point".
-  **Shadows Type**: Defines the shadows as one of type : "Raytraced", "Shadow Maps", "Deep Shadow Maps".
-  **Hide Lights**: Hides all current Scene lights.
-  **Create Ground**: A Plane is added to the Scene.
-  **Activate Color Bleeding**: Color Bleeding is activated in the Diffuse Environment Light and the associated Radiosity Bake Pass is created and connected to the related Environment Light.
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

Change Log
----------

`sIBL_GUI_Templates - Change Log <http://kelsolaar.hdrlabs.com/sIBL_GUI/Repository/Templates/Change%20Log/Change%20Log.html>`_

About
-----

| *sIBL_GUI* by Thomas Mansencal - 2008 - 2011
| Copyright© 2008 - 2011 - Thomas Mansencal - `thomas.mansencal@gmail.com <mailto:thomas.mansencal@gmail.com>`_
| This software is released under terms of GNU GPL V3 license: http://www.gnu.org/licenses/
| http://www.thomasmansencal.com/