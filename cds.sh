#! /bin/sh

# ----------------------------------------------------------------
# Configure Cadence IC6
# ----------------------------------------------------------------

#export LM_LICENSE_FILE=5280@led-x3850-3.polito.it:1717@led-x3850-3.polito.it
# export LM_LICENSE_FILE=5280@130.192.165.189
#export LM_LICENSE_FILE=5280@130.192.165.189:1717@130.192.165.189
export LM_LICENSE_FILE=5280@ssigpro

export IC=/software/cadence/IC6.15
export CDSHOME=$IC
export CDSDIR=$IC
export CDS_ROOT=$IC
export CDS_INST_DIR=$IC

export CDS_Netlisting_Mode=Analog
export RET_DISABLE=TRUE

# *** MRR 20171105 ***
# Patch OS detection
export OA_UNSUPPORTED_PLAT=linux_rhel40_gcc44x

# export CDS_LIC_FILE=
# export CDS_LIC_PRINT_FILTER=111
# export CDS_LIC_PRINT_TIME=1
# export CDS_LIC_PRINT_TIMES_ALWAYS=0
# export CDS_LIC_TIMER_INTERVAL=10
# export CDS_LIC_PRINT_TYPE=warn
# export CDS_LIC_TIMEOUT_DIALOG=0

export CDS_LOG_PATH=$HOME
export CDS_LOAD_ENV=CWDElseHome
export CDS_PROMPT_CKOUT=all
export CDS_AUTO_CKOUT=all
export CDS_SITE=$CDSHOME/share

#export CDS_PROMPT_CKIN=files
#export CDS_AUTO_CKIN=files
#export CDS_LICENSE_DIR=""
#export CDS_LOG_VERSION=sequential

# -- variabile per selezionare 64 o 32 bit
# -- valori: ALL, NONE, AUTO, etc
export CDS_AUTO_64BIT=AUTO

export SPECTRE_DEFAULTS=-E
export DD_DONT_DO_OS_LOCKS=SET

export LANG=C

export PATH=$IC/tools/bin:$IC/tools/dfII/bin:$IC/share/bin:$IC/share/cdsdoc/bin:$PATH
#export LD_LIBRARY_PATH=$IC/tools/lib/32bit:$IC/tools/Qt/32bit/lib

echo "* CADENCE 6.15 environment loaded"
echo "  - IC path: $IC"


# --------------------------------------------------------
# Configure environment for MMSIM
# --------------------------------------------------------

export MMSIMHOME=/software/cadence/MMSIM11.10
export MMSIM_HOME=$MMSIMHOME
export MMSIM_PATH=$MMSIMHOME/tools/bin
export PATH=$MMSIM_PATH:$PATH

echo "* MMSIM 11.10 environment loaded"
echo "  - MMSIM path: $MMSIMHOME"




# ---------------------------------------------------
# Configure environment for ASSURA
# see cdnshelp->ASSURA-6144.10/Assura DRC/LVS->
#    ->Assura Software Installation Guide
#    ->Configuring the Assura Software
# ---------------------------------------------------

export ASSURAHOME=/software/cadence/ASSURA4.12/
export ASSURA_HOME=$ASSURAHOME
export ASSURA_PATH=$ASSURAHOME/tools/bin
export PATH=$ASSURA_PATH:$PATH
# applicativo a 64 o 32 bit: scelte possibili ALL, NONE, "INCLUDE:assura,avnx,gdsIIToVdb"
#export CDS_AUTO_64BIT="EXCLUDE:avview"

echo "* ASSURA environment loaded"
echo "  - ASSURA dir: $ASSURAHOME"


# ---------------------------------------------------------
# Configure environment for AMS Hit-Kit 4.10
# ---------------------------------------------------------

export AMS_DIR=/software/cadence/AMS_HK_410
export PATH=$AMS_DIR/cds/bin:$PATH
export CDS_BIND_TMP_DD=true
export IUSDIR=/software/cadence/Incisive10.20

echo "* AMS Hit-kit 4.10 environment loaded"
echo "  - AMS path: $AMS_DIR"


# ---------------------------------------------------------
# Configure environment for AMS Hit-Kit 4.10
# ---------------------------------------------------------

export MGC_HOME=/software/mentor/calibre_2014.4/aoi_cal_2014.4_28.20
export CALIBRE_HOME=$MGC_HOME
export PATH=$MGC_HOME/bin:$PATH

echo "* Calibre 2014.4 environment loaded"
echo "  - CALIBRE path: $MGC_HOME"


# NCSU CDK
export SPECTRE_DEFAULTS=-E
#export CDS_Netlisting_Mode=Analog
export CDS_LOAD_ENV=CWDElseHome
export CDK_DIR=$HOME/cadence/ncsu-cdk-1.6.0.beta

