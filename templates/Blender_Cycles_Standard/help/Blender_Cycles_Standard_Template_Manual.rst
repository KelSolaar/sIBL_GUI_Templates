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

-  Strength of the light emitted by the different sIBL Components.
-  Brightness / Contrast Controls of the different sIBL Components.

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
   Strength values are set to the multiplier value specified in the sIBL file
   without any attempts at conversion. This seems to work pretty well for
   environment  shaders and sun lamps, whose strength values, the Blender wiki
   claims, are specified in Watts/m\ :sup:`2`\ . However, according to the wiki
   the strength of area, spot, and point lamps is specified in Watts.
   Therefore, additional considerations are required for these lamps and
   they will typically require a much larger strength value to have any
   visible effect for the same visible effect. As long as you stick to Sun
   Lamps for the Sun and Dynamic lights the current results should be reasonable.
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
