# CTV Ad Portfolio for VAST 2.0

This document defines a standardized VAST 2.0 extension for signaling and delivering CTV Ad Portfolio ad units using `NonLinearAds`.

This extension applies to the following CTV Ad Portfolio formats:

- Pause Ads
- Screensaver Ads
- Overlay Ads
- Squeezeback Ads
- In-Scene Ads

This extension does not apply to Menu Ads. Menu Ads are transacted and delivered using the OpenRTB Native object and the Native API response model.

## Overview

VAST 2.0 already supports `NonLinearAds`, but its native `NonLinear` structure is limited to `StaticResource`, `IFrameResource`, `HTMLResource`, `TrackingEvents`, `NonLinearClickThrough`, and `AdParameters`. The CTV Ad Portfolio requires a standardized way to deliver video files, image files, and secure interactive creative files for non-linear CTV ad experiences while preserving VAST 2.0 compatibility.

This extension adds a standardized `Extension` payload for VAST 2.0 that allows ad servers, SSAI providers, and CTV players to communicate:

- the CTV ad format and on-screen treatment;
- video, image, or interactive creative files for a `NonLinear` creative;
- SIMID interactive creative files using the same `InteractiveCreativeFile` pattern used for linear ads;
- creative motion attributes, QR code attributes, and other format-specific metadata;
- optional click tracking, custom click tracking, CTV-specific tracking events, and icon metadata.

VAST 2.0 players that do not recognize this extension should ignore it according to normal VAST extension behavior. When practical, ad servers should also include a VAST 2.0-native `NonLinear` resource, such as a `StaticResource`, as a fallback.

## Implementation

The VAST 2.0 `InLine` element includes an `Extensions` container. To declare CTV Ad Portfolio metadata or media for a non-linear creative, add an `Extension` element under `InLine/Extensions` with `type="ctv_ad_portfolio"`.

Because the VAST 2.0 `Extensions` container applies to the `InLine` ad and not directly to a specific creative, a `CreativeId` child element is required when the VAST response contains more than one `Creative`. The `CreativeId` value should match the `id` attribute of the associated `Creative` element. If omitted, the extension applies to the only `NonLinearAds` creative in the response.

### Extension structure

| Nested element | Attribute | Value |
| --- | --- | --- |
| `VAST/Ad/InLine/Extensions/Extension` | `type` | `ctv_ad_portfolio` |
| `Extension/CreativeId` |  | The value of the associated `Creative@id`. Required when more than one creative is present. |
| `Extension/plcmt` |  | The AdCOM placement subtype for the CTV Ad Portfolio format. Values are defined in [AdCOM List: Plcmt Subtypes - Video](https://github.com/InteractiveAdvertisingBureau/AdCOM/blob/develop/AdCOM%20v1.0%20FINAL.md#list-plcmt-subtypes---video). |
| `Extension/pos` |  | The AdCOM placement position for the on-screen treatment. Values are defined in [AdCOM List: Placement Positions](https://github.com/InteractiveAdvertisingBureau/AdCOM/blob/develop/AdCOM%20v1.0%20FINAL.md#list-placement-positions). Omit only when the format has no applicable position value. |
| `Extension/playbackmethod` |  | The AdCOM playback method describing how playback is initiated and whether sound is on or off. Values are defined in [AdCOM List: Playback Methods](https://github.com/InteractiveAdvertisingBureau/AdCOM/blob/develop/AdCOM%20v1.0%20FINAL.md#list-playback-methods). |
| `Extension/attr` |  | One AdCOM creative attribute value. Repeat for multiple values. Values are defined in [AdCOM List: Creative Attributes](https://github.com/InteractiveAdvertisingBureau/AdCOM/blob/develop/AdCOM%20v1.0%20FINAL.md#list-creative-attributes). |
| `Extension/Duration` |  | Standard VAST duration format, `HH:MM:SS[.mmm]`. Required for video and interactive creatives when time-based tracking is expected. Optional for static image creatives when duration is unknown. |
| `Extension/MediaFiles` |  | Required for CTV Ad Portfolio ad units delivered through this extension, except Menu Ads. |
| `Extension/MediaFiles/MediaFile` |  | Required for non-interactive image or video creatives. May be repeated for alternative encodes or sizes of the same creative. |
| `Extension/MediaFiles/InteractiveCreativeFile` |  | Required for interactive creatives. Use `apiFramework="SIMID"` for SIMID creatives. |
| `Extension/TrackingEvents/Tracking` | `event` | Optional tracking for CTV-specific events or events that are not valid in strict VAST 2.0 schema validation. |
| `Extension/NonLinearClickTracking` | `id` | Optional click tracking URI for non-linear click interactions. |
| `Extension/NonLinearCustomClick` | `id` | Optional custom click tracking URI. |
| `Extension/Icons` |  | Optional icon metadata for the associated non-linear creative. |
| `Extension/CreativeExtensions/CreativeExtension` | `type` | Optional creative extension metadata, such as `tl_qrcode`. |

### AdCOM reference lists

This extension intentionally does not duplicate AdCOM enumeration tables. Implementers should use the current AdCOM reference lists for all values carried in the extension:

- `plcmt`: [AdCOM List: Plcmt Subtypes - Video](https://github.com/InteractiveAdvertisingBureau/AdCOM/blob/develop/AdCOM%20v1.0%20FINAL.md#list-plcmt-subtypes---video)
- `pos`: [AdCOM List: Placement Positions](https://github.com/InteractiveAdvertisingBureau/AdCOM/blob/develop/AdCOM%20v1.0%20FINAL.md#list-placement-positions)
- `playbackmethod`: [AdCOM List: Playback Methods](https://github.com/InteractiveAdvertisingBureau/AdCOM/blob/develop/AdCOM%20v1.0%20FINAL.md#list-playback-methods)
- `attr` and `battr`: [AdCOM List: Creative Attributes](https://github.com/InteractiveAdvertisingBureau/AdCOM/blob/develop/AdCOM%20v1.0%20FINAL.md#list-creative-attributes)

The extension values should match the OpenRTB bid request and bid response whenever this extension is used downstream of an auction. If a referenced AdCOM list is later updated, this extension automatically follows the updated list without requiring a corresponding change in this repository.

Publishers may use `battr` in the bid request to block unsupported creative experiences. Buyers should use `attr` in the bid response and in this VAST extension to declare the delivered creative experience.

## Media file delivery

For CTV Ad Portfolio ad units, `MediaFiles` in this extension provides the media delivery model that VAST 2.0 does not natively provide under `NonLinear`.

A non-interactive image or video creative should use one or more `MediaFile` elements:

```xml
<MediaFiles>
  <MediaFile delivery="progressive"
             type="video/mp4"
             width="1920"
             height="1080"
             bitrate="8000"
             codec="H.264">
    <![CDATA[https://cdn.example.com/pause/brand_cine_1080p.mp4]]>
  </MediaFile>
</MediaFiles>
```

A static image creative may also be delivered as a `MediaFile`:

```xml
<MediaFiles>
  <MediaFile delivery="progressive"
             type="image/png"
             width="1920"
             height="1080">
    <![CDATA[https://cdn.example.com/pause/brand_static_1920x1080.png]]>
  </MediaFile>
</MediaFiles>
```

For backward compatibility, ad servers should include a VAST 2.0-native fallback resource inside the associated `NonLinear` element when practical:

```xml
<NonLinear id="nl_static_001" width="1920" height="1080" scalable="true" maintainAspectRatio="true">
  <StaticResource creativeType="image/png">
    <![CDATA[https://cdn.example.com/pause/brand_static_1920x1080.png]]>
  </StaticResource>
</NonLinear>
```

## SIMID interactive creative delivery

Interactive CTV Ad Portfolio creatives should use `InteractiveCreativeFile` inside the extension `MediaFiles` element. This allows SIMID interactive creatives to be declared consistently for linear and non-linear ad experiences.

```xml
<MediaFiles>
  <InteractiveCreativeFile type="text/html"
                           apiFramework="SIMID"
                           variableDuration="false">
    <![CDATA[https://adserver.example.com/interactive/simid-shell.html]]>
  </InteractiveCreativeFile>
</MediaFiles>
```

For SIMID-based units, OpenRTB feature support should be signaled in the bid request using the `api` attribute of the video object. The VAST response should identify the executable creative with `InteractiveCreativeFile apiFramework="SIMID"`.

## Duration and tracking

`Duration` should be included whenever the duration of the non-linear ad experience is known. `Duration` is required for video and interactive CTV Ad Portfolio creatives when quartile or other time-based tracking is expected.

For static image Pause, Screensaver, or Overlay Ads where the duration is not known at VAST response time, `Duration` may be omitted. In those cases, the platform should rely on impression, creative view, close, and view-duration measurement events supported by the integration.

Standard VAST 2.0 non-linear tracking events should continue to be declared under `NonLinearAds/TrackingEvents` when they are valid in VAST 2.0. CTV-specific tracking events, such as `overlayViewDuration`, may be declared inside the `ctv_ad_portfolio` extension.

Example:

```xml
<Extension type="ctv_ad_portfolio">
  <CreativeId>creative-static-001</CreativeId>
  <plcmt>6</plcmt>
  <pos>7</pos>
  <playbackmethod>11</playbackmethod>
  <attr>21</attr>
  <TrackingEvents>
    <Tracking event="overlayViewDuration">
      <![CDATA[https://track.example.com/overlayViewDuration?id=001]]>
    </Tracking>
  </TrackingEvents>
</Extension>
```

## QR code metadata

If the creative contains an advertiser QR code, the buyer should include the corresponding advertiser QR code value from [AdCOM List: Creative Attributes](https://github.com/InteractiveAdvertisingBureau/AdCOM/blob/develop/AdCOM%20v1.0%20FINAL.md#list-creative-attributes). If standardized QR destination or geometry information is needed, include a `CreativeExtension` with `type="tl_qrcode"` inside the `ctv_ad_portfolio` extension.

Position and size values are expressed as percentages relative to the ad view. `xPosition="0.0%"` and `yPosition="0.0%"` represent the top-left corner of the ad view. `QrCodeSize@size` represents the square QR code size as a percentage of the ad view width.

```xml
<CreativeExtensions>
  <CreativeExtension type="tl_qrcode">
    <QrCodeScanUrl><![CDATA[https://advertiser.example.com/code]]></QrCodeScanUrl>
    <QrCodeImageUrl><![CDATA[https://cdn.example.com/generated_qr.png]]></QrCodeImageUrl>
    <QrCodePosition xPosition="10.0%" yPosition="10.0%"/>
    <QrCodeSize size="15.0%"/>
  </CreativeExtension>
</CreativeExtensions>
```

## Example: Static Screensaver Ad

The following VAST 2.0 response uses native `NonLinearAds` for fallback rendering and the `ctv_ad_portfolio` extension to declare the CTV format, media file, and CTV-specific tracking.

```xml
<VAST version="2.0">
  <Ad id="screensaver-static-001">
    <InLine>
      <AdSystem version="1.0">ExampleAdServer</AdSystem>
      <AdTitle>Brand X Screensaver Ad - Static</AdTitle>
      <Impression><![CDATA[https://track.example.com/imp?id=001]]></Impression>
      <Creatives>
        <Creative id="creative-static-001" AdID="AD-ID-001">
          <NonLinearAds>
            <TrackingEvents>
              <Tracking event="creativeView"><![CDATA[https://track.example.com/creativeView?id=001]]></Tracking>
              <Tracking event="close"><![CDATA[https://track.example.com/close?id=001]]></Tracking>
            </TrackingEvents>
            <NonLinear id="nl_static_001" width="1920" height="1080" scalable="true" maintainAspectRatio="true">
              <StaticResource creativeType="image/jpeg">
                <![CDATA[https://cdn.example.com/screensaver/brand_x_1920x1080.jpg]]>
              </StaticResource>
              <NonLinearClickThrough><![CDATA[https://brand-x.example.com/landing]]></NonLinearClickThrough>
            </NonLinear>
          </NonLinearAds>
        </Creative>
      </Creatives>
      <Extensions>
        <Extension type="ctv_ad_portfolio">
          <CreativeId>creative-static-001</CreativeId>
          <plcmt>6</plcmt>
          <pos>7</pos>
          <playbackmethod>11</playbackmethod>
          <attr>21</attr>
          <MediaFiles>
            <MediaFile delivery="progressive" type="image/jpeg" width="1920" height="1080">
              <![CDATA[https://cdn.example.com/screensaver/brand_x_1920x1080.jpg]]>
            </MediaFile>
          </MediaFiles>
          <TrackingEvents>
            <Tracking event="overlayViewDuration"><![CDATA[https://track.example.com/overlayViewDuration?id=001]]></Tracking>
          </TrackingEvents>
        </Extension>
      </Extensions>
    </InLine>
  </Ad>
</VAST>
```

## Example: Video Pause Ad

The following VAST 2.0 response delivers a cinemagraph Pause Ad through the extension `MediaFiles` element. A static fallback resource is included for players that do not support the extension.

```xml
<VAST version="2.0">
  <Ad id="pause-cine-003">
    <InLine>
      <AdSystem version="1.0">ExampleAdServer</AdSystem>
      <AdTitle>Brand Z Pause Ad - Cinemagraph</AdTitle>
      <Impression><![CDATA[https://track.example.com/imp?id=003]]></Impression>
      <Creatives>
        <Creative id="creative-cine-003" AdID="AD-ID-003">
          <NonLinearAds>
            <TrackingEvents>
              <Tracking event="creativeView"><![CDATA[https://track.example.com/creativeView?id=003]]></Tracking>
              <Tracking event="start"><![CDATA[https://track.example.com/start?id=003]]></Tracking>
              <Tracking event="firstQuartile"><![CDATA[https://track.example.com/firstQ?id=003]]></Tracking>
              <Tracking event="midpoint"><![CDATA[https://track.example.com/midpoint?id=003]]></Tracking>
              <Tracking event="thirdQuartile"><![CDATA[https://track.example.com/thirdQ?id=003]]></Tracking>
              <Tracking event="complete"><![CDATA[https://track.example.com/complete?id=003]]></Tracking>
              <Tracking event="close"><![CDATA[https://track.example.com/close?id=003]]></Tracking>
            </TrackingEvents>
            <NonLinear id="nl_pause_cine_003" width="1920" height="1080" scalable="true" maintainAspectRatio="true">
              <StaticResource creativeType="image/jpeg">
                <![CDATA[https://cdn.example.com/pause/brand_z_poster_1080p.jpg]]>
              </StaticResource>
              <NonLinearClickThrough><![CDATA[https://brand-z.example.com/landing]]></NonLinearClickThrough>
            </NonLinear>
          </NonLinearAds>
        </Creative>
      </Creatives>
      <Extensions>
        <Extension type="ctv_ad_portfolio">
          <CreativeId>creative-cine-003</CreativeId>
          <plcmt>5</plcmt>
          <pos>7</pos>
          <playbackmethod>9</playbackmethod>
          <attr>19</attr>
          <attr>22</attr>
          <Duration>00:00:30</Duration>
          <MediaFiles>
            <MediaFile delivery="progressive" type="video/mp4" width="1920" height="1080" bitrate="8000" codec="H.264">
              <![CDATA[https://cdn.example.com/pause/brand_z_cine_1080p.mp4]]>
            </MediaFile>
            <MediaFile delivery="progressive" type="video/mp4" width="1280" height="720" bitrate="4000" codec="H.264">
              <![CDATA[https://cdn.example.com/pause/brand_z_cine_720p.mp4]]>
            </MediaFile>
          </MediaFiles>
          <CreativeExtensions>
            <CreativeExtension type="tl_qrcode">
              <QrCodeScanUrl><![CDATA[https://brand-z.example.com/code]]></QrCodeScanUrl>
              <QrCodePosition xPosition="10.0%" yPosition="10.0%"/>
              <QrCodeSize size="15.0%"/>
            </CreativeExtension>
          </CreativeExtensions>
        </Extension>
      </Extensions>
    </InLine>
  </Ad>
</VAST>
```

## Example: SIMID Squeezeback Ad

The following example uses `InteractiveCreativeFile` for a SIMID-based Squeezeback Ad. The `InteractiveCreativeFile` node is intentionally aligned with the same pattern used for interactive linear creatives.

```xml
<VAST version="2.0">
  <Ad id="squeezeback-simid-001">
    <InLine>
      <AdSystem version="1.0">ExampleAdServer</AdSystem>
      <AdTitle>SIMID Squeezeback Ad</AdTitle>
      <Impression><![CDATA[https://track.example.com/imp?id=simid001]]></Impression>
      <Creatives>
        <Creative id="creative-simid-001" AdID="AD-ID-SIMID-001">
          <NonLinearAds>
            <TrackingEvents>
              <Tracking event="creativeView"><![CDATA[https://track.example.com/creativeView?id=simid001]]></Tracking>
              <Tracking event="start"><![CDATA[https://track.example.com/start?id=simid001]]></Tracking>
              <Tracking event="complete"><![CDATA[https://track.example.com/complete?id=simid001]]></Tracking>
              <Tracking event="close"><![CDATA[https://track.example.com/close?id=simid001]]></Tracking>
            </TrackingEvents>
            <NonLinear id="nl_squeezeback_simid_001" width="1920" height="1080" scalable="true" maintainAspectRatio="true">
              <StaticResource creativeType="image/png">
                <![CDATA[https://cdn.example.com/squeezeback/fallback_1920x1080.png]]>
              </StaticResource>
              <NonLinearClickThrough><![CDATA[https://brand.example.com/landing]]></NonLinearClickThrough>
            </NonLinear>
          </NonLinearAds>
        </Creative>
      </Creatives>
      <Extensions>
        <Extension type="ctv_ad_portfolio">
          <CreativeId>creative-simid-001</CreativeId>
          <plcmt>8</plcmt>
          <pos>11</pos>
          <playbackmethod>1</playbackmethod>
          <attr>19</attr>
          <Duration>00:00:30</Duration>
          <MediaFiles>
            <InteractiveCreativeFile type="text/html" apiFramework="SIMID" variableDuration="false">
              <![CDATA[https://adserver.example.com/interactive/simid-squeezeback.html]]>
            </InteractiveCreativeFile>
          </MediaFiles>
          <AdParameters><![CDATA[{"placement":"squeezeback","layout":"frame"}]]></AdParameters>
        </Extension>
      </Extensions>
    </InLine>
  </Ad>
</VAST>
```

## Error handling and validation

Receiving platforms should validate that the VAST extension matches the ad opportunity they are rendering. At minimum, the platform should check:

- `plcmt` matches the requested CTV Ad Portfolio format;
- `pos` matches a supported on-screen treatment;
- `playbackmethod` is supported by the placement;
- returned `attr` values are not blocked by the publisher's `battr` values;
- media MIME type, dimensions, duration, and interactivity are supported by the platform;
- interactive creatives using SIMID are only executed when SIMID is supported and allowed.

If the extension contains unsupported or unexpected metadata, the platform should fail gracefully. When a valid VAST 2.0-native `NonLinear` fallback is present, the platform may render the fallback if doing so is consistent with the requested user experience. Otherwise, the platform should not render the creative and should fire the appropriate error tracking URI when available.

