#/bin/bash
echo -------------------------------------------------------------------------------
echo sIBL_GUI_Templates - Files Gathering
echo -------------------------------------------------------------------------------

export PROJECT_DIRECTORY=$(cd $( dirname "${BASH_SOURCE[0]}" )/..; pwd)

export SOURCE_DIRECTORY=$PROJECT_DIRECTORY/
export RELEASES_DIRECTORY=$PROJECT_DIRECTORY/releases/
export REPOSITORY_DIRECTORY=$RELEASES_DIRECTORY/repository/

#! Gathering folder cleanup.
rm -rf $REPOSITORY_DIRECTORY

#! Templates cleanup.
echo -------------------------------------------------------------------------------
echo Cleanup - Begin
echo -------------------------------------------------------------------------------
python $PROJECT_DIRECTORY/utilities/recursiveRemove.py --input ./templates/ --pattern .DS_Store
echo -------------------------------------------------------------------------------
echo Cleanup - End
echo -------------------------------------------------------------------------------

#! Templates gathering.
mkdir -p $REPOSITORY_DIRECTORY/templates/
cd $SOURCE_DIRECTORY/templates/
zip -r $REPOSITORY_DIRECTORY/templates/3dsMax_MR_Standard.zip 3dsMax_MR_Standard --exclude "./3dsMax_MR_Standard/help/3dsMax_MR_Standard_Template_Manual.rst"
zip -r $REPOSITORY_DIRECTORY/templates/3dsMax_Scanline_Standard.zip 3dsMax_Scanline_Standard --exclude "./3dsMax_Scanline_Standard/help/3dsMax_Scanline_Standard_Template_Manual.rst"
zip -r $REPOSITORY_DIRECTORY/templates/3dsMax_VRay_Standard.zip 3dsMax_VRay_Standard --exclude "./3dsMax_VRay_Standard/help/3dsMax_VRay_Standard_Template_Manual.rst"
zip -r $REPOSITORY_DIRECTORY/templates/Blender_Cycles_Standard.zip Blender_Cycles_Standard --exclude "./Blender_Cycles_Standard/help/Blender_Cycles_Standard_Template_Manual.rst"
zip -r $REPOSITORY_DIRECTORY/templates/Maya_Arnold_Dome_Light.zip Maya_Arnold_Dome_Light --exclude "./Maya_Arnold_Dome_Light/help/Maya_Arnold_Dome_Light_Template_Manual.rst"
zip -r $REPOSITORY_DIRECTORY/templates/Maya_Arnold_Standard.zip Maya_Arnold_Standard --exclude "./Maya_Arnold_Standard/help/Maya_Arnold_Standard_Template_Manual.rst"
zip -r $REPOSITORY_DIRECTORY/templates/Maya_MR_Lightsmith.zip Maya_MR_Lightsmith --exclude "./Maya_MR_Lightsmith/help/Maya_MR_Lightsmith_Template_Manual.rst"
zip -r $REPOSITORY_DIRECTORY/templates/Maya_MR_Standard.zip Maya_MR_Standard --exclude "./Maya_MR_Standard/help/Maya_MR_Standard_Template_Manual.rst"
zip -r $REPOSITORY_DIRECTORY/templates/Maya_RfM_Standard.zip Maya_RfM_Standard --exclude "./Maya_RfM_Standard/help/Maya_RfM_Standard_Template_Manual.rst"
zip -r $REPOSITORY_DIRECTORY/templates/Maya_VRay_Dome_Light.zip Maya_VRay_Dome_Light --exclude "./Maya_VRay_Dome_Light/help/Maya_VRay_Dome_Light_Template_Manual.rst"
zip -r $REPOSITORY_DIRECTORY/templates/Maya_VRay_Lightsmith.zip Maya_VRay_Lightsmith --exclude "./Maya_VRay_Lightsmith/help/Maya_VRay_Lightsmith_Template_Manual.rst"
zip -r $REPOSITORY_DIRECTORY/templates/Maya_VRay_Standard.zip Maya_VRay_Standard --exclude "./Maya_VRay_Standard/help/Maya_VRay_Standard_Template_Manual.rst"
zip -r $REPOSITORY_DIRECTORY/templates/Softimage_Arnold_Dome_Light.zip Softimage_Arnold_Dome_Light --exclude "./Softimage_Arnold_Dome_Light/help/Softimage_Arnold_Dome_Light_Template_Manual.rst"
zip -r $REPOSITORY_DIRECTORY/templates/Softimage_Arnold_Lightsmith.zip Softimage_Arnold_Lightsmith --exclude "./Softimage_Arnold_Lightsmith/help/Softimage_Arnold_Lightsmith_Template_Manual.rst"
zip -r $REPOSITORY_DIRECTORY/templates/Softimage_Arnold_Standard.zip Softimage_Arnold_Standard --exclude "./Softimage_Arnold_Standard/help/Softimage_Arnold_Standard_Template_Manual.rst"
zip -r $REPOSITORY_DIRECTORY/templates/Softimage_MR_Lightsmith.zip Softimage_MR_Lightsmith --exclude "./Softimage_MR_Lightsmith/help/Softimage_MR_Lightsmith_Template_Manual.rst"
zip -r $REPOSITORY_DIRECTORY/templates/Softimage_MR_Standard.zip Softimage_MR_Standard --exclude "./Softimage_MR_Standard/help/Softimage_MR_Standard_Template_Manual.rst"
zip -r $REPOSITORY_DIRECTORY/templates/Softimage_VRay_Standard.zip Softimage_VRay_Standard --exclude "./Softimage_VRay_Standard/help/Softimage_VRay_Standard_Template_Manual.rst"
