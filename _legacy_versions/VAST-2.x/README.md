# VAST 2.x

This directory contains the historical VAST 2.0 specification, XML schema, supporting images, and compatibility extensions retained for existing implementations.

IAB Tech Lab recommends using the latest supported **VAST 4.x** version for new implementations. VAST 2.0 materials remain available because deployed systems may continue to send, receive, or validate VAST 2.0 responses.

## Contents

### `VAST_2.0_spec.md`

Markdown version of the published VAST 2.0 specification.

This document defines the core VAST 2.0 response model, including:

- `InLine` and `Wrapper` ads
- `Linear` creatives
- `NonLinearAds`
- `CompanionAds`
- `MediaFiles`
- tracking events
- clickthrough and click-tracking behavior
- VAST extensions

The Markdown version is maintained as a repository-friendly representation of the originally published VAST 2.0 specification and should preserve the normative meaning of that release.

### `vast_2.0.1.xsd`

XML Schema Definition used to validate the XML structure of VAST 2.0 responses.

The `.0.1` designation reflects the historical schema artifact associated with VAST 2.0 and does not represent a separate VAST specification generation.

Successful XSD validation confirms that the XML conforms to the schema structure, but it does not by itself establish complete VAST compliance. Implementers should also follow the requirements and behavior defined in `VAST_2.0_spec.md` and any applicable compatibility guidance.

### `/extensions`

Contains IAB Tech Lab-defined compatibility extensions for VAST 2.0.

These extensions make selected capabilities available to existing VAST 2.0 implementations where those capabilities are not represented natively in the VAST 2.0 schema.

Examples may include support for newer creative-delivery or metadata requirements needed by deployed environments.

The availability of these extensions should not be interpreted as a recommendation to begin new integrations using VAST 2.0. Where equivalent functionality is available natively in the latest supported VAST 4.x version, new implementations should prefer the VAST 4.x model.

See [`extensions/`](extensions/) for the available extension documents.

### `/images`

Contains diagrams, tables, and other image assets referenced by `VAST_2.0_spec.md`.

These files support the presentation of the historical specification and do not independently define normative VAST requirements.

## Compatibility and Extensions

VAST 2.0 predates a number of capabilities introduced in later VAST versions. IAB Tech Lab may provide narrowly scoped extensions or compatibility guidance where necessary to support existing VAST 2.0 deployments.

An extension does not modify the underlying `vast_2.0.1.xsd` unless a separate schema explicitly defines that change.

Systems using a VAST 2.0 extension should therefore follow:

1. the VAST 2.0 specification;
2. the VAST 2.0 schema where applicable; and
3. the requirements defined by the individual extension document.

Support for an extension must not be assumed solely because a system supports VAST 2.0.

## Validation

A VAST response declaring:

```xml
<VAST version="2.0">
```

should conform to the VAST 2.0 structure and applicable VAST 2.0 requirements.

Compatibility extensions may contain additional data that is not represented directly by the base VAST 2.0 XSD. Implementers using those extensions should follow the validation and processing requirements defined by the corresponding extension document.

## Historical Status

VAST 2.0 is retained for existing integrations and historical reference.

For new development, IAB Tech Lab recommends the latest supported VAST 4.x specification, which provides native support for capabilities introduced after VAST 2.0 and reflects the current direction of the VAST standard.

## Related Resources
Current VAST repository
VAST XML schemas
IAB Tech Lab VAST standards page
