# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a
Changelog](https://keepachangelog.com/en/1.1.0/), and this project adheres to
Calendar Versioning (year.month), with the possibility of patch releases
(year.month.patch).

Releases with unspecified patch-level will redirect to latest patch on CVMFS.

Until May 2023 (inclusive) no changelog was kept. We might try to reconstruct
it in future.

## Unreleased

[shipdist commit](https://github.com/ShipSoft/shipdist/tree/main)

### Added

### Fixed

### Changed

### Removed

## [25.01](/cvmfs/ship.cern.ch/25.01/)

[shipdist commit](https://github.com/ShipSoft/shipdist/tree/76c581472e82745d1858f611b582901ff9c182f8)

### Fixed

* Move to patched FairRoot to allow use without GEANT3

### Changed

* Update alibuild to v1.17.13

## [24.10](/cvmfs/ship.cern.ch/24.10/)

Version updates of several packages and move to standalone GenFit.

[shipdist commit](https://github.com/ShipSoft/shipdist/tree/24.10)

## [24.09](/cvmfs/ship.cern.ch/24.09/)

Rebuild for new shipdist version, fixing EOS issues for good and updating
several packages.

[shipdist commit](https://github.com/ShipSoft/shipdist/tree/24.09)

## [24.07](/cvmfs/ship.cern.ch/24.07/)

[shipdist commit](https://github.com/ShipSoft/shipdist/tree/24.07)

### Fixed

* Fix EOS authentication issue by upgrading XRootD version

### Changed

* Update alibuild to v1.17.3

## [24.06](/cvmfs/ship.cern.ch/24.06/)

This release implements a workaround for the git safe.directory issues and
introduces support for Ubuntu 22.04.

[shipdist commit](https://github.com/ShipSoft/shipdist/tree/24.06)

### Added

* Support Ubuntu 22.04

### Fixed

* Workaround for git safe.directory issue

## [24.05.1](/cvmfs/ship.cern.ch/24.05.1/)

This release supersedes 24.05.1, as an update to ZeroMQ, needed for SWAN was
forgotten and a new alibuild release made an ugly workaround unnecessary.

[shipdist commit](https://github.com/ShipSoft/shipdist/tree/24.05.1)

### Changed

* Update alibuild to v1.17.2

### Removed

* Removed python symlink, which became unnecessary with alibuild update

## [24.05](/cvmfs/ship.cern.ch/24.05/)

Update XRootD to fix issues accessing files on EOS.

[shipdist commit](https://github.com/ShipSoft/shipdist/tree/24.05)

### Added

* Add alibuild as submodule

### Fixed

* Use `git describe --tags` for version

### Changed

* Prepend alibuild to path, add symlink for unqualified python

## [24.01](/cvmfs/ship.cern.ch/24.01/)

[shipdist commit](https://github.com/ShipSoft/shipdist/commit/fa1270666ccf78bc2dbc6e5a8426deaf86d93eb2)

First release for slc9 (lxplus9). For other architectures, please continue
using the previous releases for now.

### Added

* Add shipdist submodule to pin commit used for release
* Detect SND setup, if present

### Changed

* Update setUp.sh
* Make sure the script is sourced, using bash

### Removed

## [May 2023](/cvmfs/ship.cern.ch/SHiP-2023/May/)

[shipdist commit](https://github.com/ShipSoft/shipdist/commit/a3e02452a66000efb7ee1cc68c955113b3ca2e06)

### Added

* Added release for Ubuntu 22.04 (for all other architectures, use May 2022)

## [May 2022](/cvmfs/ship.cern.ch/SHiP-2022/May/)

[shipdist commit](https://github.com/ShipSoft/shipdist/commit/a3e02452a66000efb7ee1cc68c955113b3ca2e06)

Release used for Proposal studies for ECN3.
