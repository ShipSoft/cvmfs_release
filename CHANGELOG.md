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

[shipdist commit](https://github.com/ShipSoft/shipdist/tree/master)

### Added

### Fixed

### Changed

### Removed

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
