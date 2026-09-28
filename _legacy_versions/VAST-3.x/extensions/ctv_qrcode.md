# CTV QR Code Creative Extension for VAST 2.0

This document defines a standardized VAST 2.0 `CreativeExtension` for communicating QR code metadata associated with a VAST creative.

The extension was introduced to support CTV Ad Portfolio use cases, but it may be used by any VAST creative where the sender needs to communicate QR code destination or rendering metadata.

This extension may be used with:

- Linear ads
- NonLinearAds
- Companion ads
- CTV Ad Portfolio ad units, including Pause, Screensaver, Overlay, Squeezeback, and In-Scene ads
- VAST 2.0 responses that use a separate standardized extension for CTV Ad Portfolio media-file delivery

This extension does not define a new ad format. It only communicates QR code metadata for a creative that already contains, renders, or is expected to render a QR code.

## Overview

CTV ad experiences commonly use QR codes because many television environments do not support traditional click navigation in the same way as web or mobile environments. A QR code can allow a viewer to continue the advertiser experience on a second device.

VAST 2.0 already supports `CreativeExtensions` under `Creative`. This document defines a standardized `CreativeExtension` with `type="tl_qrcode"` so that ad servers, SSAI providers, CTV platforms, verification vendors, and measurement providers can consistently understand:

- the destination URL represented by the QR code;
- an optional rendered QR code image URL;
- the QR code position within the ad view;
- the QR code size relative to the ad view;
- the creative associated with the QR code metadata.

VAST 2.0 players that do not recognize this extension should ignore it according to normal VAST extension behavior.

## Implementation

To declare QR code metadata for a VAST 2.0 creative, include a `CreativeExtension` element under `Creative/CreativeExtensions` with `type="tl_qrcode"`.

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

Because the extension is placed inside `Creative/CreativeExtensions`, the QR code metadata applies to the containing `Creative` element.

If QR code metadata is declared in a VAST 2.0 `InLine/Extensions/Extension` payload instead of `Creative/CreativeExtensions`, the extension payload should include a creative identifier such as `CreativeId` to associate the QR metadata with the relevant creative. However, the preferred VAST 2.0 placement for this extension is `Creative/CreativeExtensions`.

## Extension structure

| Element | Attribute | Required | Description |
| --- | --- | --- | --- |
| `CreativeExtensions/CreativeExtension` | `type` | Yes | Must be `tl_qrcode`. |
| `CreativeExtension/QrCodeScanUrl` |  | Yes | The URL represented by the QR code. This is the URL a viewer reaches after scanning the QR code. |
| `CreativeExtension/QrCodeImageUrl` |  | No | Optional URL to a rendered QR code image. Use when the QR code image is supplied separately from the main creative asset. |
| `CreativeExtension/QrCodePosition` | `xPosition` | No | Horizontal position of the top-left corner of the QR code relative to the ad view. Expressed as a percentage. |
| `CreativeExtension/QrCodePosition` | `yPosition` | No | Vertical position of the top-left corner of the QR code relative to the ad view. Expressed as a percentage. |
| `CreativeExtension/QrCodeSize` | `size` | No | Size of the QR code, expressed as a percentage of the ad view width. The QR code is assumed to be square. |

## Element details

### QrCodeScanUrl

`QrCodeScanUrl` is the destination represented by the QR code. This URL should be the canonical scan destination for the QR code, not merely the landing page visible in other clickthrough metadata.

The value may be wrapped in CDATA.

```xml
<QrCodeScanUrl><![CDATA[https://advertiser.example.com/code]]></QrCodeScanUrl>
```

If the creative contains a QR code but the sender does not know or cannot disclose the scan destination, `QrCodeScanUrl` should be omitted. In that case, the creative may still signal the presence of a QR code using the appropriate creative attribute in the associated transaction or extension metadata when available.

### QrCodeImageUrl

`QrCodeImageUrl` is an optional URL to a rendered QR code image.

Use this element when the platform, player, or stitcher is expected to compose the QR code image into the creative experience, or when a downstream system needs access to the rendered QR code image for validation.

```xml
<QrCodeImageUrl><![CDATA[https://cdn.example.com/generated_qr.png]]></QrCodeImageUrl>
```

If the QR code is already embedded in the main creative asset and no separate image is needed, this element may be omitted.

### QrCodePosition

`QrCodePosition` communicates the position of the top-left corner of the QR code relative to the ad view.

The origin is the top-left corner of the ad view:

- `xPosition="0.0%"` means the left edge of the ad view.
- `yPosition="0.0%"` means the top edge of the ad view.

```xml
<QrCodePosition xPosition="10.0%" yPosition="10.0%"/>
```

Position values are percentages. Implementations should not assume pixel units.

### QrCodeSize

`QrCodeSize` communicates the QR code size as a percentage of the ad view width. The QR code is assumed to be square.

```xml
<QrCodeSize size="15.0%"/>
```

For example, if the ad view is 1920 pixels wide and `size="15.0%"`, the QR code is expected to render as a 288 x 288 pixel square.

## Coordinate system

The QR code coordinate system is relative to the ad view, not necessarily the full device screen or the full video content area.

For example, if an Overlay Lower Third ad occupies a 1920 x 324 ad view at the bottom of a 1920 x 1080 screen:

- `xPosition="10.0%"` resolves to x = 192 pixels within the ad view.
- `yPosition="10.0%"` resolves to y = 32.4 pixels within the ad view.
- `size="15.0%"` resolves to a 288 x 288 pixel QR code because 15% of 1920 is 288.

The platform is responsible for mapping the ad-view-relative position into the final rendered screen position.

## Relationship to creative attributes

When the transaction supports creative attributes, the sender should also declare that the creative contains an advertiser QR code using the appropriate value from [AdCOM List: Creative Attributes](https://github.com/InteractiveAdvertisingBureau/AdCOM/blob/develop/AdCOM%20v1.0%20FINAL.md#list-creative-attributes).

This document intentionally does not duplicate the AdCOM Creative Attributes table. If the AdCOM list is updated, implementations should follow the current AdCOM list without requiring an update to this extension document.

The QR Code Creative Extension provides structured metadata about the QR code. The creative attribute declares that a QR code is present. These signals are complementary.

## Relationship to clickthrough URLs

`QrCodeScanUrl` does not replace VAST clickthrough elements.

Advertisers that expect a traditional clickthrough should continue to use the appropriate VAST clickthrough element, such as `ClickThrough` for Linear creatives or `NonLinearClickThrough` for NonLinear creatives.

Use `QrCodeScanUrl` when the QR code destination needs to be communicated separately from the clickthrough URL.

The clickthrough URL and QR scan URL may be the same, but they do not have to be the same. For example, a clickthrough URL may point to a general landing page, while a QR scan URL may point to a CTV-specific landing page, coupon flow, app install page, or attribution endpoint.

## Relationship to CTV Ad Portfolio media-file delivery

This QR Code Creative Extension is separate from the CTV Ad Portfolio media-file extension for VAST 2.0.

The media-file extension defines how VAST 2.0 can deliver CTV Ad Portfolio media files and interactive creative files for NonLinearAds. This QR Code Creative Extension defines QR code metadata.

The two extensions may be used together.

Example:

```xml
<Creative id="creative-cine-003" AdID="AD-ID-003">
  <NonLinearAds>
    <NonLinear id="nl_pause_cine_003" width="1920" height="1080" scalable="true" maintainAspectRatio="true">
      <StaticResource creativeType="image/jpeg">
        <![CDATA[https://cdn.example.com/pause/brand_z_poster_1080p.jpg]]>
      </StaticResource>
      <NonLinearClickThrough><![CDATA[https://brand-z.example.com/landing]]></NonLinearClickThrough>
    </NonLinear>
  </NonLinearAds>
  <CreativeExtensions>
    <CreativeExtension type="tl_qrcode">
      <QrCodeScanUrl><![CDATA[https://brand-z.example.com/code]]></QrCodeScanUrl>
      <QrCodePosition xPosition="10.0%" yPosition="10.0%"/>
      <QrCodeSize size="15.0%"/>
    </CreativeExtension>
  </CreativeExtensions>
</Creative>
```

## Example value note

The examples below may include concrete AdCOM values to make the examples executable and easy to review. These examples are illustrative snapshots only. Implementers should validate the meaning of these values against the current AdCOM reference lists rather than treating this extension document as the authoritative enumeration source:

- `attr`: [AdCOM List: Creative Attributes](https://github.com/InteractiveAdvertisingBureau/AdCOM/blob/develop/AdCOM%20v1.0%20FINAL.md#list-creative-attributes)
- `plcmt`: [AdCOM List: Plcmt Subtypes - Video](https://github.com/InteractiveAdvertisingBureau/AdCOM/blob/develop/AdCOM%20v1.0%20FINAL.md#list-plcmt-subtypes---video)
- `pos`: [AdCOM List: Placement Positions](https://github.com/InteractiveAdvertisingBureau/AdCOM/blob/develop/AdCOM%20v1.0%20FINAL.md#list-placement-positions)
- `playbackmethod`: [AdCOM List: Playback Methods](https://github.com/InteractiveAdvertisingBureau/AdCOM/blob/develop/AdCOM%20v1.0%20FINAL.md#list-playback-methods)

## Example: Linear ad with QR code metadata

```xml
<VAST version="2.0">
  <Ad id="linear-qr-001">
    <InLine>
      <AdSystem version="1.0">ExampleAdServer</AdSystem>
      <AdTitle>Linear Ad with QR Code</AdTitle>
      <Impression><![CDATA[https://track.example.com/imp?id=linearqr001]]></Impression>
      <Creatives>
        <Creative id="creative-linear-qr-001" AdID="AD-ID-LINEAR-QR-001">
          <Linear>
            <Duration>00:00:30</Duration>
            <MediaFiles>
              <MediaFile delivery="progressive" type="video/mp4" width="1920" height="1080" bitrate="8000">
                <![CDATA[https://cdn.example.com/linear/brand_qr_30s.mp4]]>
              </MediaFile>
            </MediaFiles>
            <VideoClicks>
              <ClickThrough><![CDATA[https://advertiser.example.com/landing]]></ClickThrough>
            </VideoClicks>
          </Linear>
          <CreativeExtensions>
            <CreativeExtension type="tl_qrcode">
              <QrCodeScanUrl><![CDATA[https://advertiser.example.com/code]]></QrCodeScanUrl>
              <QrCodePosition xPosition="75.0%" yPosition="60.0%"/>
              <QrCodeSize size="12.5%"/>
            </CreativeExtension>
          </CreativeExtensions>
        </Creative>
      </Creatives>
    </InLine>
  </Ad>
</VAST>
```

## Example: NonLinear CTV ad with QR code metadata

```xml
<VAST version="2.0">
  <Ad id="pause-qr-001">
    <InLine>
      <AdSystem version="1.0">ExampleAdServer</AdSystem>
      <AdTitle>Pause Ad with QR Code</AdTitle>
      <Impression><![CDATA[https://track.example.com/imp?id=pauseqr001]]></Impression>
      <Creatives>
        <Creative id="creative-pause-qr-001" AdID="AD-ID-PAUSE-QR-001">
          <NonLinearAds>
            <TrackingEvents>
              <Tracking event="creativeView"><![CDATA[https://track.example.com/creativeView?id=pauseqr001]]></Tracking>
              <Tracking event="close"><![CDATA[https://track.example.com/close?id=pauseqr001]]></Tracking>
            </TrackingEvents>
            <NonLinear id="nl_pause_qr_001" width="1920" height="1080" scalable="true" maintainAspectRatio="true">
              <StaticResource creativeType="image/jpeg">
                <![CDATA[https://cdn.example.com/pause/brand_qr_1920x1080.jpg]]>
              </StaticResource>
              <NonLinearClickThrough><![CDATA[https://advertiser.example.com/landing]]></NonLinearClickThrough>
            </NonLinear>
          </NonLinearAds>
          <CreativeExtensions>
            <CreativeExtension type="tl_qrcode">
              <QrCodeScanUrl><![CDATA[https://advertiser.example.com/code]]></QrCodeScanUrl>
              <QrCodeImageUrl><![CDATA[https://cdn.example.com/qr/brand_qr.png]]></QrCodeImageUrl>
              <QrCodePosition xPosition="10.0%" yPosition="10.0%"/>
              <QrCodeSize size="15.0%"/>
            </CreativeExtension>
          </CreativeExtensions>
        </Creative>
      </Creatives>
      <Extensions>
        <Extension type="ctv_ad_portfolio">
          <CreativeId>creative-pause-qr-001</CreativeId>
          <plcmt>5</plcmt>
          <pos>7</pos>
          <playbackmethod>9</playbackmethod>
          <attr>19</attr>
          <attr>21</attr>
        </Extension>
      </Extensions>
    </InLine>
  </Ad>
</VAST>
```

## Validation and error handling

Receiving platforms should validate QR code metadata before relying on it.

At minimum, platforms should check:

- `CreativeExtension@type` is `tl_qrcode`;
- `QrCodeScanUrl`, when present, is usable after macro replacement or URL resolution;
- `QrCodeImageUrl`, when present, points to a supported image resource;
- `xPosition`, `yPosition`, and `size` are valid percentage values;
- the resolved QR code rectangle fits within the intended ad view, unless clipping is explicitly supported;
- the QR code does not obscure required disclosure, icon, or user-interface controls;
- the QR code rendering is consistent with the publisher's user experience policy.

If a platform cannot render the QR code image or cannot use the QR metadata, it may still render the underlying VAST creative when doing so is consistent with the ad opportunity and user experience.

## Privacy, security, and measurement considerations

QR code destinations should use HTTPS whenever possible.

Parties should avoid placing sensitive user identifiers directly in QR code scan URLs unless permitted by applicable law, platform policy, and the governing transaction terms.

If QR code scan activity is used for attribution or measurement, the measurement methodology should distinguish between:

- the VAST impression or creative view;
- QR code rendering or exposure;
- QR code scan activity;
- downstream advertiser-site activity.

The presence of a QR code in a creative does not by itself mean the viewer scanned the QR code.

## Versioning

This extension is designed for VAST 2.0 compatibility. Later VAST versions may define the same QR code metadata directly in the core specification or continue to support it through `CreativeExtensions`.

Implementations should treat `CreativeExtension type="tl_qrcode"` as the identifying namespace for this extension unless a future specification defines a replacement.
