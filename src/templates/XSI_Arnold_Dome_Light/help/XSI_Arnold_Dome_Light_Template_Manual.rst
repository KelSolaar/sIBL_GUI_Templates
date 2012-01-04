XSI Arnold Dome Light - Template
================================

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

XSI Arnold Dome Light is a sIBL_GUI Template for XSI and Arnold for XSI 2010 version. It provides a bridge between XSI, Arnold and Smart IBL.
There is a XSI Addon with everything needed to use sIBL_GUI smoothly with XSI here: `sIBL_GUI For Softimage - Helper Script <http://www.hdrlabs.com/cgi-bin/forum/YaBB.pl?num=1221392511>`_

Options
-------

Common Attributes
-----------------

-  **Create Background**: Creates the Background Environment Branch of the Sky Shader ( Using the High Resolution LDR file of the current IBL Set ).
-  **Create Reflection**: Creates the Reflection Environment Branch of the Sky Shader ( Using the Reflection HDR file of the current IBL Set ).
-  **Create Lighting**: Creates the Lighting Environment Branch of the Sky Shader ( Using the Lighting HDR file of the current IBL Set ).
-  **Create Sun**: Creates the light used as Sun.
-  **Create Dynamic Lights**: Creates the sIBL Dynamics Lights.

Additional Attributes
---------------------

-  **Passes Selection Dialog**: A Pass(es) selection dialog appears to choose which Pass(es) will be affected by the IBL.
-  **Display Feedback**: Displays a viewport Visual Feedback with the current IBL LDR Background image.
-  **Sun Light Type**: Create the Sun as one of these lights type: "Distant", "Quad", "Spot", "Point".
-  **Dynamic Lights Type**: Create the Dynamics Lights as one of these lights type: "Distant", "Quad", "Spot", "Point".
-  **Hide Lights**: Hides all current Scene lights.
-  **Create Ground**: A Grid is added to the Scene.
-  **Use Dual Skydome Setup**: Two Skydomes lights will be created: one for the Diffuse component and another one for the Specular component.
-  **Use Reflection Image For Lighting**: Reflection Image is connected to the Skydome(s).
-  **Activate Linear Workflow**: Activates Linear Workflow.
-  **Use Arnold Gamma Correction**: Uses Arnold Gamma Correction instead of XSI Native Color Management ( Preferences > Display > Color Management ).

Scene Components
----------------

sIBL_Controls / [ Smart IBL Controls ]
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

+-----------------------------------------------------------+
| ..  image:: resources/pictures/Smart_IBL_Controls.jpg     |
+-----------------------------------------------------------+

There are several Controls Attributes on the sIBL_Controls Annotation available in the Channel Box.

Render Togglers:

-  Activate / Deactivate the different Smart IBL Components.
-  [* CC]: Gamma / Gain Controls of the different Smart IBL Components.

Change Log
----------

`sIBL_GUI_Templates - Change Log <http://kelsolaar.hdrlabs.com/sIBL_GUI/Repository/Templates/Change%20Log/Change%20Log.html>`_

About
-----

| *sIBL_GUI* by Thomas Mansencal - 2008 - 2012
| Copyright© 2008 - 2012 - Thomas Mansencal - `thomas.mansencal@gmail.com <mailto:thomas.mansencal@gmail.com>`_
| This software is released under terms of GNU GPL V3 license: http://www.gnu.org/licenses/
| http://www.thomasmansencal.com/