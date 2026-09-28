
VAST 4.x Release Notes
===================
4.4 - PENDING
---


4.3
---


4.2
---
Updated for compliance with 4.2 spec Aug 1, 2019.
You may diff files "vast_4.1.xsd" and "vast_4.2.xsd"

* Allow multiple UniversalAdId elements
* Modify Creative_Base_type to use sequence instead of all to allow for multiple UniversalAdId values
* Addition of IconClickFallbackImages element and sub elements
* Modify Icons element to use sequence instead of all to allow for multiple Icon values
* Updated with references to SIMID in notes.

4.1
---
Updated to match 4.1 draft for public comment June 4, 2018.
Recommend you diff files "vast_4.1.xsd" and "vast4.xsd".

* Deprecation of VPAID related features
* Removal of Flash references and support
* Simplification of Tracking and Clickthrough elements
* Simplification of Verification elements to be common across Inline and Wrapper elements
* Generalization of some elements to support Audio media in VAST
* Addition of adType to Ad element
* Addition of BlockedAdCategories element
* Addition of AdServingId element to Inline type
* Addition of Expires element to Inline type

4.0.7
-----
* Modify some type names to align with 4.1 xsd type name changes
* Removed id attributes from types as they are no longer needed for development

4.0.6
-----
* Cleanup and simplification of xmlns 
* Standardize xsd versioning representation

4.0.5
-----
* Updated tracking events to match spec (Issue #5)
* UniversalAdId attributes are required
* Multiple updates on Icon, MediFile, etc (Issue #6)
	Item 1 - 3.10.1 - Fixed Clickthrough Bounding
	Item 2 - 3.7.3 - Added attribute "type" explicitly to hold MIME type on CreativeExtension
	Item 3 - 3.15.3 - Removed xmlEncoded incorrect attribute and added comment from spec on HTMLResource
	Item 4 - 3.4.1 - Changed AdSystem to be bounded at 1 (required)
	Item 5 - 3.4.4 - Multiple Category elements allowed
	Item 6 - 3.7.1 - Attributes on UniversalAdId changed to required
	Item 7 - 3.9.2 - Simplified Mezzanine
	Item 8 - 3.9.1 - Removed adaptive streaming
	Item 9 - 3.11 - Icons element is defined in Linear_Base_type, which is inherited from by both Wrapper/Linear and Inline/Linear, so no change
	Item 10 - 3.11.1 - All Icon attributes now optional
	Item 11 - 3.11.4 and 3.11.5 Adjusted to fix attributes.
	Item 12 - 3.11.2 - Fixed IconViewTracking to only have simple uri
	Item 13 - 3.13.4 - Modified to add id as required attribute to CompanionClickTracking
	Item 14 - 3.19.1 - Simplified VASTAdTagURI element
	Item 15 - 3.19 - Creatives under Wrapper no longer required
	Item 16 - Renamed Verification_type' to 'VerificationWrapper_type'

4.0.4
-----
* Reorganize XSD element order for alphabetical within a type.
* Sync to validate against all sample VAST xmls.
* Adjust to process Extensions correctly


4.0.3
-----
* Minimum occurrance of MediaFile updated to agree with latest VAST 4.0 spec.
* Github #2 -> Addition of missing Extension element under Extensions
* Attribute casing issue
* Github #3 -> Missing Verification element for Inline elements
* Github #1 -> Creatives changed to not be required element under Wrapper


4.0.2
-----
* Changes to address cardinality issues in some elements (change 0-1 to 0+)
* Update to require an Impression element

4.0.1
-----
* Updated schema to work with code generation tools JAXB (Java) and xsd.exe (.Net)
* Change id attributes to be strings instead of xs:ID type

4.0.0
-----
Initial release of the vast 4 XSD schema.



