#/bin/bash
echo ----------------------------------------------------------------
echo sIBL_GUI_Templates - Build Templates Documentation
echo ----------------------------------------------------------------

alias python=/Library/Frameworks/Python.framework/Versions/2.7/bin/python

export PROJECT=/Users/KelSolaar/Documents/Developement/sIBL_GUI_Templates

export TEMPLATES=$PROJECT/src/templates

#! 3dsMax_MR_Standard Template documentation building.
python reStructuredTextToHtml.py "$TEMPLATES/3dsMax_MR_Standard/help/3dsMax_MR_Standard_Template_Manual.rst" "$TEMPLATES/3dsMax_MR_Standard/help/3dsMax_MR_Standard_Template_Manual.html"  "3dsMax MR Standard - Template - Manual - Help File"

#! 3dsMax_Scanline_Standard Template documentation building.
python reStructuredTextToHtml.py "$TEMPLATES/3dsMax_Scanline_Standard/help/3dsMax_Scanline_Standard_Template_Manual.rst" "$TEMPLATES/3dsMax_Scanline_Standard/help/3dsMax_Scanline_Standard_Template_Manual.html"  "3dsMax Scanline Standard - Template - Manual - Help File"

#! 3dsMax_VRay_Standard Template documentation building.
python reStructuredTextToHtml.py "$TEMPLATES/3dsMax_VRay_Standard/help/3dsMax_VRay_Standard_Template_Manual.rst" "$TEMPLATES/3dsMax_VRay_Standard/help/3dsMax_VRay_Standard_Template_Manual.html"  "3dsMax VRay Standard - Template - Manual - Help File"

#! Maya_Arnold_Standard Template documentation building.
python reStructuredTextToHtml.py "$TEMPLATES/Maya_Arnold_Standard/help/Maya_Arnold_Standard_Template_Manual.rst" "$TEMPLATES/Maya_Arnold_Standard/help/Maya_Arnold_Standard_Template_Manual.html"  "Maya Arnold Standard - Template - Manual - Help File"

#! Maya_MR_Lightsmith Template documentation building.
python reStructuredTextToHtml.py "$TEMPLATES/Maya_MR_Lightsmith/help/Maya_MR_Lightsmith_Template_Manual.rst" "$TEMPLATES/Maya_MR_Lightsmith/help/Maya_MR_Lightsmith_Template_Manual.html"  "Maya MR Lightsmith - Template - Manual - Help File"

#! Maya_MR_Standard Template documentation building.
python reStructuredTextToHtml.py "$TEMPLATES/Maya_MR_Standard/help/Maya_MR_Standard_Template_Manual.rst" "$TEMPLATES/Maya_MR_Standard/help/Maya_MR_Standard_Template_Manual.html"  "Maya MR Standard - Template - Manual - Help File"

#! Maya_RfM_Standard Template documentation building.
python reStructuredTextToHtml.py "$TEMPLATES/Maya_RfM_Standard/help/Maya_RfM_Standard_Template_Manual.rst" "$TEMPLATES/Maya_RfM_Standard/help/Maya_RfM_Standard_Template_Manual.html"  "Maya RfM Standard - Template - Manual - Help File"

#! Maya_VRay_Dome_Light Template documentation building.
python reStructuredTextToHtml.py "$TEMPLATES/Maya_VRay_Dome_Light/help/Maya_VRay_Dome_Light_Template_Manual.rst" "$TEMPLATES/Maya_VRay_Dome_Light/help/Maya_VRay_Dome_Light_Template_Manual.html"  "Maya VRay Dome Light - Template - Manual - Help File"

#! Maya_VRay_Lightsmith Template documentation building.
python reStructuredTextToHtml.py "$TEMPLATES/Maya_VRay_Lightsmith/help/Maya_VRay_Lightsmith_Template_Manual.rst" "$TEMPLATES/Maya_VRay_Lightsmith/help/Maya_VRay_Lightsmith_Template_Manual.html"  "Maya VRay Lightsmith - Template - Manual - Help File"

#! Maya_VRay_Standard Template documentation building.
python reStructuredTextToHtml.py "$TEMPLATES/Maya_VRay_Standard/help/Maya_VRay_Standard_Template_Manual.rst" "$TEMPLATES/Maya_VRay_Standard/help/Maya_VRay_Standard_Template_Manual.html"  "Maya VRay Standard - Template - Manual - Help File"

#! Softimage_Arnold_Dome_Light Template documentation building.
python reStructuredTextToHtml.py "$TEMPLATES/Softimage_Arnold_Dome_Light/help/Softimage_Arnold_Dome_Light_Template_Manual.rst" "$TEMPLATES/Softimage_Arnold_Dome_Light/help/Softimage_Arnold_Dome_Light_Template_Manual.html"  "Softimage Arnold Dome Light - Template - Manual - Help File"

#! Softimage_Arnold_Lightsmith Template documentation building.
python reStructuredTextToHtml.py "$TEMPLATES/Softimage_Arnold_Lightsmith/help/Softimage_Arnold_Lightsmith_Template_Manual.rst" "$TEMPLATES/Softimage_Arnold_Lightsmith/help/Softimage_Arnold_Lightsmith_Template_Manual.html"  "Softimage Arnold Lightsmith - Template - Manual - Help File"

#! Softimage_Arnold_Standard Template documentation building.
python reStructuredTextToHtml.py "$TEMPLATES/Softimage_Arnold_Standard/help/Softimage_Arnold_Standard_Template_Manual.rst" "$TEMPLATES/Softimage_Arnold_Standard/help/Softimage_Arnold_Standard_Template_Manual.html"  "Softimage Arnold Standard - Template - Manual - Help File"

#! Softimage_MR_Lightsmith Template documentation building.
python reStructuredTextToHtml.py "$TEMPLATES/Softimage_MR_Lightsmith/help/Softimage_MR_Lightsmith_Template_Manual.rst" "$TEMPLATES/Softimage_MR_Lightsmith/help/Softimage_MR_Lightsmith_Template_Manual.html"  "Softimage MR Lightsmith - Template - Manual - Help File"

#! Softimage_MR_Standard Template documentation building.
python reStructuredTextToHtml.py "$TEMPLATES/Softimage_MR_Standard/help/Softimage_MR_Standard_Template_Manual.rst" "$TEMPLATES/Softimage_MR_Standard/help/Softimage_MR_Standard_Template_Manual.html"  "Softimage MR Standard - Template - Manual - Help File"

#! XSI_Arnold_Dome_Light Template documentation building.
python reStructuredTextToHtml.py "$TEMPLATES/XSI_Arnold_Dome_Light/help/XSI_Arnold_Dome_Light_Template_Manual.rst" "$TEMPLATES/XSI_Arnold_Dome_Light/help/XSI_Arnold_Dome_Light_Template_Manual.html"  "XSI Arnold Dome Light - Template - Manual - Help File"

#! XSI_Arnold_Standard Template documentation building.
python reStructuredTextToHtml.py "$TEMPLATES/XSI_Arnold_Standard/help/XSI_Arnold_Standard_Template_Manual.rst" "$TEMPLATES/XSI_Arnold_Standard/help/XSI_Arnold_Standard_Template_Manual.html"  "XSI Arnold Standard - Template - Manual - Help File"

#! XSI_MR_Standard Template documentation building.
python reStructuredTextToHtml.py "$TEMPLATES/XSI_MR_Standard/help/XSI_MR_Standard_Template_Manual.rst" "$TEMPLATES/XSI_MR_Standard/help/XSI_MR_Standard_Template_Manual.html"  "XSI MR Standard - Template - Manual - Help File"
