![](https://drive.google.com/uc?id=1MStOYYaZDqrvuOwlmecX0iayL0Jt_eAN)

# VAST CTV Addendum 2024

### About this document 

This Addendum was developed by the [Advanced TV Technical Working Group](https://iabtechlab.com/working-groups/advanced-tv-working-group/) with executive input from the [Advanced TV Commit Group](https://iabtechlab.com/working-groups/advanced-tv-commit-group/). The solutions outlined in this addendum are focused on VAST extensions and guidance to support critical features in the video supply chain for advancing video advertising across a diverse range of TV-viewing environments. This document should be used in conjunction with the existing VAST standards. It provides guidance to enable non-breaking changes to VAST 2 and 3, while also directing users to existing solutions in VAST 4. 

Please contact [support@iabtechlab.com](mailto:support@iabtechlab.com) if you have any questions or comments about this document. This document and other related resources can be found on the IAB Tech Lab website at: [iabtechlab.com](http://iabtechlab.com)

### IAB Tech Lab Lead: 

Katie Stroud, Senior Product Manager 

### About IAB Tech Lab 

The IAB Technology Laboratory (Tech Lab) is a non-profit consortium that engages a member community globally to develop foundational technology and standards that enable growth and trust in the digital media ecosystem. Comprised of digital publishers, ad technology firms, agencies, marketers, and other member companies, IAB Tech Lab focuses on improving the digital advertising supply chain, measurement, and consumer experiences, while promoting responsible use of data. Its work includes the Open Real-Time Bidding (OpenRTB) bidding protocol, ads.txt anti-fraud specification, Open Measurement SDK for viewability and verification, Video Ad Serving Template (VAST), Global Privacy Platform (GPP), and other for a growing suite of products to support advertising technology. Established in 2014, the IAB Tech Lab is headquartered in New York City with staff located remotely across the US and abroad. 

### Disclaimer 

THE STANDARDS, THE SPECIFICATIONS, THE MEASUREMENT GUIDELINES, AND ANY OTHER MATERIALS OR SERVICES PROVIDED TO OR USED BY YOU HEREUNDER (THE “PRODUCTS AND SERVICES”) ARE PROVIDED “AS IS” AND “AS AVAILABLE,” AND IAB TECHNOLOGY LABORATORY, INC. (“TECH LAB”) MAKES NO WARRANTY WITH RESPECT TO THE SAME AND HEREBY DISCLAIMS ANY AND ALL EXPRESS, IMPLIED, OR STATUTORY WARRANTIES, INCLUDING, WITHOUT LIMITATION, ANY WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, AVAILABILITY, ERROR-FREE OR UNINTERRUPTED OPERATION, AND ANY WARRANTIES ARISING FROM A COURSE OF DEALING, COURSE OF PERFORMANCE, OR USAGE OF TRADE. TO THE EXTENT THAT TECH LAB MAY NOT AS A MATTER OF APPLICABLE LAW DISCLAIM ANY IMPLIED WARRANTY, THE SCOPE AND DURATION OF SUCH WARRANTY WILL BE THE MINIMUM PERMITTED UNDER SUCH LAW. THE PRODUCTS AND SERVICES DO NOT CONSTITUTE BUSINESS OR LEGAL ADVICE. TECH LAB DOES NOT WARRANT THAT THE PRODUCTS AND SERVICES PROVIDED TO OR USED BY YOU HEREUNDER SHALL CAUSE YOU AND/OR YOUR PRODUCTS OR SERVICES TO BE IN COMPLIANCE WITH ANY APPLICABLE LAWS, REGULATIONS, OR SELF-REGULATORY FRAMEWORKS, AND YOU ARE SOLELY RESPONSIBLE FOR COMPLIANCE WITH THE SAME, INCLUDING, BUT NOT LIMITED TO, DATA PROTECTION LAWS, SUCH AS THE PERSONAL INFORMATION PROTECTION AND ELECTRONIC DOCUMENTS ACT (CANADA), THE DATA PROTECTION DIRECTIVE (EU), THE E-PRIVACY DIRECTIVE (EU), THE GENERAL DATA PROTECTION REGULATION (EU), AND THE E-PRIVACY REGULATION (EU) AS AND WHEN THEY BECOME EFFECTIVE. 

### License 

The VAST specification from the IAB Tech Lab is licensed under a Creative Commons Attribution Non-Commercial No-Derivatives License. 

To view a copy of this license, please visit: https://creativecommons.org/licenses/by-nc-nd/4.0/legalcode 

Or write to:
Creative Commons
171 Second Street, Suite 300 San Francisco, CA 94105, USA. 

## Table of Contents 

- [Executive Summary](https://github.com/InteractiveAdvertisingBureau/vast/blob/master/VAST%20CTV%20Addendum%202024.md#executive-summary)
  -  [Audience](https://github.com/InteractiveAdvertisingBureau/vast/blob/master/VAST%20CTV%20Addendum%202024.md#audience)
      - [Platform Reciipients of VAST Tags](https://github.com/InteractiveAdvertisingBureau/vast/blob/master/VAST%20CTV%20Addendum%202024.md#platform-recipients-of-vast-tags)
      - [VAST Tag Distributors](https://github.com/InteractiveAdvertisingBureau/vast/blob/master/VAST%20CTV%20Addendum%202024.md#vast-tag-distributors) 
- [Registered Ad Creative IDs](https://github.com/InteractiveAdvertisingBureau/vast/blob/master/VAST%20CTV%20Addendum%202024.md#registered-ad-creative-ids)
  - [```<UniversalAdId>```](https://github.com/InteractiveAdvertisingBureau/vast/blob/master/VAST%20CTV%20Addendum%202024.md#universaladid)
  - [Implementation](https://github.com/InteractiveAdvertisingBureau/vast/blob/master/VAST%20CTV%20Addendum%202024.md#implementation)
      - [VAST 2.0](https://github.com/InteractiveAdvertisingBureau/vast/blob/master/VAST%20CTV%20Addendum%202024.md#vast-20)
      - [VAST 3.x](https://github.com/InteractiveAdvertisingBureau/vast/blob/master/VAST%20CTV%20Addendum%202024.md#vast-3x)
      - [VAST 4.x](https://github.com/InteractiveAdvertisingBureau/vast/blob/master/VAST%20CTV%20Addendum%202024.md#vast-4x)
- [Open Measurement Support](https://github.com/InteractiveAdvertisingBureau/vast/blob/master/VAST%20CTV%20Addendum%202024.md#open-measurement-support)
- [Interactive Video Support](https://github.com/InteractiveAdvertisingBureau/vast/blob/master/VAST%20CTV%20Addendum%202024.md#interactive-video-support)
  - [Secure Interactive Media Interface Definition (SIMID)](https://github.com/InteractiveAdvertisingBureau/vast/blob/master/VAST%20CTV%20Addendum%202024.md#secure-interactive-media-interface-definition-simid)
  - [```<InteractiveCreativeFile>```](https://github.com/InteractiveAdvertisingBureau/vast/blob/master/VAST%20CTV%20Addendum%202024.md#interactivecreativefile)
      - [VAST 2.0](https://github.com/InteractiveAdvertisingBureau/vast/blob/master/VAST%20CTV%20Addendum%202024.md#vast-20-1)
      - [VAST 3.x](https://github.com/InteractiveAdvertisingBureau/vast/blob/master/VAST%20CTV%20Addendum%202024.md#vast-3x-1)
      - [VAST 4.x](https://github.com/InteractiveAdvertisingBureau/vast/blob/master/VAST%20CTV%20Addendum%202024.md#vast-4x-1)
- [High Resolution Support](https://github.com/InteractiveAdvertisingBureau/vast/blob/master/VAST%20CTV%20Addendum%202024.md#high-resolution-support)
  - [```<Mezzanine>```](https://github.com/InteractiveAdvertisingBureau/vast/blob/master/VAST%20CTV%20Addendum%202024.md#mezzanine)
      - [VAST 2.0 and VAST 3.x](https://github.com/InteractiveAdvertisingBureau/vast/blob/master/VAST%20CTV%20Addendum%202024.md#vast-20-and-vast-3x)
      - [VAST 4.x](https://github.com/InteractiveAdvertisingBureau/vast/blob/master/VAST%20CTV%20Addendum%202024.md#vast-4x-2)
- [VAST Macros Live Updates](https://github.com/InteractiveAdvertisingBureau/vast/blob/master/VAST%20CTV%20Addendum%202024.md#vast-macros-live-updates)
- [Icon Support for Privacy](https://github.com/InteractiveAdvertisingBureau/vast/blob/master/VAST%20CTV%20Addendum%202024.md#icon-support-for-privacy)
  - [VAST 2.0](https://github.com/InteractiveAdvertisingBureau/vast/blob/master/VAST%20CTV%20Addendum%202024.md#vast-20-2)
      - [Indicate DSA Regulation Support in VAST 3.0+](https://github.com/InteractiveAdvertisingBureau/vast/blob/master/VAST%20CTV%20Addendum%202024.md#indicate-dsa-regulation-support-in-vast-30)

## Executive Summary 

IAB Tech Lab’s Video Ad Serving Template (VAST) 2024 Addendum includes extensions and guidance to support the [Advanced TV initiative](https://iabtechlab.com/standards/advanced-tv/). This addendum is intended to be used with existing VAST specifications. It offers non-breaking additions to VAST 2 and 3, while also indicating full feature support in VAST 4. The key update in this addendum enables consistent placement for registered ad IDs in all versions of VAST. Other updates support Open Measurement, interactive ads, and mezzanine files for high resolution environments. 

A common understanding of ad creative identifiers in the video supply chain has been determined a critical building block to advance video advertising. By leveraging established Ad Registries, and providing support for already existing registered ad IDs, the market can more quickly unlock value in cross-media measurement and brand feature requirements. A vital component of this initiative is standardizing use of this ad creative ID in VAST. 

VAST dominates the market for video ad serving in digital markets, but multiple versions are in use. Versions older than v4.x lack that standardization for including registered ad IDs. This addendum outlines an extension to match the <UniversalAdId> field added to VAST 4.0 to support ad registration. In addition, guidance and extensions for the <AdVerification>, <InteractiveCreativeFile>, and <Mezzanine> fields introduced in VAST 4.0 are also included to enable key features in earlier versions for Open Measurement integration, SIMID support for interactive ads, and higher resolution files for large screen devices, respectively. 

To improve support for the features listed above, any company working with VAST should identify where updates in this addendum might impact their ad platforms, software, user interfaces, or any system integrations and implement updates where needed. In addition, some of the technical updates might require a shift in workflow among certain staff roles. Any new hire or partner onboarding training and documentation should be evaluated and updated to account for needed changes. For example, supporting the <UniversalAdId> field may require an interface update and training or documentation for staff responsible for registering ad creative and providing the ID in that field. 

The extensions and guidance provided in this addendum offers support for vital features needed in the video supply chain for the evolving marketplace of Advanced TV. However, implementation across the supply chain is required before the proposed benefits can begin to be achieved. Take the steps in your company to make updates and encourage your partners to do the same. A concerted effort by brands, agencies, ad platforms and publishers to implement updates will lay a foundation for innovation and new revenue opportunities in video advertising. 

### Audience 

Any business that works with VAST tags, both on the sending and receiving side of a video ad exchange, needs to use this addendum to implement critical updates as part of a market-wide initiative to advance advertising in digital video and CTV. 

#### Platform Recipients of VAST Tags 

Video player, server-side ad insertion (SSAI) vendors, and ad platform developers that program software to parse and execute VAST tags need to account for the extensions outlined in this addendum. The most critical update is for registered ad id support. Upgrades to recognize and parse the <UniversalAdId> extension in VAST 2.0-3.x and the designated <UniversalAdId> field in VAST 4.x will help improve ad identification for ad decisioning use cases. In addition, developers should also integrate with ad registries to validate the values supplied. Other updates support Open Measurement, interactive video creative using SIMID, and mezzanine files for higher resolution screens. 

#### VAST Tag Distributors 

Developers responsible for VAST tag generation need to update software to incorporate support for the extensions outlined in this addendum. The most critical update is for the “UniversalAdId” extension. This update also involves alerting account representatives or other staff or partners on corporate policy and workflow for registering ad creative and obtaining a valid ID. However, until that needed process is in place, tag generation with a default value of “unknown” will meet critical requirements for supporting this feature. Similar processes for other extensions defined in this addendum might also be required, but at minimum, incorporating support for generating a tag with the extensions defined will lay the groundwork for including those additional details when the company is ready to supply them. 

## Registered Ad Creative IDs 

Ad registration involves filing an ad with a regional ad registration authority such as AD-ID in the US and ARPP in France. Once filed, a unique ID is generated. This ID can be included as metadata for the ad as it moves through the video ad supply chain and used to identify ad ownership. 

Ad registration simplifies ad campaign use cases such as: 

- Frequency capping 
- Competitive separation 
- Cross-platform measurement 
- Creative reconciliation 

In fact, the more complex the video supply chain becomes, the more difficult ad decisioning and measurement become without ad registration and the use of a persistent identifier for the ad. 

Tech Lab has also defined the Ad Creative ID Framework (ACIF) that lists participating ad registries, their URLs, and instructions for ad verification. Upon release, the industry can find listed ad registries at [https://tools.iabtechlab.com/adoption/](https://tools.iabtechlab.com/adoption/). Filing ad creative with the registration authority for a given region will enable any ad platform working with these registries to validate an ad and use the associated metadata as part of its ad decisioning, placement, measurement, or other relevant algorithms. 

### ```<UniversalAdId>``` 

VAST 4.0 introduced the <UniversalAdId> field to support ad registration IDs. However, earlier versions of VAST still dominate the market today and lack standardization for supplying registered ad IDs. This addendum provides guidance on supporting registered ad IDs in all versions of VAST. 

### Implementation 

To support the use of a registered ID in all versions of VAST, an extension of type=UniversalAdId should be used in VAST 2.0 and 3.x tags. VAST 4.x tags can use the existing <UniversalAdId> node to supply registered ad IDs. 

NOTE: The UniversalAdId extension in VAST 2.0 and 3.x and the existing <UniversalAdId> node in VAST 4.x is strongly recommended in the VAST tag. If the ad is not registered, a value of “unknown” may be supplied. Otherwise, the ID value provided should be a unique ID generated by the ad registry indicated by the idRegistry attribute. 

Supplying the UniversalAdId, whether the value is an ID generated by an ad registry or a value of “unknown,” will help ad servers track the adoption of ad registration support. 
 
#### VAST 2.0

The ```<InLine>``` node in VAST 2.0 and VAST 3.x includes a sub-node for ```<Extensions>```. Add an ```<Extension>``` under this node of ```type=”UniversalAdId”```. 

|Nested node |	Attribute |	Value |
|---|---|---|
|VAST/Ad/InLine/Extensions/**Extension**| 	|	<UniversalAdId>| 
|	  |type |	“UniversalAdId”| 
|VAST/Ad/InLine/Extensions/Extension/**UniversalAdId**|  | The registered ID or “unknown” if the ad is not registered |
|	  |idRegistry |	The URL (root domain) of the company that maintains the supplied ID| 
|  	|creativeId* |	The value of the “id” attribute for the ```<Creative>``` node nested under VAST/Ad/InLine/Creatives/Creative that should be associated with the Universal Ad ID provided in this extension. This is only necessary when more than one creative is provided in the VAST tag. If no value is provided, the supplied Universal Ad ID will be associated with the only or first creative included. |

*This attribute is included for the extension but is not needed in VAST 3.x or 4.x standard implementations. 

##### Example: AD-ID 

```javascript
...
<Extensions> 
    <Extension type=”UniversalAdId”>
      <UniversalAdId 
          idRegistry=”ad-id.org”
          creativeId=”creative-campaign-spring24”> C
          NPA0484000H 
      </UniversalAdId>
    </Extension> 
</Extensions>
... 
 ```

#### VAST 3.x 
The ```<Creative>``` node in VAST 3.x includes a sub-node for ```<CreativeExtensions>``` (plural). Add a ```<CreativeExtension>``` (singular) under this node of ```type=”UniversalAdId”```. 

|Nested node |	Attribute |	Value |
|---|---|---|
|VAST/Ad/InLine/Creatives/Creative/CreativeExtensions/**CreativeExtension**| 		|<UniversalAdId>| 
|	|type |	“UniversalAdId”| 
|.../CreativeExtension/**UniversalAdId**|  	|The registered ID or “unknown” if the ad is not registered| 
|	|idRegistry |	The URL (root domain) of the company that maintains the supplied ID|

##### Example: ARPP 

```javacript
...
<Creatives><Creative>
<CreativeExtensions> 
    <CreativeExtension type=”UniversalAdId”>
      <UniversalAdId 
          idRegistry=”pub-id.fr”> 
          AAA/BBBB123/030
      </UniversalAdId>
    </CreativeExtension> 
</CreativeExtensions>
</Creative></Creatives>
...
```

#### VAST 4.x 

Simply use the ```<UniversalAdId>``` element included as part of the VAST 4.x spec for each ad creative provided in a VAST response. 
 
## Open Measurement Support 

Tech Lab’s [Open Measurement SDK](https://iabtechlab.com/standards/open-measurement-sdk/) offers code and implementation guidance for third-party integration to verify ad impressions in native apps and web video. 

The following documentation outlines how to incorporate the ```<AdVerification>``` node in all versions of VAST to support OM SDK implementation: 

- Campaign Execution Section > Video Creative: In [Web Video Onboarding Guide for Integrators](https://compliance.iabtechnologylab.com/docs/WebVideo/Onboarding%2BGuide%2Bfor%2BIntegrators.pdf) 
- Campaign Execution Section > Video Creative: In [OMSDK Native-App Onboarding Guide](https://compliance.iabtechnologylab.com/omsdk-demo-files/docs/Open+Measurement+SDK+Onboarding_version_1.4.pdf) 

## Interactive Video Support 

The demand for interactive ad units in web video and CTV is on the rise. Without standardization, interactive ad support requires coordination between creative developers and video player developers on the technical code to use for executing the ad. 

In 2008, Tech Lab provided the Video Player-Ad Interface Design (VPAID), which became widely adopted. However, the standard allowed for direct interaction with the player and could disrupt player operation. It also included both measurement and interactive capabilities. The measurement capabilities confused third party verification with tracking interactive events. 

Video player developers needed to replace VPAID with a more secure option that handled only interaction and event tracking while third party measurement could be handled separately with Tech Lab’s Open Measurement solution. 

### Secure Interactive Media Interface Definition (SIMID)

In 2019, Tech Lab released [SIMID](https://iabtechlab.com/standards/simid/), a more secure solution for ad interaction and event tracking. 

At the same time, [VAST 4.2](https://iabtechlab.com/standards/vast/) was released to support SIMID and deprecate VPAID. 

SIMID is already supported in most web video players, but is only supported for creative delivered with the ```<InteractiveCreativeFile>``` node introduced in VAST 4.0 and specifically recommended as the API framework in VAST 4.2. Support in CTV player apps is also growing, but ad responses need to provide SIMID-compliant media files in a standard way to enable growth in interactive TV beyond web video. 

### ```<InteractiveCreativeFile>``` 

VAST 4.0 introduced a node for ```<InteractiveCreativeFile>``` to separate executable code from the ad creative to enable a smoother ad experience, placing the interactive code in an environment where it could be executed and ignoring supplied code when execution is not possible. VAST 4.2 deprecated VPAID as a recommended interactive API in favor of SIMID. 

#### VAST 2.0 

To supply a SIMID-compliant ad unit in VAST versions 2.0 an extension must be provided using the ```<InteractiveCreativeFile>``` scheme originally introduced in VAST 4.0. 

|Nested node |	Attribute |	Value |
|---|---|---|
|VAST/Ad/InLine/Extensions/**Extension**|  |  |		
|	|type |	“InteractiveCreativeFile” |
|...Extension/**InteractiveCreativeFile**| 		|Includes a direct URL or inline data URI for the SIMID script. |
|	|type |	“text/html” |
|	|apiFramework |	“SIMID” |
|	|variableDuration |	Boolean value. Enter “true” if user-initiated interaction extends the duration of the video. |
|	|mediaFileId* |	The value of the “id” attribute for the relevant ```<MediaFile>``` node nested under VAST/Ad/InLine/Creatives/Creative/MediaFiles/MediaFile. This is only necessary when more than one creative is provided in the VAST tag. If no value is provided, the ```<InteractiveCreativeFile>``` in this extension will be associated with the only or first ```<MediaFile>``` under the only or first ```<Creative>``` provided. |
|InteractiveCreativeFile/**HTMLResource**| 		|HTML code snippet of reasonable size (within a CDATA block) |
|InteractiveCreativeFile/**AdParameters**| 		|Data object that communicates variables to the creative file for initialization. |
|	|xmlEncoded |	Identifies whether the ad parameters are XML encoded. |

*This attribute is included for the extension but is not needed in VAST 3.x or 4.x standard implementations. 

##### Example 1: Provide URL or Data URI 

```javascript
... 
<Extensions>
  <Extension type="InteractiveCreativeFile"> 
    <InteractiveCreativeFile
      type=”text/html”
      apiFramwork=”SIMID”
      variableDuration=”true”
      mediaFileId=”my-media-file_12345678”>
      <![CDATA[https://adserver.com/ads/creative.html]]>
      <AdParameters></AdParameters> 
    </InteractiveCreativeFile>
 </Extension> 
</Extensions> 
...
```

##### Example 2: Provide HTML Code 

```javascript
... 
<Extensions>
  <Extension type="InteractiveCreativeFile"> 
    <InteractiveCreativeFile
      type=”text/html”
      apiFramwork=”SIMID”
      variableDuration=”true”
      mediaFileId=”my-media-file_12345678”>
      <HTMLResource> 
        <![CDATA[
            <!DOCTYPE html> 
            <html> 
            <head>
              <script> /* Scripting */ </script> 
            </head>
              <body><!— Creative UI —></body> 
            </html>
          ]]> 
        <HTMLResource> 
        <AdParameters></AdParameters>
      </InteractiveCreativeFile> 
  </Extension>
</Extensions>
...
```

#### VAST 3.x 

To supply a SIMID-compliant ad unit in VAST version 3.x, add the ```<InteractiveCreativeFile>``` originally introduced in VAST 4.0 under the ```<CreativeExtension>``` node. 

|Nested node |	Attribute |	Value |
|---|---|---|
|.../Creatives/Creative/CreativeExtensions/**CreativeExtension**|  |  |		
|	|type |	“InteractiveCreativeFile” |
|...CreativeExtension/**InteractiveCreativeFile**| 		|Includes a direct URL or inline data URI for the SIMID script. |
|	|type |	“text/html” |
|	|apiFramework |	“SIMID” |
|	|variableDuration |	Boolean value. Enter “true” if user-initiated interaction extends the duration of the video. |
|InteractiveCreativeFile/**HTMLResource**| 		|HTML code snippet of reasonable size (within a CDATA block)| 
|InteractiveCreativeFile/**AdParameters**| 		|Data object that communicates variables to the creative file for initialization. |
|  |xmlEncoded |	Identifies whether the ad parameters are XML encoded. |

##### Example using ```<HTMLResource>``` 

```javascript
... 
<CreativeExtensions>
  <CreativeExtension type="InteractiveCreativeFile"> 
    <InteractiveCreativeFile
        type=”text/html”
        apiFramwork=”SIMID”
        variableDuration=”true”>
        <HTMLResource> 
          <![CDATA[
              <!DOCTYPE html> 
              <html>
              <head> 
                <script> /* Scripting */ </script>
              </head> 
                <body><!— Creative UI —></body>
              </html> 
            ]]>
          <HTMLResource> 
          <AdParameters></AdParameters>
        </InteractiveCreativeFile> 
    </CreativeExtension>
</CreativeExtensions>
...
```

#### VAST 4.x 

The ```<InteractiveCreativeFile>``` introduced in this addendum includes two features lacking in VAST 4.x: ```<HTMLResource>``` and ```<AdParameters>```. The ```<HTMLResource>``` node enables placing an HTML code snippet (of reasonable size) directly within the node wrapped in a CDATA block. The ```<AdParameters>``` node allows for a data object that provides variables to the creative file for use in initialization. 
Implementing SIMID in VAST 4.x can be done in one of two ways. The first is to simply use the existing ```<InteractiveCreativeFile>``` node in [VAST 4.x](https://iabtechlab.com/standards/vast/) with the attribute value apiFramework=”SIMID.” The other option is to follow the instructions for VAST 3.x using the new structure provided in this addendum. The ```<InteractiveCreativeFile>``` extension can be placed under the ```<CreativeExtension>``` node as described for VAST 3.x. 

## High Resolution Support 

As the digital video landscape expands to include ultra high resolution screens in CTV, cross platform ad placement needs the option for including the high resolution ad creative suited to those environments. 

### ```<Mezzanine>``` 

For VAST delivery in web video, the resolution properties of the supplied media file is usually sufficient. However, the increasingly high resolutions in large screen TVs require that a VAST response distinguish a media file encoded for high-resolution environments separately from media files intended for web video. 

VAST 4.0 introduced a node for including a mezzanine file, which is a high resolution file intended for large screen TVs. Supplying a mezzanine file offers server-side ad insertion (SSAI) vendors a file that can be transcoded to optimum parameters for the environments where they serve video ads. 

#### VAST 2.0 and VAST 3.x 

To supply a mezzanine file in VAST versions 2.0 and 3.x, VAST tags need to include an ```<Extension>``` node (or ```<CreativeExtension>``` node for VAST 3.x) with type=”Mezzanine” using the ```<Mezzanine>``` scheme described in VAST 4.0 and later. In VAST 2.0, in 
 
|Nested node |	Attribute |	Value |
|---|---|---|
|VAST version=”2.0”/Ad/InLine/Extensions/**Extension** VAST version=”3.0”/Ad/InLine/Creatives/Creative/CreativeExtensions/**CreativeExtension**| |	|	
|	|type |	“Mezzanine” |
|...Extension/Mezzanine| 		|a CDATA wrapped URI for the high resolution mezzanine file| 
|	|delivery |	(required) Either progressive for progressive download protocols (such as HTTP) or streaming for streaming protocols. |
|	|type |(required) MIME type for the file container. Popular MIME types include, but are not limited to “video/mp4” for MP4, “audio/mpeg” and “audio/aac” for audio ads. |
|	|width |	(required) The native width of the video file, in pixels.| 
|	|height |	(required) The native height of the video file, in pixels. |
|	|codec |	The codec used to encode the file which can take values as specified by RFC 4281: [http://tools.ietf.org/html/rfc4281](http://tools.ietf.org/html/rfc4281). |
| |id |	An identifier for the media file. |
|	|fileSize |	Optional field that helps eliminate the need to calculate the size based on bitrate and duration. |
|	|mediaType |	Type of media file (3D / 360 / etc). Default value = 2D |
|	|mediaFileId* |	The value of the “id” attribute for the relevant ```<MediaFile>``` node nested under VAST/Ad/InLine/Creatives/ Creative/MediaFiles/MediaFile. This is only necessary when more than one creative is provided in the VAST tag. If no value is provided, the ```<InteractiveCreativeFile>``` in this extension will be associated with the only (or first) ```<MediaFile>``` under the only (or first) ```<Creative>``` provided.| 

*This attribute is included for the extension but is not needed in VAST 3.x or 4.x standard implementations. 

##### Example: VAST 2.0* Mezzanine 

``` javascript
... 
<Extensions>
  <Extension type="Mezzanine"> 
    <Mezzanine
      delivery=”streaming”
      type=”video/mp4”
      width=”7680”
      height=”4320”
      codec=”video/3gpp”
      id=”dsp-id-12345-8k”
      fileSize=”300MB”
      mediaType=”2D”
      mediaFileId=”my-media-file_12345678”>
      <![CDATA[https://creative-company.com/mezzanine.mp4]]> 
    </Mezzanine>
  </Extension> 
</Extensions> 
...
```

*For VAST 3.x implementation, place the ```<Mezzanine>``` under: ```...<CreativeExtensions><CreativeExtension type=”Mezzanine”>``` 

#### VAST 4.x 

Simply use the existing ```<Mezzanine>``` node as described in the [relevant specification](https://iabtechlab.com/standards/vast/). 

## VAST Macros Live Updates 

Macros are placeholders in tracking URLs that can be replaced with values before sending. Up until VAST 4.3 macros were defined within the specification. Updates were included and a VAST-compliant sell-side ad platform for a given version would be expected to support as many of the listed macro values as possible. 

As of VAST 4.3, macro values definitions were removed from the specification in favor of a [GitHub repository](https://interactiveadvertisingbureau.github.io/vast/vast4macros/vast4-macros-latest.html) where macros could be updated independent of VAST. New macro values might be proposed to support non-VAST releases, such as changes to programmatic or privacy standards. 

While support for the latest macros is not required, partner companies may request or require support for select macros. Ad platform developers responsible for sending tracking URLs provided in a VAST tag should consider updating to support as many listed macro values as possible. 

## Icon Support for Privacy 

The ```<Icon>``` node was introduced in VAST 3.0 to support programs that require the video platform to make certain disclosures available to the viewer. The [AdChoices program](https://youradchoices.com/about) developed by the Digital Advertising Alliance (DAA) is an example of a program that uses the ```<Icon>``` node to surface details about the ad and offer interaction capabilities to the user for making certain choices about the ad. 

The Digital Services Act (DSA) is another program that outlines transparency obligations in relation to advertising that apply to “Online Platforms” as defined by the DSA. Article 26 of the DSA requires Online Platforms to provide users with real-time access to certain elements of information about any ad shown to them on an Online Platform, including: 

- That the ad is indeed an ad; 
- The identity of the advertiser; 
- The identity of the party that financed the ad, if it is different from the advertiser; 
- Information about the “main parameters” used to select the ad presented to the end-user; 
- Where applicable, information about any means users may have at their disposal to change those main parameters. 

The ```<Icon>``` node in VAST 3.0 and above is only available for linear media (video). VAST nonlinear (overlay) and companion ads (display ad placed outside the player), don’t need the ```<Icon>``` node because the interaction offered in ```<Icon>``` for video ads is already available in the ```<NonLinear>``` and ```<Companion>``` nodes. 

### VAST 2.0 

Since ```<Icons>``` were introduced in VAST 3.0 and maintained up to the latest version, VAST 2.0 is the only version that needs an extension. To include an ```<Icon>``` in VAST 2.0, add an extension and follow the structure outlined in VAST 3.0 and above. 

|Nested node |	Attribute |	Value |
|---|---|---|
|VAST version=”2.0”/Ad/InLine/Extensions/**Extension**| |	|	
|	|type |	“Icon”| 
|...Extension/**Icon**| |	|	
|	|program |	The program represented in the icon (e.g. "AdChoices"). |
|	|regs* |	To indicate if the program is used to comply with specific regulation. Currently 0 for n/a or 1 for DSA. |
|	|width |	Pixel width of the icon asset |
|	|height |	Pixel height of the icon asset. |
|	|xPosition |	The x-coordinate of the top, left corner of the icon asset relative to the ad display area. Values of "left" or "right" also accepted and indicate the leftmost or rightmost available position for the icon asset. |
|	|yPosition |	The y-coordinate of the top left corner of the icon asset relative to the ad display area; values of "top" or "bottom" also accepted and indicate the topmost or bottommost available position for the icon asset. |
|	|duration |	The duration the icon should be displayed unless clicked or ad is finished playing; provided in the format HH:MM:SS.mmm or HH:MM:SS where .mmm is milliseconds and optional. |
|	|offset |	The time of delay from when the associated linear creative begins playing to when the icon should be displayed; provided in the format HH:MM:SS.mmm or HH:MM:SS. |
|	|apiFramework |	Identifies the API needed to execute the icon resource file if applicable. |
|	|pxratio |	The pixel ratio for which the icon creative is intended. The pixel ratio is the ratio of physical pixels on the device to the device-independent pixels. An ad intended for display on a device with a pixel ratio that is twice that of a standard 1:1 pixel ratio would use the value "2." Default value is "1." |
|Icon/**IconClicks**| 		|Container for ```<IconClickThrough>``` and ```<IconClickTracking>```| 
|Icon/IconClicks/**IconClickThrough**| 		|A URI to the industry program page opened when a viewer clicks the icon. |
|Icon/IconClicks/**IconClickTracking**| 		|A URI to the tracking resource file to be called to track click activity within the icon. |
|	|id |	An id for the click to be measured.| 
|Icon/**IconViewTracking**| 		|A URI for the tracking resource file to be called when the icon creative is displayed. |

*The “regs” attribute is new as of this addendum and was not included in any of the VAST versions. Please see “Indicate DSA Regulation Support in VAST 3.0+” following this table. 

#### Indicate DSA Regulation Support in VAST 3.0+ 

The ```<Icon>``` introduced in this addendum includes an additional attribute lacking in VAST 3.0+ for “regs.” See highlighted row for the VAST 2.0 implementation on page 19. The “regs” attribute indicates whether the icon is being used to comply with specific regulations or for self regulatory framework purposes. As an example, the AdChoices Icon may be used for display and control over interest based advertising (regs=”0”) OR it may be used for specific compliance with the DSA (regs=”1”). 

Standard implementations for VAST 3.0 and above will not acknowledge the “regs” attribute or the value assigned. Work with your partners to encourage adoption of this Addendum and/or to request that they add support for the “regs” attribute. 
