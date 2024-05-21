# shellcheck shell=bash

if [[ -z "${BASH_VERSION}" ]]
then
	echo "Error: This script only supports bash (for now)"
	return
fi

if [[ "${BASH_SOURCE[0]}" -ef "$0" ]]
then
    echo "Error: This script needs to be sourced, not executed!"
    exit 1
fi

CVMFS_DIRECTORY_PATH=$(dirname "${BASH_SOURCE[0]}")

pushd "${CVMFS_DIRECTORY_PATH}" > /dev/null || return
version=$(git describe --tags)
popd > /dev/null || return

if [[ -v SHIP_CVMFS_SETUP ]] || [[ -v SNDLHC_CVMFS_SETUP ]]
then
        if [[ "${SHIP_CVMFS_SETUP}" == "${version}" ]]
        then
                echo "Warning: SHiP CVMFS setup already set up. Nothing to do."
		return
        else
                echo "Error: Conflicting SHiP CVMFS setup already set up."
                echo "Error: Please open a clean shell to use this environment."
                echo "Error: Not doing anything to avoid breaking things."
                return
        fi
fi

SHIP_CVMFS_SETUP=${version}
echo "Setting up SHiP setup version ${version} from ${CVMFS_DIRECTORY_PATH}."

# the source script sets the PYTHONPATH to something internal.
# store the current python path to avoid breaking anything.
CURRENT_PYTHON_PATH=$(python3 -c "import sys; print(':'.join(sys.path)[1:]);")
PYTHONPATH="${PYTHONPATH}:${CURRENT_PYTHON_PATH}"

# source the environment with all the variables
# shellcheck disable=SC2034
SHIPDIST="${CVMFS_DIRECTORY_PATH}/shipdist/"
ALIBUILD="${CVMFS_DIRECTORY_PATH}/alibuild/"
ARCHITECTURE=$("${ALIBUILD}"/aliBuild architecture)
# shellcheck disable=SC1090
WORK_DIR="${CVMFS_DIRECTORY_PATH}/sw/" source "${CVMFS_DIRECTORY_PATH}/sw/${ARCHITECTURE}/FairShip/latest/etc/profile.d/init.sh"

PATH="${PATH}:${ALIBUILD}"
