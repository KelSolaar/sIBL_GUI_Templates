Blender Cycles Standard - Template
==================================

Manual - Help File
==================

Table Of Content
----------------

-  `Introduction`_
-  `Options`_

   -  `Common Attributes`_
   -  `Additional Attributes`_

-  `Blender sIBL Controls`_
-  `Known Issues`_
-  `Changes`_
-  `About`_

Introduction
------------

Blender Cycles Standard is a sIBL_GUI Template for the Cycles renderer in 
Blender 2.68 and newer. It provides a bridge between Blender and Smart IBL.

Options
-------

Common Attributes
-----------------

-  **Scene Setup Prefix**: Defines the prefix used by the Scene Setup.
-  **Create Background**: Enable the Background Environment Shader ( Using the
   High Resolution LDR file of the current sIBL Set ). Note that disabling this
   option will still add the Background Shader to the node tree, however, its
   strength will be set to 0.
-  **Create Reflection**: Enable the Reflection Environment Shader ( Using the
   Reflection HDR file of the current sIBL Set ). Note that disabling this
   option will still add the Reflection Shader to the node tree, however, its
   strength will be set to 0.
-  **Create Lighting**: Enable the Lighting Environment Shader ( Using the
   Lighting HDR file of the current sIBL Set ). Note that disabling this
   option will still add the Lighting Shader to the node tree, however, its
   strength will be set to 0.
-  **Create Sun**: Create the light used as the Sun.
-  **Create Dynamic Lights**: Create the sIBL Dynamic Lights.


Additional Attributes
---------------------

-  **Light Strength**: The strength of all sun and dynamic lights in the
   scene will sum to this value. Setting it to 0 will use the strength values
   specified in the sIBL file without scaling.
-  **Sun Light Type**: Create the Sun as one of these light types: "Sun",
   "Area", "Spot", "Point".
-  **Dynamic Lights Type**: Create the Dynamic Lights as one of these light
   types: "Sun", "Area", "Spot", "Point".
-  **Importance Sample Environment**: Enable Multiple Importance Sampling for
   the World Environment Shader.
-  **Importance Sample Sun**: Enable Multiple Importance Sampling for
   sun light.
-  **Importance Sample Dynamic**: Enable Multiple Importance Sampling for
   dynamic lights.
-  **Hide Lights**: Hide all existing Scene lights.
-  **Create Ground**: Add a Ground Plane to the Scene.
-  **Ground AO Catcher**: Assign an Ambient Occlusion catcher material to
   the Ground.

Blender sIBL Controls
---------------------

There are several controls available on the World Surface panel.

-  Strength of the light emitted by the different sIBL environment maps.
-  Brightness / Contrast Controls of the different sIBL environment maps.

+-----------------------------------------------------------------+
| ..  image:: resources/pictures/sIBL_Controls_Attributes.jpg     |
+-----------------------------------------------------------------+

Known Issues
------------

-  Rotation of the sIBL Controls empty moves the sun and dynamic lights but
   does not rotate the environment shaders. The inverse of the empty's rotation
   can be manually use to adjust the Mapping nodes within the sIBL environment
   and material node groups. Hooking this up properly probably is at the top of
   the TODO list.
-  North values specified in sIBL sets are ignored. This will be implemented
   after rotation of sIBL Controls is hooked up properly.
-  No shadow catcher material for the ground plane. As a temporary workaround
   I've included the option of applying an Ambient Occlusion catcher material
   to the ground plane so at least there is a hint of a contact shadow. Until
   someone writes a shadow catcher shader or we get some more shader math nodes
   I'm not sure how to resolve this.
-  The strength values used for lights may not be physically plausible.
   For the environment map and sun lamps, strength values are set to the
   multiplier value specified in the sIBL file. The strength of other lamps
   are scaled so that the energy received at the control empty is equivalent to
   the output of a sun lamp. This scheme tends to produce scenes that are
   underlit. This is due in part to the fact that sun lamps and environment
   maps of equal strength do not add the same amount of light to the scene.
   In particular the relationship seems to be a uniform white world with
   strength equal to 1 adds the same amount of light as a sun lamp with
   strength equal to pi, although it is not entirely clear to me why this
   relationship should exist. Adjusting the Light Strength setting changes the
   total amount of light that lamps add to the scene and can be used to adjust
   for these differences.
-  Plates listed in the sIBL file are ignored.

Changes
----------

`sIBL_GUI_Templates - Changes <http://kelsolaar.hdrlabs.com/sIBL_GUI/Repository/Templates/Changes/Changes.html>`_

About
-----

| **sIBL_GUI** by Thomas Mansencal - 2008 - 2013
| Copyright© 2008 - 2013 - Thomas Mansencal - `thomas.mansencal@gmail.com <mailto:thomas.mansencal@gmail.com>`_
| This software is released under terms of GNU GPL V3 license: http://www.gnu.org/licenses/
| http://www.thomasmansencal.com/
