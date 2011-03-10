#/bin/bash
echo ----------------------------------------------------------------
echo sIBL_GUI_Templates - Files Gathering
echo ----------------------------------------------------------------

#! Gathering Folder Cleanup.
rm -rf ./releases/repository/*

#! Templates Cleanup.
echo ----------------------------------------------------------------
echo Cleanup - Begin
echo ----------------------------------------------------------------
python ./utilities/sIBL_GUI_Templates_recursiveRemove.py ./src/templates/ .DS_Store
echo ----------------------------------------------------------------
echo Cleanup - End
echo ----------------------------------------------------------------

#! Templates Gathering.
mkdir ./releases/repository/templates/
cd ./src/templates/3dsMax/
zip -r ../../../releases/repository/templates/3dsMax_MR_Standard.zip 3dsMax_MR_Standard -xi "./3dsMax_MR_Standard/help/3dsMax_MR_Standard Template Manual"
zip -r ../../../releases/repository/templates/3dsMax_Scanline_Standard.zip 3dsMax_Scanline_Standard -xi "./3dsMax_Scanline_Standard/help/3dsMax_Scanline_Standard Template Manual"
zip -r ../../../releases/repository/templates/3dsMax_VRay_Standard.zip 3dsMax_VRay_Standard -xi "./3dsMax_VRay_Standard/help/3dsMax_VRay_Standard Template Manual"
cd ../Maya
zip -r ../../../releases/repository/templates/Maya_MR_Lightsmith.zip Maya_MR_Lightsmith -xi "./Maya_MR_Lightsmith/help/Maya_MR_Lightsmith Template Manual"
zip -r ../../../releases/repository/templates/Maya_MR_Standard.zip Maya_MR_Standard -xi "./Maya_MR_Standard/help/Maya_MR_Standard Template Manual"
zip -r ../../../releases/repository/templates/Maya_RfM_Standard.zip Maya_RfM_Standard -xi "./Maya_RfM_Standard/help/Maya_RfM_Standard Template Manual"
zip -r ../../../releases/repository/templates/Maya_VRay_Dome_Light.zip Maya_VRay_Dome_Light -xi "./Maya_VRay_Dome_Light/help/Maya_VRay_Dome_Light Template Manual"
zip -r ../../../releases/repository/templates/Maya_VRay_Lightsmith.zip Maya_VRay_Lightsmith -xi "./Maya_VRay_Lightsmith/help/Maya_VRay_Lightsmith Template Manual"
zip -r ../../../releases/repository/templates/Maya_VRay_Standard.zip Maya_VRay_Standard -xi "./Maya_VRay_Standard/help/Maya_VRay_Standard Template Manual"
cd ../Softimage
zip -r ../../../releases/repository/templates/Softimage_MR_Lightsmith.zip Softimage_MR_Lightsmith -xi "./Softimage_MR_Lightsmith/help/Softimage_MR_Lightsmith Template Manual"
zip -r ../../../releases/repository/templates/Softimage_MR_Standard.zip Softimage_MR_Standard -xi "./Softimage_MR_Standard/help/Softimage_MR_Standard Template Manual"
cd ../XSI
zip -r ../../../releases/repository/templates/XSI_MR_Standard.zip XSI_MR_Standard -xi "./XSI_MR_Standard/help/XSI_MR_Standard Template Manual"

#! Reaching Original Directory.
cd ../../../