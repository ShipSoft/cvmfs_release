
version="2023-0"

if [ x"$SHIP_CVMFS_SETUP" != x"" ] 
then
        if [ x"$SHIP_CVMFS_SETUP" == x"$version" ]
        then
                echo "WARNING!"
                echo "WARNING! Trying to setting up again the same environment."
        else
                echo "ERROR!"
                echo "ERROR! Trying to set up a new environment on top of an old one."
                echo "ERROR! This is not allowed, hance we will NOT set up the environment"
                echo "ERROR! The solution is to exit the current shell and open a new one"
                return
        fi
fi
SHIP_CVMFS_SETUP=$version


# the source script set the PYTHONPATH to something internal.
# let's store the current python path to avoid breaking anything.
CURRENT_PYTHON_PATH=$(python -c "from __future__ import print_function; import sys; print(':'.join(sys.path)[1:]);")
PYTHONPATH="$PYTHONPATH:$CURRENT_PYTHON_PATH"

# let's source the environment with all the variables
CVMFS_DIRECTORY_PATH=/cvmfs/ship.cern.ch/SHiP-2023/May
SHIPDIST="$CVMFS_DIRECTORY_PATH/shipdist/"
ALIBUILD="$CVMFS_DIRECTORY_PATH/alibuild/"
pushd $ALIBUILD/alibuild_helpers
ARCHITECTURE=$(python -c "from utilities import detectArch; print(detectArch())")
popd
WORK_DIR="$CVMFS_DIRECTORY_PATH/sw/" source $CVMFS_DIRECTORY_PATH/sw/$ARCHITECTURE/FairShip/latest/etc/profile.d/init.sh
export FAIRROOTPATH="$CVMFS_DIRECTORY_PATH/sw/$ARCHITECTURE/FairRoot/latest"

PATH="$PATH:$ALIBUILD"

# fix the graphics driver issue
if [[ ${ARCHITECTURE} == slc7_x86-64 ]]
then
	export LIBGL_DRIVERS_PATH="/cvmfs/sft.cern.ch/lcg/contrib/mesa/18.0.5/x86_64-centos7/lib64/dri"
fi
