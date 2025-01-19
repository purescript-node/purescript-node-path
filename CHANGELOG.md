# Changelog

Notable changes to this project are documented in this file. The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/) and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

Breaking changes:

New features:

Bugfixes:

Other improvements:

## [v5.0.1](https://github.com/purescript-node/purescript-node-path/releases/tag/v5.0.1) - 2025-01-19

Other improvements:
- Use node: prefix imports in FFI to preferentially force builtin module usage (#24 by @ematizza)

## [v5.0.0](https://github.com/purescript-node/purescript-node-path/releases/tag/v5.0.0) - 2022-04-27

Breaking changes:
- Update project and deps to PureScript v0.15.0 (#22 by @nwolverson, @JordanMartinez, @sigma-andex)

New features:

Bugfixes:

Other improvements:

## [v4.0.0](https://github.com/purescript-node/purescript-node-path/releases/tag/v4.0.0) - 2021-02-26

Breaking changes:
  - Added support for PureScript 0.14 and dropped support for all previous versions (#16)

Other improvements:
  - Migrated CI to GitHub Actions, updated installation instructions to use Spago, and switched from `jshint` to `eslint` (#15)
  - Added a changelog and pull request template (#17)

## [v3.0.0](https://github.com/purescript-node/purescript-node-path/releases/tag/v3.0.0) - 2018-05-27

- Updated for PureScript 0.12
- The `resolve` function now uses `Effect` as it uses the filesystem to resolve paths

## [v2.0.0](https://github.com/purescript-node/purescript-node-path/releases/tag/v2.0.0) - 2017-04-04

- Update for 0.11 (@anilanar)

## [v1.0.0](https://github.com/purescript-node/purescript-node-path/releases/tag/v1.0.0) - 2016-06-09

- Update for 1.0 core libraries.

## [v0.4.0-rc.1](https://github.com/purescript-node/purescript-node-path/releases/tag/v0.4.0-rc.1) - 2015-06-20

- Initial release candidate of the library intended for the 0.7 compiler.

## [v0.3.0](https://github.com/purescript-node/purescript-node-path/releases/tag/v0.3.0) - 2015-03-28

- Update docs
- `join` is now named `concat`

## [v0.2.0](https://github.com/purescript-node/purescript-node-path/releases/tag/v0.2.0) - 2014-07-27

- Change `join :: FilePath -> FilePath -> FilePath` to `join :: [FilePath] -> FilePath` (@andreypopp)

## [v0.1.0](https://github.com/purescript-node/purescript-node-path/releases/tag/v0.1.0) - 2014-06-10

- Initial release
