# VAST 3.x

This directory contains the historical VAST 3.0 specification, XML schema, supporting images, and compatibility extensions retained for existing implementations.

IAB Tech Lab recommends using the latest supported **VAST 4.x** version for new implementations. VAST 3.0 materials remain available because deployed systems may continue to send, receive, or validate VAST 3.0 responses.

## Contents

### `vast_3.0_spec.md`

Markdown version of the published VAST 3.0 specification.

VAST 3.0 expanded the VAST model with capabilities including:

- ad pods using the `sequence` attribute;
- skippable linear ads;
- improved error reporting;
- additional tracking behavior;
- industry icon support;
- improvements to Wrapper handling and ad-serving interoperability.

The Markdown version is maintained as a repository-friendly representation of the originally published VAST 3.0 specification and should preserve the normative meaning of that release.

### `vast_3.0_schema.xsd`

XML Schema Definition used to validate the XML structure of VAST 3.0 responses.

Successful XSD validation confirms that the XML conforms to the schema structure, but it does not by itself establish complete VAST compliance. Implementers should also follow the requirements and behavior defined in `vast_3.0_spec.md` and any applicable compatibility guidance.

### `/extensions`

Contains IAB Tech Lab-defined compatibility extensions for VAST 3.0.

These extensions make selected capabilities available to existing VAST 3.0 implementations where those capabilities are not represented natively in the VAST 3.0 schema.

The availability of these extensions should not be interpreted as a recommendation to begin new integrations using VAST 3.0. Where equivalent functionality is available natively in the latest supported VAST 4.x version, new implementations should prefer the VAST 4.x model.

### `/images`

Contains diagrams, tables, and other image assets referenced by `vast_3.0_spec.md`.

These files support the presentation of the historical specification and do not independently define normative VAST requirements.

## Compatibility and Extensions

VAST 3.0 predates a number of capabilities introduced in later VAST 4.x versions. IAB Tech Lab may provide narrowly scoped extensions or compatibility guidance where necessary to support existing VAST 3.0 deployments.

An extension does not modify the underlying `vast_3.0_schema.xsd` unless a separate schema explicitly defines that change.

Systems using a VAST 3.0 extension should therefore follow:

1. the VAST 3.0 specification;
2. the VAST 3.0 schema where applicable; and
3. the requirements defined by the individual extension document.

Support for an extension must not be assumed solely because a system supports VAST 3.0.

## Validation

A VAST response declaring:

```xml
<VAST version="3.0">
```
should conform to the VAST 3.0 structure and applicable VAST 3.0 requirements.

Compatibility extensions may contain additional data that is not represented directly by the base VAST 3.0 XSD. Implementers using those extensions should follow the validation and processing requirements defined by the corresponding extension document.

## Relationship to VAST 2.0

VAST 3.0 was designed to maintain backward compatibility with VAST 2.0 while adding new functionality.

A VAST 3.0-capable implementation should generally be able to process valid VAST 2.0 responses, but newer VAST 3.0 functionality is not automatically available to VAST 2.0 implementations.

## Historical Status

VAST 3.0 is retained for existing integrations and historical reference.

For new development, IAB Tech Lab recommends the latest supported VAST 4.x specification, which provides native support for later capabilities including improved server-side ad insertion workflows, standardized creative identification, verification through Open Measurement, secure interactivity through SIMID, and current Connected TV requirements.

## Related Resources
Current VAST repository
VAST XML schemas
IAB Tech Lab VAST standards page
