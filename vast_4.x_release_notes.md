# VAST 4.x Release Notes

This document summarizes specification and XML schema changes across the VAST 4.x family.

## VAST 4.4.1

**Publication Date:** TBD

VAST 4.4.1 is a maintenance update to the VAST 4.4 XML schema. The VAST 4.4 specification itself is unchanged.

### XML Schema Updates

- Updated the shared `InteractiveCreativeFile` model used by both Linear and NonLinear creatives.
- Added support for an `HTMLResource` child within `InteractiveCreativeFile` to allow directly embedded SIMID HTML.
- Preserved existing support for URI and inline `data:` URI representations of interactive creative content.
- Clarified that `HTMLResource` is an alternative representation of the interactive creative content and should not be supplied together with URI text in the same `InteractiveCreativeFile`.
- Did not add `IFrameResource` or `StaticResource` as children of `InteractiveCreativeFile`; remote interactive HTML continues to be represented by the URI value of `InteractiveCreativeFile`.
- Maintained the same shared `InteractiveCreativeFile` type for both Linear and NonLinear creatives so the SIMID delivery model remains consistent between the two.
- Additional schema corrections and clarifications may be included before publication.

## VAST 4.4

**Publication Date:** July 17, 2026

VAST 4.4 expands VAST support for the IAB Tech Lab CTV Ad Portfolio and modernizes the `NonLinearAds` content model for Connected TV ad experiences.

### Specification Updates

- Expanded `NonLinearAds` to support CTV ad formats including Pause, Screensaver, Overlay, Squeezeback, and In-Scene ads.
- Added support for time-based NonLinear creatives using `Duration`.
- Added `MediaFiles` support to NonLinear creatives, enabling media-file delivery patterns comparable to those available for Linear creatives.
- Added `InteractiveCreativeFile` support for NonLinear creatives so SIMID interactive creatives can use the same delivery model as Linear creatives.
- Added support for `Icons` in the NonLinear creative model.
- Added standardized QR code creative metadata through `CreativeExtension`.
- Added guidance for carrying applicable AdCOM signaling context with VAST responses.
- Updated tracking guidance for time-based NonLinear creatives, including quartile tracking when `Duration` is present.

### XML Schema Updates

- Added `Duration` to the NonLinear content model.
- Added `MediaFiles` and `MediaFile` support to NonLinear creatives.
- Added `InteractiveCreativeFile` support to the shared media-file model used by NonLinear creatives.
- Added `Icons` support to `NonLinearAds`.
- Added schema support for standardized CTV QR code creative metadata.
- Added schema support for CTV Ad Portfolio-related VAST extension metadata.

## VAST 4.3

**Published:** December 2022

VAST 4.3 was a comparatively small update and did not introduce XML structural changes requiring a materially different XSD from VAST 4.2.

### Specification updates

- Moved VAST macro management to GitHub so macros can be maintained independently of the VAST specification release cycle.
- Added the `[PLAYBACKMETHODS]` value `7` for continuous play, where content episodes are played back-to-back without user interaction.
- Clarified that `InteractiveCreativeFile` may contain either a direct URL or an inline `data:` URI, enabling interactive creative content such as HTML to be embedded without requiring a separate network request.

### XML schema note

- VAST 4.3 did not add or remove XML elements or attributes requiring a schema-level structural change from VAST 4.2.
- A version-labeled `vast_4.3.xsd` may therefore be intentionally aligned with `vast_4.2.xsd` and used together with the VAST 4.3 specification text.
- Normative VAST 4.3 behavior that is not expressible in XSD, including inline `data:` URI guidance for `InteractiveCreativeFile`, is defined by the specification text.

## VAST 4.2

**Updated for compliance with the VAST 4.2 specification:** August 1, 2019

For schema-level comparison, diff `vast_4.1.xsd` and `vast_4.2.xsd`.

- Added support for multiple `UniversalAdId` elements.
- Changed `Creative_Base_type` from `xs:all` to `xs:sequence` to allow multiple `UniversalAdId` values.
- Added `IconClickFallbackImages` and related child elements.
- Changed `Icons` from `xs:all` to `xs:sequence` to allow multiple `Icon` values.
- Added notes and schema references related to SIMID support.

## VAST 4.1

**Updated to align with the VAST 4.1 specification:** 2018

For schema-level comparison, diff `vast_4.1.xsd` and the final VAST 4.0 schema (`vast4.xsd`).

- Deprecated VPAID-related features.
- Removed Flash references and support.
- Simplified Tracking and ClickThrough elements.
- Simplified Verification elements so common verification structures can be used across InLine and Wrapper responses.
- Generalized selected elements to support audio media in VAST.
- Added the `adType` attribute to `Ad`.
- Added `BlockedAdCategories`.
- Added `AdServingId` to InLine responses.
- Added `Expires` to InLine responses.
- Added `variableDuration` to `InteractiveCreativeFile`.
- Added closed-caption support and additional VAST 4.1 media-file refinements.

## VAST 4.0 Schema Maintenance Releases

The following point releases reflect schema maintenance and corrections made after the initial VAST 4.0 XSD publication.

### VAST 4.0.7

- Renamed selected schema types to align with VAST 4.1 type naming.
- Removed development-only `id` attributes from schema types where they were no longer needed.

### VAST 4.0.6

- Cleaned up and simplified XML namespace handling.
- Standardized XSD version representation.

### VAST 4.0.5

- Updated tracking events to align with the specification (Issue #5).
- Made `UniversalAdId` attributes required.
- Applied multiple schema corrections from Issue #6, including:
  1. Corrected ClickThrough cardinality.
  2. Added the `type` attribute to `CreativeExtension` for MIME type.
  3. Removed the incorrect `xmlEncoded` attribute from `HTMLResource` and aligned its documentation with the specification.
  4. Required exactly one `AdSystem` where applicable.
  5. Allowed multiple `Category` elements.
  6. Required `UniversalAdId` attributes.
  7. Simplified `Mezzanine`.
  8. Removed adaptive-streaming treatment from `MediaFile`.
  9. Confirmed `Icons` inheritance in both Wrapper/Linear and InLine/Linear structures.
  10. Made `Icon` attributes optional as specified.
  11. Corrected `IconClickThrough` / `IconClickTracking` attribute handling.
  12. Simplified `IconViewTracking` to URI content.
  13. Made `CompanionClickTracking@id` required in the 4.0.5 XSD.
  14. Simplified `VASTAdTagURI`.
  15. Made `Creatives` optional under Wrapper.
  16. Renamed `Verification_type` to `VerificationWrapper_type`.

### VAST 4.0.4

- Reorganized XSD element order alphabetically within types.
- Updated the schema to validate the available sample VAST XML documents.
- Corrected `Extensions` processing.

### VAST 4.0.3

- Updated minimum occurrence of `MediaFile` to align with the VAST 4.0 specification.
- Added the missing `Extension` element under `Extensions` (Issue #2).
- Corrected attribute casing issues.
- Added the missing `Verification` element for InLine responses (Issue #3).
- Made `Creatives` optional under Wrapper (Issue #1).

### VAST 4.0.2

- Corrected element cardinality issues, including cases that changed from `0..1` to `0..unbounded`.
- Required an `Impression` element where specified.

### VAST 4.0.1

- Updated the schema for compatibility with code-generation tools including JAXB (Java) and `xsd.exe` (.NET).
- Changed `id` attributes from `xs:ID` to `xs:string`.

### VAST 4.0.0

- Initial release of the VAST 4 XML Schema Definition.
