######################################
#
# Clean all G4 envs
unsetenv  CLHEP_BASE_DIR
unsetenv  CLHEP_INCLUDE_DIR
unsetenv  CLHEP_LIB
unsetenv  CLHEP_LIB_DIR

unsetenv  G4DEBUG
unsetenv  G4INCLUDE
unsetenv  G4INSTALL

unsetenv  G4LEDATA
unsetenv  G4LEVELGAMMADATA
unsetenv  G4NEUTRONHPDATA
unsetenv  G4RADIOACTIVEDATA
unsetenv  G4ABLADATA
unsetenv  G4REALSURFACEDATA

unsetenv  G4LIB
unsetenv  G4LIB_BUILD_G3TOG4
unsetenv  G4LIB_BUILD_SHARED
unsetenv  G4LIB_BUILD_STATIC
unsetenv  G4LIB_BUILD_ZLIB
unsetenv  G4LIB_BUILD_GDML
unsetenv  G4LIB_USE_G3TOG4
unsetenv  G4LIB_USE_GRANULAR
unsetenv  G4LIB_USE_ZLIB

unsetenv  G4SYSTEM

unsetenv  G4UI_NONE
unsetenv  G4UI_BUILD_WIN32_SESSION
unsetenv  G4UI_BUILD_XAW_SESSION
unsetenv  G4UI_BUILD_XM_SESSION
unsetenv  G4UI_USE_TCSH
unsetenv  G4UI_USE_WIN32
unsetenv  G4UI_USE_XAW
unsetenv  G4UI_USE_XM
unsetenv  G4UI_USE_QT


unsetenv  G4VIS_NONE
unsetenv  G4VIS_BUILD_DAWN_DRIVER
unsetenv  G4VIS_BUILD_OIWIN32_DRIVER
unsetenv  G4VIS_BUILD_OIX_DRIVER
unsetenv  G4VIS_BUILD_OPENGLWIN32_DRIVER
unsetenv  G4VIS_BUILD_OPENGLXM_DRIVER
unsetenv  G4VIS_BUILD_OPENGLX_DRIVER
unsetenv  G4VIS_BUILD_RAYTRACERX_DRIVER
unsetenv  G4VIS_BUILD_VRML_DRIVER
unsetenv  G4VIS_BUILD_OPENGLQT_DRIVER

unsetenv  G4VIS_USE_DAWN
unsetenv  G4VIS_USE_OIWIN32
unsetenv  G4VIS_USE_OIX
unsetenv  G4VIS_USE_OPENGLWIN32
unsetenv  G4VIS_USE_OPENGLX
unsetenv  G4VIS_USE_OPENGLXM
unsetenv  G4VIS_USE_RAYTRACERX
unsetenv  G4VIS_USE_VRML
unsetenv  G4VIS_USE_OPENGLQT

setenv G4SYSTEM "@VERSION@"
setenv G4INSTALL "@PREFIX@/src/geant4"
setenv G4INCLUDE "@PREFIX@/include/geant4"
#setenv G4BASE "@PREFIX@/include/geant4/source"
setenv G4LIB "@PREFIX@/lib/geant4"
setenv G4LEVELGAMMADATA "@PREFIX@/share/geant4/data/PhotonEvaporation@PHOTONEVAPORATION_V@"
setenv G4RADIOACTIVEDATA "@PREFIX@/share/geant4/data/RadioactiveDecay@RADIOACTIVEDECAY_V@"
setenv G4LEDATA "@PREFIX@/share/geant4/data/G4EMLOW@G4EMLOW_V@"
setenv G4NEUTRONHPDATA "@PREFIX@/share/geant4/data/G4NDL@G4NDL_V@"
setenv G4ABLADATA "@PREFIX@/share/geant4/data/G4ABLA@G4ABLA_V@"
setenv G4REALSURFACEDATA "@PREFIX@/share/geant4/data/RealSurface@REALSURFACE_V@"
setenv CLHEP_BASE_DIR "@PREFIX@"
setenv CLHEP_INCLUDE_DIR "@PREFIX@/include"
setenv CLHEP_LIB_DIR "@PREFIX@/lib"
setenv CLHEP_LIB "CLHEP"
setenv G4DEBUG 1
#setenv G4UI_NONE 1
#setenv G4UI_BUILD_XAW_SESSION 1
#setenv G4UI_USE_XAW 1
setenv G4UI_BUILD_XM_SESSION 1
setenv G4UI_USE_XM 1
#setenv G4UI_BUILD_QT_SESSION 1
#setenv G4UI_USE_QT 1
#setenv G4VIS_NONE 1
#setenv G4VIS_BUILD_DAWN_DRIVER 1
setenv G4VIS_BUILD_OPENGLX_DRIVER 1
setenv G4VIS_BUILD_OPENGLXM_DRIVER 1
#setenv G4VIS_BUILD_OIX_DRIVER 1
#setenv G4VIS_BUILD_RAYTRACERX_DRIVER 1
#setenv G4VIS_BUILD_VRML_DRIVER 1
#setenv G4VIS_BUILD_OPENGLQT_DRIVER 1
#setenv G4VIS_USE_DAWN 1
setenv G4VIS_USE_OPENGLX 1
setenv G4VIS_USE_OPENGLXM 1
#setenv G4VIS_USE_OIX 1
#setenv G4VIS_USE_RAYTRACERX 1
#setenv G4VIS_USE_VRML 1
#setenv G4VIS_USE_OPENGLQT 1
#setenv OGLHOME ""
#setenv OIVHOME ""
#setenv XMFLAGS " -I@PREFIX@/include "
#setenv XMLIBS " -L@PREFIX@/lib -lXm -lXpm "
#setenv XAWFLAGS ""
#setenv XAWLIBS ""
#setenv QTFLAGS ""
#setenv QTLIBS ""
#setenv QTMOC ""
setenv G4LIB_BUILD_GDML 1
setenv XERCESCROOT @PREFIX@
#setenv G4LIB_BUILD_G3TOG4 1
#setenv G4LIB_USE_G3TOG4 1
#setenv G4LIB_BUILD_ZLIB 1
#setenv G4LIB_USE_ZLIB 1
setenv G4LIB_BUILD_SHARED 1
#setenv G4LIB_BUILD_STATIC 1
setenv G4LIB_USE_GRANULAR 1

#
# G4WORKDIR
#

if [ "X""$G4WORKDIR" = "X" ] ; then
	setenv G4WORKDIR $HOME/geant4
fi

#
# Shared Libraries
#

if [ $G4LIB_BUILD_SHARED ] ; then
	if [ $DYLD_LIBRARY_PATH ] ; then
		DYLD_LIBRARY_PATH=${DYLD_LIBRARY_PATH}:${G4LIB}/${G4SYSTEM}
	else
		DYLD_LIBRARY_PATH=${G4LIB}/${G4SYSTEM}
	fi

	export DYLD_LIBRARY_PATH
fi

#
# G4WORKDIR
#

if ( !${?G4WORKDIR} ) then
	setenv G4WORKDIR $HOME/geant4
endif

#
# Shared libraries
#

if ( ${?G4LIB_BUILD_SHARED} ) then
	if ( ${?DYLD_LIBRARY_PATH} )  then
		setenv DYLD_LIBRARY_PATH ${DYLD_LIBRARY_PATH}:${G4LIB}/${G4SYSTEM}
	else
		setenv DYLD_LIBRARY_PATH ${G4LIB}/${G4SYSTEM}
	endif
endif
