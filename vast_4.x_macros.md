# VAST 4.x Macros

This document contains the latest/current list of the "official" macros defined by the IAB Tech Lab Digital Video Technical Working Group. The purpose of this registry is to allow new macros to be added to the supported list without requiring a new version of VAST to be released. Support for newly listed macros is optional, but publishing them here allows faster adoption across the video advertising ecosystem.

## Process

1. New macros approved by the IAB Tech Lab Digital Video Technical Working Group are added to **New Macros**.
2. When the next version of VAST is released, those macros are included in the official set of macros for that version and moved to the relevant category.

> **Note:** While these macros were introduced in VAST 4, they can be used with all versions of VAST. This use is encouraged where supported because it can improve transparency and workflows across the video advertising ecosystem.

## Table of Contents

1. [New Macros](#1-new-macros)
2. [Generic Macros](#2-generic-macros)
3. [Ad Break Info](#3-ad-break-info)
4. [Client Info](#4-client-info)
5. [Publisher Info](#5-publisher-info)
6. [Capabilities Info](#6-capabilities-info)
7. [Player State Info](#7-player-state-info)
8. [Click Info](#8-click-info)
9. [Error Info](#9-error-info)
10. [Verification Info](#10-verification-info)
11. [Regulation Info](#11-regulation-info)

## 1. New Macros

### 1.1 `[STOREID]`

- **Data Type:** `string`
- **Introduced In:** `4.x`
- **Support:** Optional
- **Contexts:** All tracking pixels; VAST request URIs
- **Description:** For app ads, a platform-specific app store ID such as an iTunes store ID. Could be the same as app bundle on some platforms.
- **Example:** iOS/tvOS: `886445756`; Android: `com.tubitv`; Roku: `41468`

### 1.2 `[STOREURL]`

- **Data Type:** `string`
- **Introduced In:** `4.x`
- **Support:** Optional
- **Contexts:** All tracking pixels; VAST request URIs
- **Description:** For app ads, the app store URL for the installed app.
- **Example:** iOS/tvOS: `https://apps.apple.com/us/app/tubi-watch-movies-tv-shows/id886445756`; Android: `com.tubitv`; Roku: `41468`

### 1.3 `[PLAYBACKMETHODS]`

- **Data Type:** `integer`
- **Introduced In:** `4.x`
- **Support:** Optional
- **Contexts:** All tracking pixels; VAST request URIs
- **Description:** The value indicating attributes of the inventory such as auto-play and click-to-play activity.
- **Possible Values:**
  - `1` — Initiates on Page Load with Sound On
  - `2` — Initiates on Page Load with Sound Off by Default
  - `3` — Initiates on Click with Sound On
  - `4` — Initiates on Mouse-Over with Sound On
  - `5` — Initiates on Entering Viewport with Sound On
  - `6` — Initiates on Entering Viewport with Sound Off by Default
  - `7` — Indicates content is playing back-to-back without any user interaction
- **Example:** `1`

### 1.4 `[CONTENTCAT]`

- **Data Type:** `Array<string>`
- **Introduced In:** `4.x`
- **Support:** Optional
- **Contexts:** VAST request URIs
- **Format:** `IDVALUE`
- **Description:** List of IDs of the categories relevant to the content the ad is being requested for. The IDs are from the [IAB Tech Lab Content Taxonomy 2.x](https://iabtechlab.com/standards/content-taxonomy/).
- **Example:** `8,16,1001,1021,1026,1068,1215` to reflect content matching Automotive/Convertible, Auto Type/Performance Cars, Editorial/Professional, Review, Mixed, English, and Professionally Produced.

### 1.5 `[GPPSTRING]`

- **Data Type:** `string`
- **Introduced In:** `4.x`
- **Support:** Optional
- **Contexts:** All tracking pixels; VAST request URIs
- **Format:** Encoded
- **Description:** GPP String from the [Global Privacy Platform](https://github.com/InteractiveAdvertisingBureau/Global-Privacy-Platform/blob/main/Core/Consent%20String%20Specification.md).
- **Example:** `DBABMA~CPXxRfAPXxRfAAfKABENB-CgAAAAAAAAAAYgAAAAAAAA`

### 1.6 `[GPPSECTIONID]`

- **Data Type:** `Array<integer>`
- **Introduced In:** `4.x`
- **Support:** Optional
- **Contexts:** All tracking pixels; VAST request URIs
- **Description:** Array of the Section ID(s) of the GPP string from `GPPSTRING` which should be applied. See the [GPP Section Information](https://github.com/InteractiveAdvertisingBureau/Global-Privacy-Platform/blob/main/Sections/Section%20Information.md). GPP Section 3 (Header) and 4 (Signal Integrity) do not need to be included.
- **Possible Values:** `1` EU TCF v1 (deprecated); `2` EU TCF v2; `3` GPP Header; `4` GPP Signal Integrity; `5` Canadian TCF; `6` USPrivacy String Unencoded Format; `7` US National; `8` US California; `9` US Virginia; `10` US Colorado; `11` US Utah; `12` US Connecticut.
- **Example:** `5,7`

### 1.7 `[DSAREQUIRED]`

- **Data Type:** `integer`
- **Introduced In:** Next VAST release
- **Support:** Optional
- **Contexts:** VAST request URIs
- **Description:** Flag to indicate if DSA information should be made available. This signals if the bid request belongs to an Online Platform/VLOP such that a buyer should respond with DSA Transparency information.
- **Possible Values:**
  - `0` — Not required
  - `1` — Supported; bid responses with or without DSA object will be accepted
  - `2` — Required; bid responses without DSA object will not be accepted
  - `3` — Required; bid responses without DSA object will not be accepted; Publisher is an Online Platform
- **Example:** `1`

### 1.8 `[DSAPARAMS]`

- **Data Type:** `Array<integer>`
- **Introduced In:** Next VAST release
- **Support:** Optional
- **Contexts:** VAST request URIs
- **Description:** Array of user parameters applied by the platform or sell-side. See the IAB Europe DSA Transparency Implementation Guidelines for definitions.
- **Possible Values:** `1` Profiling; `2` Basic advertising; `3` Precise geolocation.
- **Example:** `1_2`

### 1.9 `[DSAPUBRENDER]`

- **Data Type:** `integer`
- **Introduced In:** Next VAST release
- **Support:** Optional
- **Contexts:** VAST request URIs
- **Description:** Signals if the publisher is able to and intends to render an icon or other appropriate user-facing symbol and display the DSA transparency info to the end user.
- **Possible Values:** `1` Publisher can't render; `2` Publisher could render depending on adrender; `3` Publisher will render.
- **Example:** `1`

## 2. Generic Macros

### 2.1 `[TIMESTAMP]`

- **Data Type:** `string`
- **Introduced In:** `4.0`
- **Support:** Required
- **Contexts:** All tracking pixels; VAST request URIs
- **Format:** `{YYYY-MM-DD}T{HH:MM:SS}.{mmm}{+/-}{ZONEOFFSET}`
- **Description:** The date and time at which the URI using this macro is accessed. Used wherever a timestamp is needed; the macro is replaced with the date and time using ISO 8601 formatting. To add milliseconds, use `.mmm` at the end of the time and before any time-zone indicator.
- **Example:** January 17, 2016 at 8:15:07 and 127 milliseconds, Eastern Time: unencoded `2016-01-17T8:15:07.127-05`; encoded `2016-01-17T8%3A15%3A07.127-05`

### 2.2 `[CACHEBUSTING]`

- **Data Type:** `integer`
- **Introduced In:** `3.0`
- **Support:** Required
- **Contexts:** All tracking pixels; VAST request URIs
- **Description:** Random 8-digit integer.
- **Example:** `12345678`

## 3. Ad Break Info

### 3.1 `[CONTENTPLAYHEAD]`

- **Data Type:** `string`
- **Introduced In:** `3.0`
- **Support:** Deprecated in VAST 4.1; replaced by `[ADPLAYHEAD]` and `[MEDIAPLAYHEAD]`
- **Contexts:** All tracking pixels; VAST request URIs
- **Format:** `{HH:MM:SS.mmm}`
- **Description:** The current time offset of the video or audio content.
- **Example:** Unencoded `00:05:21.123`; encoded `00%3A05%3A21.123`

### 3.2 `[MEDIAPLAYHEAD]`

- **Data Type:** `string`
- **Introduced In:** `4.1`
- **Support:** Optional
- **Contexts:** All tracking pixels; VAST request URIs
- **Format:** `{HH:MM:SS.mmm}`
- **Description:** Playhead position of the video or audio content, not the ad creative. Not relevant for out-stream ads.
- **Example:** Unencoded `00:05:21.123`; encoded `00%3A05%3A21.123`

### 3.3 `[BREAKPOSITION]`

- **Data Type:** `integer`
- **Introduced In:** `4.1`
- **Support:** Optional
- **Contexts:** All tracking pixels; VAST request URIs
- **Description:** Indicates the position of the ad break within the underlying video/audio content that the ad is playing in.
- **Possible Values:** `1` pre-roll; `2` mid-roll; `3` post-roll; `4` standalone; `0` none of the above/other.
- **Example:** `2`

### 3.4 `[BLOCKEDADCATEGORIES]`

- **Data Type:** `Array<string>`
- **Introduced In:** `4.1`
- **Support:** Optional
- **Contexts:** VAST request URIs
- **Format:** `IAB{N}-{N}`
- **Description:** List of blocked ad categories using values specified in the AdCOM Content Categories list. Values must be taken from the `BlockedCategory` element in Wrapper ads.
- **Example:** `IAB1-6,IAB1-7`

### 3.5 `[ADCATEGORIES]`

- **Data Type:** `Array<string>`
- **Introduced In:** `4.1`
- **Support:** Optional
- **Contexts:** VAST request URIs
- **Format:** `IAB{N}-{N}`
- **Description:** List of desired ad categories using values specified in the AdCOM Content Categories list.
- **Example:** `IAB1-6,IAB1-7`

### 3.6 `[ADCOUNT]`

- **Data Type:** `integer`
- **Introduced In:** `4.1`
- **Support:** Optional
- **Contexts:** All tracking pixels; VAST request URIs
- **Description:** For VAST requests, the number of ads expected by the player. For tracking pixels, the number of `InLine` ads played within the current chain or tree of VASTs, including the executing one. The value starts at 1 and increments for each video played, whether from a Pod, buffet, nested Pod, etc. In standard non-Pod VAST responses with a single `InLine` ad, the value is always 1.
- **Example:** `2`

### 3.7 `[TRANSACTIONID]`

- **Data Type:** `string`
- **Introduced In:** `4.1`
- **Support:** Optional
- **Contexts:** All tracking pixels; VAST request URIs
- **Format:** UUID
- **Description:** Identifier used to correlate a chain of ad requests from the origination/supply end. Generated by the initiating player and propagated unchanged through subsequent requests. It is unique to the initial request, even where multiple ads are returned.
- **Example:** `123e4567-e89b-12d3-a456-426655440000`

### 3.8 `[PLACEMENTTYPE]`

- **Data Type:** `integer`
- **Introduced In:** `4.1`
- **Support:** Optional
- **Contexts:** All tracking pixels; VAST request URIs
- **Description:** Indicates the type of ad placement. Refer to the Placement Subtypes - Video list in AdCOM.
- **Example:** `1`

### 3.9 `[ADTYPE]`

- **Data Type:** `string`
- **Introduced In:** `4.1`
- **Support:** Optional
- **Contexts:** All tracking pixels; VAST request URIs
- **Description:** Indicates whether the ad’s intended use case was video, audio, or hybrid, as defined in the `adType` attribute of the VAST `Ad` element.
- **Example:** `video`

### 3.10 `[UNIVERSALADID]`

- **Data Type:** `Array<string>`
- **Introduced In:** `4.1`
- **Support:** Optional
- **Contexts:** All tracking pixels
- **Format:** `{registryID}{space}{idvalue}`
- **Description:** Indicates the creative using `UniversalAdId` values. Multiple Universal Ad IDs can be supported by separating them with commas.
- **Example:** Unencoded `ad-id.org CNPA0484000H`; encoded `ad-id.org%20CNPA0484000H`

### 3.11 `[BREAKMAXDURATION]`

- **Data Type:** `integer`
- **Introduced In:** `4.2`
- **Support:** Optional
- **Contexts:** All tracking pixels; VAST request URIs
- **Description:** Maximum length allowed for the ad break in seconds.
- **Example:** `30`

### 3.12 `[BREAKMAXADS]`

- **Data Type:** `integer`
- **Introduced In:** `4.2`
- **Support:** Optional
- **Contexts:** All tracking pixels; VAST request URIs
- **Description:** Maximum number of ads allowed in the ad break.
- **Example:** `2`

### 3.13 `[BREAKMINADLENGTH]`

- **Data Type:** `integer`
- **Introduced In:** `4.2`
- **Support:** Optional
- **Contexts:** All tracking pixels; VAST request URIs
- **Description:** Minimum length allowed for any individual ad in the ad break, in seconds.
- **Example:** `5`

### 3.14 `[BREAKMAXADLENGTH]`

- **Data Type:** `integer`
- **Introduced In:** `4.2`
- **Support:** Optional
- **Contexts:** All tracking pixels; VAST request URIs
- **Description:** Maximum length allowed for any individual ad in the ad break, in seconds.
- **Example:** `15`

## 4. Client Info

### 4.1 `[IFA]`

- **Data Type:** `string`
- **Introduced In:** `4.1`
- **Support:** Optional
- **Contexts:** All tracking pixels; VAST request URIs
- **Format:** UUID
- **Description:** Resettable advertising ID from a device-specific advertising ID scheme, such as Apple IDFA or Android Advertising ID, or based on IAB Tech Lab Guidelines for IFA on OTT platforms.
- **Example:** `123e4567-e89b-12d3-a456-426655440000`

### 4.2 `[IFATYPE]`

- **Data Type:** `string`
- **Introduced In:** `4.1`
- **Support:** Optional
- **Contexts:** All tracking pixels; VAST request URIs
- **Description:** String indicating the type of IFA included in `[IFA]`.
- **Example:** `1rida`

### 4.3 `[CLIENTUA]`

- **Data Type:** `string`
- **Introduced In:** `4.1`
- **Support:** Optional
- **Contexts:** All tracking pixels; VAST request URIs
- **Format:** `{player name}/{player version}{space}{plugin name}/{plugin version}`
- **Description:** Identifier of the player and VAST client used. If player name is unavailable, use `unknown`.
- **Example:** Unencoded `MyPlayer/7.1 MyPlayerVastPlugin/1.1.2`; encoded `MyPlayer%2F7.1%20MyPlayerVastPlugin%2F1.1.2`

### 4.4 `[SERVERUA]`

- **Data Type:** `string`
- **Introduced In:** `4.1`
- **Support:** Optional
- **Contexts:** All tracking pixels; VAST request URIs
- **Format:** `{service name}/{version} ({URL to vendor info})`
- **Description:** User-Agent of the server making the request on behalf of a client. Relevant when another device/server makes the request on behalf of that client. Implementations should identify the actual company/product rather than use a generic HTTP server name.
- **Example:** `MyServer/3.0 (+https://myserver.com/contact)`

### 4.5 `[DEVICEUA]`

- **Data Type:** `string`
- **Introduced In:** `4.1`
- **Support:** Optional
- **Contexts:** All tracking pixels; VAST request URIs
- **Description:** User-Agent of the device rendering the ad to the end user. Relevant when another device/server is making the request on behalf of that client.

### 4.6 `[SERVERSIDE]`

- **Data Type:** `integer`
- **Introduced In:** `4.1`
- **Support:** Optional
- **Contexts:** All tracking pixels; VAST request URIs
- **Description:** Indicates whether a URL is requested from a client device or server. The value may differ between the VAST request and tracking URLs. `0` is the default if the macro is missing.
- **Possible Values:** `0` client fires directly; `1` server fires on explicit client behalf; `2` server fires on behalf of another server/unknown party or on its own decision without an explicit client signal.
- **Example:** `1`

### 4.7 `[DEVICEIP]`

- **Data Type:** `string`
- **Introduced In:** `4.1`
- **Support:** Optional
- **Contexts:** All tracking pixels; VAST request URIs
- **Description:** IP address of the device rendering the ad to the end user. Relevant when another device/server makes the request on behalf of that client.
- **Example:** IPv6 unencoded `2001:0db8:85a3:0000:0000:8a2e:0370:7334`

### 4.8 `[LATLONG]`

- **Data Type:** `Array<float>(2)`
- **Introduced In:** `4.1`
- **Support:** Optional
- **Contexts:** All tracking pixels; VAST request URIs
- **Description:** Mobile-detected geolocation information of the end user; latitude and longitude separated by a comma.
- **Example:** `51.004703,3.754806`

## 5. Publisher Info

### 5.1 `[DOMAIN]`

- **Data Type:** `string`
- **Introduced In:** `4.1`
- **Support:** Optional
- **Contexts:** All tracking pixels; VAST request URIs
- **Description:** Domain of the top-level page where the end user will view the ad.
- **Example:** `www.mydomain.com`

### 5.2 `[PAGEURL]`

- **Data Type:** `string`
- **Introduced In:** `4.1`
- **Support:** Required if OM for Web is supported; otherwise Optional
- **Contexts:** All tracking pixels; VAST request URIs
- **Description:** Full URL of the top-level page where the end user will view the ad. Where required and applicable but unknown/unavailable, `-1` or `-2` must be set. When required and not applicable, `0` must be set.
- **Example:** `https://www.mydomain.com/article/page`

### 5.3 `[APPBUNDLE]`

- **Data Type:** `string`
- **Introduced In:** `4.1`
- **Support:** Required if OM for App is supported; otherwise Optional
- **Contexts:** All tracking pixels; VAST request URIs
- **Description:** For app ads, a platform-specific application identifier, bundle, or package name. It should not be an app-store ID.
- **Example:** `com.example.myapp`

## 6. Capabilities Info

### 6.1 `[VASTVERSIONS]`

- **Data Type:** `Array<integer>`
- **Introduced In:** `4.1`
- **Support:** Optional
- **Contexts:** VAST request URIs
- **Description:** List of VAST versions supported by the player. Values are defined in the AdCOM Creative Subtypes list.
- **Example:** `2,3,5,6,7,8,11`

### 6.2 `[APIFRAMEWORKS]`

- **Data Type:** `Array<integer>`
- **Introduced In:** `4.1`
- **Support:** Optional
- **Contexts:** VAST request URIs
- **Description:** List of frameworks supported by the player. Values are defined in the AdCOM API Frameworks list.
- **Example:** `2,7`

### 6.3 `[EXTENSIONS]`

- **Data Type:** `Array<string>`
- **Introduced In:** `4.1`
- **Support:** Optional
- **Contexts:** VAST request URIs
- **Description:** List of VAST `Extension` `type` attribute values supported by the player/client. Can indicate support for OMID AdVerifications, proprietary extensions, or future standardized extensions.
- **Example:** `AdVerifications,extensionA,extensionB`

### 6.4 `[VERIFICATIONVENDORS]`

- **Data Type:** `Array<string>`
- **Introduced In:** `4.1`
- **Support:** Optional
- **Contexts:** VAST request URIs
- **Description:** List of VAST Verification `vendor` attribute values supported by the player/client.
- **Example:** `moat.com-omid,ias.com-omid,doubleverify.com-omid`

### 6.5 `[OMIDPARTNER]`

- **Data Type:** `string`
- **Introduced In:** `4.1`
- **Support:** Required if OM is supported
- **Contexts:** All tracking pixels; VAST request URIs
- **Format:** `{partner name}/{partner version}`
- **Description:** Identifier of the OM SDK integration, matching the OMID Partner object's `name` and `versionString`. This value is important for communicating certification status. If partner name is unavailable, use `unknown`.
- **Example:** `MyIntegrationPartner/7.1`

### 6.6 `[MEDIAMIME]`

- **Data Type:** `Array<string>`
- **Introduced In:** `4.1`
- **Support:** Optional
- **Contexts:** VAST request URIs
- **Format:** `{type}/{subtype}`
- **Description:** List of media MIME types supported by the player.
- **Example:** `video/mp4,application/x-mpegURL`

### 6.7 `[PLAYERCAPABILITIES]`

- **Data Type:** `Array<string>`
- **Introduced In:** `4.1`
- **Support:** Optional
- **Contexts:** All tracking pixels; VAST request URIs
- **Description:** List of values describing player capabilities.
- **Possible Values:** `skip`, `mute`, `autoplay`, `mautoplay`, `fullscreen`, `icon`.

### 6.8 `[CLICKTYPE]`

- **Data Type:** `integer`
- **Introduced In:** `4.1`
- **Support:** Optional
- **Contexts:** All tracking pixels; VAST request URIs
- **Description:** Indicates the type of clickthrough supported by the player. Value `3` supersedes `2` when both a link and confirmation dialog are present.
- **Possible Values:** `0` not clickable; `1` clickable on full video area; `2` clickable only on associated button/link; `3` clickable with confirmation dialog.
- **Example:** `2`

## 7. Player State Info

### 7.1 `[PLAYERSTATE]`

- **Data Type:** `Array<string>`
- **Introduced In:** `4.1`
- **Support:** Optional
- **Contexts:** All tracking pixels
- **Description:** List of options indicating the current player state.
- **Possible Values:** `muted`, `fullscreen`.
- **Example:** `muted,fullscreen`

### 7.2 `[INVENTORYSTATE]`

- **Data Type:** `Array<string>`
- **Introduced In:** `4.1`
- **Support:** Optional
- **Contexts:** All tracking pixels; VAST request URIs
- **Description:** List of options indicating attributes of the inventory.
- **Possible Values:** `skippable`, `autoplayed`, `mautoplayed`, `optin`.
- **Example:** `autoplayed,fullscreen`

### 7.3 `[PLAYERSIZE]`

- **Data Type:** `Array<integer>`
- **Introduced In:** `4.1`
- **Support:** Optional
- **Contexts:** All tracking pixels; VAST request URIs
- **Description:** Integer width and height of the player, separated by a comma, measured in device-independent pixels.
- **Example:** `640,360`

### 7.4 `[ADPLAYHEAD]`

- **Data Type:** `string`
- **Introduced In:** `4.1`
- **Support:** Optional
- **Contexts:** All tracking pixels
- **Format:** `{HH:MM:SS.mmm}`
- **Description:** Media playhead position.
- **Example:** Unencoded `00:00:11.355`; encoded `00%3A00%3A11.355`

### 7.5 `[ASSETURI]`

- **Data Type:** `string`
- **Introduced In:** `3.0`
- **Support:** Optional
- **Contexts:** All tracking pixels
- **Description:** URI of the ad asset currently being played.
- **Example:** `https://myadserver.com/video.mp4`

### 7.6 `[CONTENTID]`

- **Data Type:** `string`
- **Introduced In:** `4.1`
- **Support:** Optional
- **Contexts:** All tracking pixels; VAST request URIs
- **Format:** `{registry_id}{space}{id_value}`
- **Description:** Publisher-specific content identifier for the content asset into which the ad is being loaded or inserted. Only applicable to in-stream ads. If no public registry is used, a domain name may be used as the registry identifier.
- **Example:** `my-domain.com my-video-123`

### 7.7 `[CONTENTURI]`

- **Data Type:** `string`
- **Introduced In:** `4.1`
- **Support:** Optional
- **Contexts:** All tracking pixels; VAST request URIs
- **Description:** URI of the main media content asset into which the ad is being loaded or inserted. Only applicable to in-stream ads.
- **Example:** `https://mycontentserver.com/video.mp4`

### 7.8 `[PODSEQUENCE]`

- **Data Type:** `integer`
- **Introduced In:** `4.1`
- **Support:** Optional
- **Contexts:** All tracking pixels
- **Description:** Value of the `sequence` attribute on the `Ad` currently playing, if provided.
- **Example:** `1`

### 7.9 `[ADSERVINGID]`

- **Data Type:** `string`
- **Introduced In:** `4.1`
- **Support:** Optional
- **Contexts:** All tracking pixels
- **Format:** `{AD SERVER NAME}-{UUID}`
- **Description:** Value of the `AdServingId` for the currently playing ad, as passed from the ad server.
- **Example:** `ServerName-47ed3bac-1768-4b9a-9d0e-0b92422ab066`

## 8. Click Info

### 8.1 `[CLICKPOS]`

- **Data Type:** `Array<number>(2)`
- **Introduced In:** `4.1`
- **Support:** Optional
- **Contexts:** `ClickTracking` tracking pixels
- **Description:** Coordinates of the click relative to the area defined by `[PLAYERSIZE]`, measured in CSS/device-independent pixels.
- **Example:** `315,204`

## 9. Error Info

### 9.1 `[ERRORCODE]`

- **Data Type:** `integer`
- **Introduced In:** `3.0`
- **Support:** Required
- **Contexts:** `Error` tracking pixels
- **Description:** VAST Error Code. Replaced with the applicable VAST error code when the associated error occurs; reserved for error tracking URIs.
- **Example:** `900`

## 10. Verification Info

### 10.1 `[REASON]`

- **Data Type:** `integer`
- **Introduced In:** `4.1`
- **Support:** Required
- **Contexts:** `verificationNotExecuted` tracking pixels
- **Description:** Reason code for not executing verification.
- **Example:** `1`

## 11. Regulation Info

### 11.1 `[LIMITADTRACKING]`

- **Data Type:** `integer`
- **Introduced In:** `4.1`
- **Support:** Required
- **Contexts:** All tracking pixels; VAST request URIs
- **Description:** Limit-ad-tracking setting of a device-specific advertising ID scheme. `1` indicates the user has opted for limited ad tracking; `0` indicates they have not.
- **Example:** `0`

### 11.2 `[REGULATIONS]`

- **Data Type:** `Array<string>`
- **Introduced In:** `4.1`
- **Support:** Optional
- **Contexts:** All tracking pixels; VAST request URIs
- **Description:** List of applicable regulations.
- **Possible Values:** `coppa`, `gdpr`
- **Example:** `gdpr`

### 11.3 `[GDPRCONSENT]`

- **Data Type:** `string`
- **Introduced In:** `4.1`
- **Support:** Optional
- **Contexts:** All tracking pixels; VAST request URIs
- **Format:** Base-64 encoded
- **Description:** Cookie value of IAB GDPR consent information.
- **Example:** `BOLqFHuOLqFHuAABAENAAAAAAAAoAAA`
