# VAST — Video Ad Serving Template

The IAB Tech Lab Video Ad Serving Template (VAST) is an XML-based standard for communicating video related ad creative, tracking, verification, interactivity, and related metadata between ad-serving systems and media players.

This repository is the primary source for IAB Tech Lab VAST specifications, XML schemas, maintained extensions, VAST macros, and legacy VAST version resources.

## Recommended Version

IAB Tech Lab recommends the latest supported **VAST 4.x** version for new implementations.

VAST 4.x was designed to support modern video and audio advertising environments, including server-side ad insertion (SSAI), high-quality creative delivery, standardized creative identification, ad verification through Open Measurement, secure interactivity through SIMID, and Connected TV use cases.

VAST 2.0 and VAST 3.0 materials remain available in this repository to support existing integrations and historical implementations. They should not be interpreted as the recommended starting point for new VAST integrations.

## VAST 4.x Specifications

| Version | Specification | XML Schema | Summary |
| --- | --- | --- | --- |
| VAST 4.4 | [`vast_4.4_spec.md`](vast_4.4_spec.md) | [`schemas/vast_4.4.xsd`](schemas/vast_4.4.xsd) | Adds native support for the CTV Ad Portfolio NonLinear content model and related updates. |
| VAST 4.3 | [`vast_4.3_spec.md`](vast_4.3_spec.md) | [`schemas/vast_4.3.xsd`](schemas/vast_4.3.xsd) | Updates macro management, continuous-play signaling, and inline data URI support for interactive creative files. |
| VAST 4.2 | [`vast_4.2_spec.md`](vast_4.2_spec.md) | [`schemas/vast_4.2.xsd`](schemas/vast_4.2.xsd) | Adds support for SIMID and additional interactive-ad and ad-break functionality. |
| VAST 4.1 | [`vast_4.1_spec.md`](vast_4.1_spec.md) | [`schemas/vast_4.1.xsd`](schemas/vast_4.1.xsd) | Adds Open Measurement-oriented verification, audio support, VAST ad requests, updated macros, and SSAI improvements. |
| VAST 4.0 | [`vast_4.0_spec.md`](vast_4.0_spec.md) | [`schemas/vast_4.0.xsd`](schemas/vast_4.0.xsd) | Establishes the VAST 4 architecture, including mezzanine files, Universal Ad ID, verification support, and improved SSAI workflows. |

> VAST specifications contain normative requirements that cannot always be expressed by an XML Schema. Successful XSD validation alone does not establish complete VAST compliance.

## Repository Structure

### `/vast4macros`

The maintained VAST macro registry.

The macro registry is managed separately from individual VAST specification releases so that approved macros can be introduced without requiring publication of a new VAST version.

See [`vast4macros/README.md`](vast4macros/README.md).

### Legacy Versions

VAST 2.0 and VAST 3.0 specifications, schemas, supporting images, and related compatibility resources are retained under the repository's `_legacy_versions` directories.

These resources support existing implementations and historical reference. IAB Tech Lab recommends the latest supported VAST 4.x version for new integrations.

## VAST 4.x Macros

The current VAST macro registry is maintained separately from the versioned specification documents:

[`vast4macros/vast4-macros-latest.html`](vast4macros/vast4-macros-latest.html)

This allows approved macros to evolve independently of the VAST specification release cycle.

## CTV Ad Portfolio

The CTV Ad Portfolio expands VAST support for Connected TV ad experiences including Pause, Screensaver, Overlay, Squeezeback, and In-Scene ads.

The latest VAST 4.x specification provides the native VAST model for these formats. Compatibility guidance and extensions may also exist for earlier VAST implementations.

See the IAB Tech Lab [Ad Format Guidelines for Digital Video and CTV](https://github.com/InteractiveAdvertisingBureau/Ad-Format-Guidelines-for-Digital-Video-CTV) for transaction and signaling guidance.

## Validation

VAST validation has both structural and semantic components.

An XSD validates the XML structure of a VAST response. The corresponding VAST specification defines additional requirements and expected implementation behavior that may not be enforceable through XML Schema alone.

Implementers should therefore:

1. validate the XML against the schema appropriate for the declared VAST version; and
2. follow the normative requirements and implementation guidance in the corresponding VAST specification.

## Supporting Specifications

VAST works with other IAB Tech Lab standards including:

- [SIMID](https://github.com/InteractiveAdvertisingBureau/SIMID) for secure interactive advertising;
- [Open Measurement](https://iabtechlab.com/standards/open-measurement-sdk/) for measurement and verification;
- [VMAP](https://iabtechlab.com/standards/vmap/) for describing ad breaks within content; and
- [AdCOM](https://github.com/InteractiveAdvertisingBureau/AdCOM) for shared advertising enumerations used by VAST and other Tech Lab specifications.

## Historical and Compatibility Material

Older VAST materials are preserved because deployed integrations may continue to depend on them.

Their presence in this repository does not indicate that IAB Tech Lab recommends beginning new integrations using those versions. New development should target the latest supported VAST 4.x version whenever practical.

## Questions and Contributions

Questions, implementation issues, corrections, and proposed improvements may be submitted through GitHub Issues or Pull Requests in this repository.

Please distinguish between:

- specification clarification;
- schema validation issues;
- editorial corrections; and
- proposals for new VAST functionality.

## About IAB Tech Lab
The IAB Technology Laboratory is a nonprofit research and development consortium charged with producing and helping companies implement global industry technical standards and solutions. The goal of the Tech Lab is to reduce friction associated with the digital advertising and marketing supply chain while contributing to the safe growth of an industry. The IAB Tech Lab spearheads the development of technical standards, creates and maintains a code library to assist in rapid, cost-effective implementation of IAB standards, and establishes a test platform for companies to evaluate the compatibility of their technology solutions with IAB standards, which for 18 years have been the foundation for interoperability and profitable growth in the digital advertising supply chain.

Learn more about IAB Tech Lab here: https://www.iabtechlab.com/

Contributors and Technical Governance
OpenRTB Working Group members provide contributions to this repository. Participants in the Programmatic Supply Working group must be members of IAB Tech Lab. Technical Governance and code commits for the project are provided by the IAB Tech Lab Programmatic Supply Chain Commit Group.

Learn more about how to submit changes in our working group: So, You'd Like to Propose a Change...

## License
Video Ad Serving Template (VAST) specification the IAB Tech Lab is licensed under a Creative Commons Attribution 3.0 License. To view a copy of this license, visit creativecommons.org/licenses/by/3.0/ or write to Creative Commons, 171 Second Street, Suite 300, San Francisco, CA 94105, USA.

By submitting an idea, specification, software code, document, file, or other material (each, a “Submission”) to the VAST repository, to any member of the Advanced TV Working Group, or to the IAB Tech Lab in relation to VAST you agree to and hereby license such Submission to the IAB Tech Lab under the Creative Commons Attribution 3.0 License and agree that such Submission may be used and made available to the public under the terms of such license. If you are a member of the IAB Tech Lab then the terms and conditions of the IPR Policy may also be applicable to your Submission, and if the IPR Policy is applicable to your Submission then the IPR Policy will control  in the event of a conflict between the Creative Commons Attribution 3.0 License and the IPR Policy.

## Disclaimer
THE STANDARDS, THE SPECIFICATIONS, THE MEASUREMENT GUIDELINES, AND ANY OTHER MATERIALS OR SERVICES PROVIDED TO OR USED BY YOU HEREUNDER (THE “PRODUCTS AND SERVICES”) ARE PROVIDED “AS IS” AND “AS AVAILABLE,” AND IAB TECHNOLOGY LABORATORY, INC. (“TECH LAB”) MAKES NO WARRANTY WITH RESPECT TO THE SAME AND HEREBY DISCLAIMS ANY AND ALL EXPRESS, IMPLIED, OR STATUTORY WARRANTIES, INCLUDING, WITHOUT LIMITATION, ANY WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, AVAILABILITY, ERROR-FREE OR UNINTERRUPTED OPERATION, AND ANY WARRANTIES ARISING FROM A COURSE OF DEALING, COURSE OF PERFORMANCE, OR USAGE OF TRADE. TO THE EXTENT THAT TECH LAB MAY NOT AS A MATTER OF APPLICABLE LAW DISCLAIM ANY IMPLIED WARRANTY, THE SCOPE AND DURATION OF SUCH WARRANTY WILL BE THE MINIMUM PERMITTED UNDER SUCH LAW. THE PRODUCTS AND SERVICES DO NOT CONSTITUTE BUSINESS OR LEGAL ADVICE. TECH LAB DOES NOT WARRANT THAT THE PRODUCTS AND SERVICES PROVIDED TO OR USED BY YOU HEREUNDER SHALL CAUSE YOU AND/OR YOUR PRODUCTS OR SERVICES TO BE IN COMPLIANCE WITH ANY APPLICABLE LAWS, REGULATIONS, OR SELF-REGULATORY FRAMEWORKS, AND YOU ARE SOLELY RESPONSIBLE FOR COMPLIANCE WITH THE SAME, INCLUDING, BUT NOT LIMITED TO, DATA PROTECTION LAWS, SUCH AS THE PERSONAL INFORMATION PROTECTION AND ELECTRONIC DOCUMENTS ACT (CANADA), THE DATA PROTECTION DIRECTIVE (EU), THE E-PRIVACY DIRECTIVE (EU), THE GENERAL DATA PROTECTION REGULATION (EU), AND THE E-PRIVACY REGULATION (EU) AS AND WHEN THEY BECOME EFFECTIVE.

