# Legacy VAST Compatibility Extensions

This directory contains standardized compatibility extensions intended for existing implementations of older "legacy" VAST versions.

These extensions provide selected capabilities that are available natively or more completely in later VAST versions.

IAB Tech Lab recommends the latest supported VAST 4.x version for new implementations. The extensions in this directory are maintained to support existing integrations where migration to VAST 4.x is not immediately practical.

## Use of Extensions

An extension should be used only with the VAST versions and structures identified by its specification.

Support for an extension must not be assumed simply because a system supports the underlying VAST version.

Where the latest VAST 4.x specification provides equivalent native functionality, new implementations should prefer the native VAST structure.

## Validation

Extension content may not be validated by the base XSD for the legacy VAST version.

Implementers should follow both the underlying VAST specification and the requirements defined by the individual extension document.
