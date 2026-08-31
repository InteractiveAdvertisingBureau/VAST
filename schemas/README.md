# VAST XML Schemas

This directory contains XML Schema Definition files for published VAST versions.

IAB Tech Lab recommends using the latest supported VAST 4.x version for new implementations. Older VAST schemas are retained to support validation of existing integrations and historical versions.

## Schema and specification relationship

A VAST XSD validates the XML structure of a VAST response. It does not express every normative requirement in the VAST specification. Implementers should validate against the XSD for the declared VAST version and also follow the corresponding VAST specification text.

## VAST 4.4 - `vast_4.4.xsd` (CTV Ad Portfolio) 

VAST 4.4 introduces native schema support for the updated CTV Ad Portfolio `NonLinearAds` content model. This includes support for CTV ad formats such as Pause, Screensaver, Overlay, Squeezeback, and In-Scene ads using an expanded `NonLinearAds` model.

Implementations using VAST 4.2 or VAST 4.3 with CTV Ad Portfolio compatibility guidance may require a CTV Ad Portfolio-aware validation profile and should not assume those responses validate against the unmodified VAST 4.2 or VAST 4.3 schemas.

<b>Original repo location: /vast_4.4.xsd</b>

## VAST 4.3 - `vast_4.3.xsd` (No changes from 4.2) 

VAST 4.3 did not introduce XML structural changes requiring a schema change from VAST 4.2. The `vast_4.3.xsd` file is therefore intentionally aligned with `vast_4.2.xsd` and is provided as a version-labeled validation artifact for implementer convenience.

VAST 4.3 responses should be validated using `vast_4.3.xsd` together with the VAST 4.3 specification text, including VAST 4.3 guidance for inline data URIs in `InteractiveCreativeFile`.

## VAST 4.2 - `vast_4.2.xsd` (SIMID support)

VAST 4.2 added support for Secure Interactive Media Interface Definition, or SIMID, as the secure interactive replacement path for VPAID-based interactive use cases. VAST 4.2 also included minor updates to support SIMID and related interactive creative delivery.

VAST 4.2 schemas are retained for validation of VAST 4.2 responses and existing VAST 4.2 integrations.

<b>Original repo location: /vast_4.2.xsd</b>

## VAST 4.1 - `vast_4.1.xsd` (verification, ad requests, audio, and SSAI improvements)

VAST 4.1 advanced the VAST 4.x model by improving support for third-party verification and measurement in a non-VPAID architecture, including updates to `AdVerifications`. VAST 4.1 also introduced a basic ad request framework based on macros, removed Flash references, made updates relevant to server-side ad insertion workflows, and incorporated audio use cases into VAST so digital audio and video workflows could use a common ad-serving model.

VAST 4.1 schemas are retained for validation of VAST 4.1 responses and existing VAST 4.1 integrations.

<b>Original repo location: /vast_4.1.xsd</b>

## VAST 4.0 - `vast_4.0.xsd` (mezzanine files, creative identification, verification, and SSAI)

VAST 4.0 introduced major changes intended to improve ad quality, creative identification, server-side ad insertion support, and measurement. Key additions included mezzanine file support, `UniversalAdId`, categories, conditional ad declaration, and the VAST 4.x foundation for separating media files from executable code.

VAST 4.0 schemas are retained for validation of VAST 4.0 responses and historical VAST 4.0 integrations. New implementations should use the latest supported VAST 4.x version rather than starting with VAST 4.0.

<b>Original repo location: /vast4.xsd</b>

## VAST 3.0 - `vast_3.0.xsd` (ad pods, skippable ads, and improved reporting)

VAST 3.0 added support for ad pods using the `sequence` attribute, skippable linear ads, industry icon overlays, and improved error/reporting capabilities while maintaining backward compatibility with VAST 2.0 response structures.

VAST 3.0 schemas are retained for validation of VAST 3.0 responses and existing integrations. New implementations should use the latest supported VAST 4.x version where possible.

<b>Original repo location: /vast3_draft.xsd</b>

## VAST 2.0.1 - `vast_2.0.1.xsd` (core VAST 2.0 schema)

`vast_2.0.1.xsd` is the schema artifact historically used for validating VAST 2.0 responses. VAST 2.0 established the core XML response model for communication between ad servers and video players, including `InLine` and `Wrapper` ads, `Linear`, `NonLinearAds`, `CompanionAds`, tracking events, clickthroughs, media files, and extensions.

VAST 2.0.1 schemas are retained for validation of existing VAST 2.0 integrations and historical compatibility. New implementations should use the latest supported VAST 4.x version where possible.

<b>Original repo location: /vast_2.0.1.xsd</b>
