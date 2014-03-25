#/bin/bash
echo -------------------------------------------------------------------------------
echo sIBL_GUI_Templates - Build Templates Documentation
echo -------------------------------------------------------------------------------

export PROJECT=$(cd $( dirname "${BASH_SOURCE[0]}" )/..; pwd)

export TEMPLATES=$PROJECT/templates

#! 3dsMax_MR_Standard Template documentation building.
python reStructuredTextToHtml.py --input "$TEMPLATES/3dsMax_MR_Standard/help/3dsMax_MR_Standard_Template_Manual.rst" --output "$TEMPLATES/3dsMax_MR_Standard/help/3dsMax_MR_Standard_Template_Manual.html"

#! 3dsMax_Scanline_Standard Template documentation building.
python reStructuredTextToHtml.py --input "$TEMPLATES/3dsMax_Scanline_Standard/help/3dsMax_Scanline_Standard_Template_Manual.rst" --output "$TEMPLATES/3dsMax_Scanline_Standard/help/3dsMax_Scanline_Standard_Template_Manual.html"

#! 3dsMax_VRay_Standard Template documentation building.
python reStructuredTextToHtml.py --input "$TEMPLATES/3dsMax_VRay_Standard/help/3dsMax_VRay_Standard_Template_Manual.rst" --output "$TEMPLATES/3dsMax_VRay_Standard/help/3dsMax_VRay_Standard_Template_Manual.html"

#! Blender_Cycles_Standard Template documentation building.
python reStructuredTextToHtml.py --input "$TEMPLATES/Blender_Cycles_Standard/help/Blender_Cycles_Standard_Template_Manual.rst" --output "$TEMPLATES/Blender_Cycles_Standard/help/Blender_Cycles_Standard_Template_Manual.html"

#! Maya_Arnold_Dome_Light Template documentation building.
python reStructuredTextToHtml.py --input "$TEMPLATES/Maya_Arnold_Dome_Light/help/Maya_Arnold_Dome_Light_Template_Manual.rst" --output "$TEMPLATES/Maya_Arnold_Dome_Light/help/Maya_Arnold_Dome_Light_Template_Manual.html"

#! Maya_Arnold_Standard Template documentation building.
python reStructuredTextToHtml.py --input "$TEMPLATES/Maya_Arnold_Standard/help/Maya_Arnold_Standard_Template_Manual.rst" --output "$TEMPLATES/Maya_Arnold_Standard/help/Maya_Arnold_Standard_Template_Manual.html"

#! Maya_MR_Lightsmith Template documentation building.
python reStructuredTextToHtml.py --input "$TEMPLATES/Maya_MR_Lightsmith/help/Maya_MR_Lightsmith_Template_Manual.rst" --output "$TEMPLATES/Maya_MR_Lightsmith/help/Maya_MR_Lightsmith_Template_Manual.html"

#! Maya_MR_Standard Template documentation building.
python reStructuredTextToHtml.py --input "$TEMPLATES/Maya_MR_Standard/help/Maya_MR_Standard_Template_Manual.rst" --output "$TEMPLATES/Maya_MR_Standard/help/Maya_MR_Standard_Template_Manual.html"

#! Maya_RfM_Standard Template documentation building.
python reStructuredTextToHtml.py --input "$TEMPLATES/Maya_RfM_Standard/help/Maya_RfM_Standard_Template_Manual.rst" --output "$TEMPLATES/Maya_RfM_Standard/help/Maya_RfM_Standard_Template_Manual.html"

#! Maya_VRay_Dome_Light Template documentation building.
python reStructuredTextToHtml.py --input "$TEMPLATES/Maya_VRay_Dome_Light/help/Maya_VRay_Dome_Light_Template_Manual.rst" --output "$TEMPLATES/Maya_VRay_Dome_Light/help/Maya_VRay_Dome_Light_Template_Manual.html"

#! Maya_VRay_Lightsmith Template documentation building.
python reStructuredTextToHtml.py --input "$TEMPLATES/Maya_VRay_Lightsmith/help/Maya_VRay_Lightsmith_Template_Manual.rst" --output "$TEMPLATES/Maya_VRay_Lightsmith/help/Maya_VRay_Lightsmith_Template_Manual.html"

#! Maya_VRay_Standard Template documentation building.
python reStructuredTextToHtml.py --input "$TEMPLATES/Maya_VRay_Standard/help/Maya_VRay_Standard_Template_Manual.rst" --output "$TEMPLATES/Maya_VRay_Standard/help/Maya_VRay_Standard_Template_Manual.html"

#! Softimage_Arnold_Dome_Light Template documentation building.
python reStructuredTextToHtml.py --input "$TEMPLATES/Softimage_Arnold_Dome_Light/help/Softimage_Arnold_Dome_Light_Template_Manual.rst" --output "$TEMPLATES/Softimage_Arnold_Dome_Light/help/Softimage_Arnold_Dome_Light_Template_Manual.html"

#! Softimage_Arnold_Lightsmith Template documentation building.
python reStructuredTextToHtml.py --input "$TEMPLATES/Softimage_Arnold_Lightsmith/help/Softimage_Arnold_Lightsmith_Template_Manual.rst" --output "$TEMPLATES/Softimage_Arnold_Lightsmith/help/Softimage_Arnold_Lightsmith_Template_Manual.html"

#! Softimage_Arnold_Standard Template documentation building.
python reStructuredTextToHtml.py --input "$TEMPLATES/Softimage_Arnold_Standard/help/Softimage_Arnold_Standard_Template_Manual.rst" --output "$TEMPLATES/Softimage_Arnold_Standard/help/Softimage_Arnold_Standard_Template_Manual.html"

#! Softimage_MR_Lightsmith Template documentation building.
python reStructuredTextToHtml.py --input "$TEMPLATES/Softimage_MR_Lightsmith/help/Softimage_MR_Lightsmith_Template_Manual.rst" --output "$TEMPLATES/Softimage_MR_Lightsmith/help/Softimage_MR_Lightsmith_Template_Manual.html"

#! Softimage_MR_Standard Template documentation building.
python reStructuredTextToHtml.py --input "$TEMPLATES/Softimage_MR_Standard/help/Softimage_MR_Standard_Template_Manual.rst" --output "$TEMPLATES/Softimage_MR_Standard/help/Softimage_MR_Standard_Template_Manual.html"

#! Softimage_VRay_Standard_Template_Manual_Standard Template documentation building.
python reStructuredTextToHtml.py --input "$TEMPLATES/Softimage_VRay_Standard/help/Softimage_VRay_Standard_Template_Manual.rst" --output "$TEMPLATES/Softimage_VRay_Standard/help/Softimage_VRay_Standard_Template_Manual.html"
