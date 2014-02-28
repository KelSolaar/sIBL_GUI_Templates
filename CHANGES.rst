sIBL_GUI_Templates - 2.1.2 - Stable
===================================

.. .changes

Changes
=======

2.1.2 - Stable
--------------

-  Ensured **Softimage_Arnold_Lightsmith** template compatibility with **SItoA 2.8.0** by removing deprecated legacy light filter code.

2.1.1 - Stable
--------------

-  Removed **miCreateOtherOptionsNodesForURG** mel procedure call in **Maya_MR_Standard** and **Maya_MR_Lightsmith** templates.

2.1.0 - Stable
--------------

-  Fixed color profiles issues in **Softimage_Arnold_Dome_Light** and **Softimage_Arnold_Standard** Templates.
-  Implemented precise per channel color control over the IBL setup in **Softimage** Templates. 

2.0.9 - Stable
--------------

-  Fixed exception in **Softimage_VRay_Standard** Template.

2.0.8 - Stable
--------------

-  Implemented **Softimage_VRay_Standard** Template.

2.0.7 - Stable
--------------

-  Ensured **Softimage_Arnold_Dome_Light** and **Softimage_Arnold_Standard** Templates are compatible with **SItoA** 2.6.0 and the **utility** shader categorie change.

2.0.6 - Stable
--------------

-  Fixed **Softimage_MR_Standard** template issue related to **mia_physicalsun** shader intensity being affected by **Ibl_Feedback** rotation.

2.0.5 - Stable
--------------

-  Dropped support for **XSI_Arnold_Dome_Light**, **XSI_Arnold_Standard** and **XSI_MR_Standard** Templates.
-  Dropped support for **3dsmax** versions prior to **3dsmax 2010**.
-  Dropped support for **Maya** versions prior to **Maya 2011**.
-  Disable **mentalrayGlobals.passAlphaThrough** attribute in **Maya_MR_Standard** and **Maya_MR_Lightsmith** Templates.

2.0.4 - Beta
------------

-  Refactored **Maya_Arnold_Standard** Template.
-  Added **Maya_Arnold_Dome_Light** Template.

2.0.3 - Beta
------------

-  Added support for shadow catching ground in **Arnold XSI / Softimage Templates**.

2.0.2 - Alpha
--------------

-  Fixed incorrect lights colors handling in Templates.

2.0.1 - Alpha
--------------

-  Update Lightsmith Templates to support latest Lightsmith Ibl Sets.

2.0.0 - Alpha
--------------

-  Ported **Maya_MR_Standard** Template code to Python.
-  Ported **Maya_VRay_Standard** Template code to Python.
-  Ported **Maya_VRay_Dome_Light** Template code to Python.
-  Ported **Maya_RfM_Standard** Template code to Python.
-  Ported **Maya_MR_Lightsmith** Template code to Python.
-  Ported **Maya_VRay_Lightsmith** Template code to Python.
-  Refactored 3dsMax and Softimage / XSI Templates.
-  Most Templates now have a prefix attribute exposed allowing customization of the scene setup. 
-  Updated documentations / help files.

1.0.5 - Stable
--------------

-  Fixed broken transparency support in Softimage Lightsmith Templates.
-  Hide scene default light in **Softimage_MR_Lightsmith** and **Softimage_Arnold_Lightsmith** Templates.
-  Implemented Ibl Sets compatibility guard.
-  Arnold Renderer Templates are now public.
-  Added additional geometries hierarchical control.

1.0.4 - Stable
--------------

-  Introduced new Lightsmith Templates: **Maya_MR_Lightsmith**, **Maya_VRay_Lightsmith**, **Softimage_MR_Lightsmith**.
-  Reordered Templates attributes.
-  Dropped support of Illuminate Labs Turtle Renderer.

1.0.3 - Stable
--------------

-  Implemented lights types support in each Template, it's now possible to choose between different light types : **Area**, **Directional**, **Point**, **Spot**, etc ...

1.0.2 - Stable
--------------

-  Added new **sIBL_GUI_Templates_gatherFiles.sh** and **sIBL_GUI_Templates_recursiveRemove.py** utilities.

1.0.1 - Stable
--------------

-  Updated release utilities.

1.0.0 - Stable
--------------

-  Initial release of sIBL_GUI_Templates.

.. .about

About
-----

| **sIBL_GUI_Templates** by Thomas Mansencal – 2008 - 2014
| **sIBL_GUI** by Thomas Mansencal – 2008 - 2014
| Copyright © 2008 - 2014 – Thomas Mansencal – `thomas.mansencal@gmail.com <mailto:thomas.mansencal@gmail.com>`_
| This software is released under terms of GNU GPL V3 license: http://www.gnu.org/licenses/
| `http://www.thomasmansencal.com/ <http://www.thomasmansencal.com/>`_