######################################
#
# Clean all G4 envs
unset  CLHEP_BASE_DIR
unset  CLHEP_INCLUDE_DIR
unset  CLHEP_LIB
unset  CLHEP_LIB_DIR

unset  G4DEBUG
unset  G4INCLUDE
unset  G4INSTALL

unset  G4LEDATA
unset  G4LEVELGAMMADATA
unset  G4NEUTRONHPDATA
unset  G4RADIOACTIVEDATA
unset  G4ABLADATA
unset  G4REALSURFACEDATA

unset  G4LIB
unset  G4LIB_BUILD_G3TOG4
unset  G4LIB_BUILD_SHARED
unset  G4LIB_BUILD_STATIC
unset  G4LIB_BUILD_ZLIB
unset  G4LIB_BUILD_GDML
unset  G4LIB_USE_G3TOG4
unset  G4LIB_USE_GRANULAR
unset  G4LIB_USE_ZLIB

unset  G4SYSTEM

unset  G4UI_NONE
unset  G4UI_BUILD_WIN32_SESSION
unset  G4UI_BUILD_XAW_SESSION
unset  G4UI_BUILD_XM_SESSION
unset  G4UI_USE_TCSH
unset  G4UI_USE_WIN32
unset  G4UI_USE_XAW
unset  G4UI_USE_XM
unset  G4UI_USE_QT


unset  G4VIS_NONE
unset  G4VIS_BUILD_DAWN_DRIVER
unset  G4VIS_BUILD_OIWIN32_DRIVER
unset  G4VIS_BUILD_OIX_DRIVER
unset  G4VIS_BUILD_OPENGLWIN32_DRIVER
unset  G4VIS_BUILD_OPENGLXM_DRIVER
unset  G4VIS_BUILD_OPENGLX_DRIVER
unset  G4VIS_BUILD_RAYTRACERX_DRIVER
unset  G4VIS_BUILD_VRML_DRIVER
unset  G4VIS_BUILD_OPENGLQT_DRIVER

unset  G4VIS_USE_DAWN
unset  G4VIS_USE_OIWIN32
unset  G4VIS_USE_OIX
unset  G4VIS_USE_OPENGLWIN32
unset  G4VIS_USE_OPENGLX
unset  G4VIS_USE_OPENGLXM
unset  G4VIS_USE_RAYTRACERX
unset  G4VIS_USE_VRML
unset  G4VIS_USE_OPENGLQT

export G4SYSTEM="@VERSION@"
export G4INSTALL="@PREFIX@/src/geant4"
export G4INCLUDE="@PREFIX@/include/geant4"
#export G4BASE="@PREFIX@/include/geant4/source"
export G4LIB="@PREFIX@/lib/geant4"
export G4LEVELGAMMADATA="@PREFIX@/share/geant4/data/PhotonEvaporation@PHOTONEVAPORATION_V@"
export G4RADIOACTIVEDATA="@PREFIX@/share/geant4/data/RadioactiveDecay@RADIOACTIVEDECAY_V@"
export G4LEDATA="@PREFIX@/share/geant4/data/G4EMLOW@G4EMLOW_V@"
export G4NEUTRONHPDATA="@PREFIX@/share/geant4/data/G4NDL@G4NDL_V@"
export G4ABLADATA="@PREFIX@/share/geant4/data/G4ABLA@G4ABLA_V@"
export G4REALSURFACEDATA="@PREFIX@/share/geant4/data/RealSurface@REALSURFACE_V@"
export CLHEP_BASE_DIR="@PREFIX@"
export CLHEP_INCLUDE_DIR="@PREFIX@/include"
export CLHEP_LIB_DIR="@PREFIX@/lib"
export CLHEP_LIB="CLHEP"
export G4DEBUG=1
#export G4UI_NONE=1
#export G4UI_BUILD_XAW_SESSION=1
#export G4UI_USE_XAW=1
export G4UI_BUILD_XM_SESSION=1
export G4UI_USE_XM=1
#export G4UI_BUILD_QT_SESSION=1
#export G4UI_USE_QT=1
#export G4VIS_NONE=1
#export G4VIS_BUILD_DAWN_DRIVER=1
export G4VIS_BUILD_OPENGLX_DRIVER=1
export G4VIS_BUILD_OPENGLXM_DRIVER=1
#export G4VIS_BUILD_OIX_DRIVER=1
#export G4VIS_BUILD_RAYTRACERX_DRIVER=1
#export G4VIS_BUILD_VRML_DRIVER=1
#export G4VIS_BUILD_OPENGLQT_DRIVER=1
#export G4VIS_USE_DAWN=1
export G4VIS_USE_OPENGLX=1
export G4VIS_USE_OPENGLXM=1
#export G4VIS_USE_OIX=1
#export G4VIS_USE_RAYTRACERX=1
#export G4VIS_USE_VRML=1
#export G4VIS_USE_OPENGLQT=1
#export OGLHOME=""
#export OIVHOME=""
#export XMFLAGS=" -I@PREFIX@/include "
#export XMLIBS=" -L@PREFIX@/lib -lXm -lXpm "
#export XAWFLAGS=""
#export XAWLIBS=""
#export QTFLAGS=""
#export QTLIBS=""
#export QTMOC=""
export G4LIB_BUILD_GDML=1
export XERCESCROOT=@PREFIX@
#export G4LIB_BUILD_G3TOG4=1
#export G4LIB_USE_G3TOG4=1
#export G4LIB_BUILD_ZLIB=1
#export G4LIB_USE_ZLIB=1
export G4LIB_BUILD_SHARED=1
#export G4LIB_BUILD_STATIC=1
export G4LIB_USE_GRANULAR=1

#
# G4WORKDIR
#

if [ "X""$G4WORKDIR" = "X" ] ; then
	export G4WORKDIR=$HOME/geant4
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
