#/bin/bash
echo ----------------------------------------------------------------
echo sIBL_GUI_Templates - Build Templates Documentation
echo ----------------------------------------------------------------

export TEMPLATES=../src/templates

alias python=/Library/Frameworks/Python.framework/Versions/2.6/bin/python

#! 3dsMax_MR_Standard Template Documentation Building.
python sIBL_GUI_Templates_textileToHtml.py "$TEMPLATES/3dsMax/3dsMax_MR_Standard/help/3dsMax_MR_Standard Template Manual" "$TEMPLATES/3dsMax/3dsMax_MR_Standard/help/3dsMax_MR_Standard Template Manual.html"  "3dsMax MR Standard - Template - Manual - Help File"

#! 3dsMax_Scanline_Standard Template Documentation Building.
python sIBL_GUI_Templates_textileToHtml.py "$TEMPLATES/3dsMax/3dsMax_Scanline_Standard/help/3dsMax_Scanline_Standard Template Manual" "$TEMPLATES/3dsMax/3dsMax_Scanline_Standard/help/3dsMax_Scanline_Standard Template Manual.html"  "3dsMax Scanline Standard - Template - Manual - Help File"

#! 3dsMax_VRay_Standard Template Documentation Building.
python sIBL_GUI_Templates_textileToHtml.py "$TEMPLATES/3dsMax/3dsMax_VRay_Standard/help/3dsMax_VRay_Standard Template Manual" "$TEMPLATES/3dsMax/3dsMax_VRay_Standard/help/3dsMax_VRay_Standard Template Manual.html"  "3dsMax VRay Standard - Template - Manual - Help File"

#! Maya_Arnold_Standard Template Documentation Building.
python sIBL_GUI_Templates_textileToHtml.py "$TEMPLATES/Maya/Maya_Arnold_Standard/help/Maya_Arnold_Standard Template Manual" "$TEMPLATES/Maya/Maya_Arnold_Standard/help/Maya_Arnold_Standard Template Manual.html"  "Maya Arnold Standard - Template - Manual - Help File"

#! Maya_MR_Lightsmith Template Documentation Building.
python sIBL_GUI_Templates_textileToHtml.py "$TEMPLATES/Maya/Maya_MR_Lightsmith/help/Maya_MR_Lightsmith Template Manual" "$TEMPLATES/Maya/Maya_MR_Lightsmith/help/Maya_MR_Lightsmith Template Manual.html"  "Maya MR Lightsmith - Template - Manual - Help File"

#! Maya_MR_Standard Template Documentation Building.
python sIBL_GUI_Templates_textileToHtml.py "$TEMPLATES/Maya/Maya_MR_Standard/help/Maya_MR_Standard Template Manual" "$TEMPLATES/Maya/Maya_MR_Standard/help/Maya_MR_Standard Template Manual.html"  "Maya MR Standard - Template - Manual - Help File"

#! Maya_RfM_Standard Template Documentation Building.
python sIBL_GUI_Templates_textileToHtml.py "$TEMPLATES/Maya/Maya_RfM_Standard/help/Maya_RfM_Standard Template Manual" "$TEMPLATES/Maya/Maya_RfM_Standard/help/Maya_RfM_Standard Template Manual.html"  "Maya RfM Standard - Template - Manual - Help File"

#! Maya_VRay_Dome_Light Template Documentation Building.
python sIBL_GUI_Templates_textileToHtml.py "$TEMPLATES/Maya/Maya_VRay_Dome_Light/help/Maya_VRay_Dome_Light Template Manual" "$TEMPLATES/Maya/Maya_VRay_Dome_Light/help/Maya_VRay_Dome_Light Template Manual.html"  "Maya VRay Dome Light - Template - Manual - Help File"

#! Maya_VRay_Lightsmith Template Documentation Building.
python sIBL_GUI_Templates_textileToHtml.py "$TEMPLATES/Maya/Maya_VRay_Lightsmith/help/Maya_VRay_Lightsmith Template Manual" "$TEMPLATES/Maya/Maya_VRay_Lightsmith/help/Maya_VRay_Lightsmith Template Manual.html"  "Maya VRay Lightsmith - Template - Manual - Help File"

#! Maya_VRay_Standard Template Documentation Building.
python sIBL_GUI_Templates_textileToHtml.py "$TEMPLATES/Maya/Maya_VRay_Standard/help/Maya_VRay_Standard Template Manual" "$TEMPLATES/Maya/Maya_VRay_Standard/help/Maya_VRay_Standard Template Manual.html"  "Maya VRay Standard - Template - Manual - Help File"

#! Softimage_Arnold_Dome_Light Template Documentation Building.
python sIBL_GUI_Templates_textileToHtml.py "$TEMPLATES/Softimage/Softimage_Arnold_Dome_Light/help/Softimage_Arnold_Dome_Light Template Manual" "$TEMPLATES/Softimage/Softimage_Arnold_Dome_Light/help/Softimage_Arnold_Dome_Light Template Manual.html"  "Softimage Arnold Dome Light - Template - Manual - Help File"

#! Softimage_Arnold_Lightsmith Template Documentation Building.
python sIBL_GUI_Templates_textileToHtml.py "$TEMPLATES/Softimage/Softimage_Arnold_Lightsmith/help/Softimage_Arnold_Lightsmith Template Manual" "$TEMPLATES/Softimage/Softimage_Arnold_Lightsmith/help/Softimage_Arnold_Lightsmith Template Manual.html"  "Softimage Arnold Lightsmith - Template - Manual - Help File"

#! Softimage_Arnold_Standard Template Documentation Building.
python sIBL_GUI_Templates_textileToHtml.py "$TEMPLATES/Softimage/Softimage_Arnold_Standard/help/Softimage_Arnold_Standard Template Manual" "$TEMPLATES/Softimage/Softimage_Arnold_Standard/help/Softimage_Arnold_Standard Template Manual.html"  "Softimage Arnold Standard - Template - Manual - Help File"

#! Softimage_MR_Lightsmith Template Documentation Building.
python sIBL_GUI_Templates_textileToHtml.py "$TEMPLATES/Softimage/Softimage_MR_Lightsmith/help/Softimage_MR_Lightsmith Template Manual" "$TEMPLATES/Softimage/Softimage_MR_Lightsmith/help/Softimage_MR_Lightsmith Template Manual.html"  "Softimage MR Lightsmith - Template - Manual - Help File"

#! Softimage_MR_Standard Template Documentation Building.
python sIBL_GUI_Templates_textileToHtml.py "$TEMPLATES/Softimage/Softimage_MR_Standard/help/Softimage_MR_Standard Template Manual" "$TEMPLATES/Softimage/Softimage_MR_Standard/help/Softimage_MR_Standard Template Manual.html"  "Softimage MR Standard - Template - Manual - Help File"

#! XSI_Arnold_Dome_Light Template Documentation Building.
python sIBL_GUI_Templates_textileToHtml.py "$TEMPLATES/XSI/XSI_Arnold_Dome_Light/help/XSI_Arnold_Dome_Light Template Manual" "$TEMPLATES/XSI/XSI_Arnold_Dome_Light/help/XSI_Arnold_Dome_Light Template Manual.html"  "XSI Arnold Dome Light - Template - Manual - Help File"

#! XSI_Arnold_Standard Template Documentation Building.
python sIBL_GUI_Templates_textileToHtml.py "$TEMPLATES/XSI/XSI_Arnold_Standard/help/XSI_Arnold_Standard Template Manual" "$TEMPLATES/XSI/XSI_Arnold_Standard/help/XSI_Arnold_Standard Template Manual.html"  "XSI Arnold Standard - Template - Manual - Help File"

#! XSI_MR_Standard Template Documentation Building.
python sIBL_GUI_Templates_textileToHtml.py "$TEMPLATES/XSI/XSI_MR_Standard/help/XSI_MR_Standard Template Manual" "$TEMPLATES/XSI/XSI_MR_Standard/help/XSI_MR_Standard Template Manual.html"  "XSI MR Standard - Template - Manual - Help File"
