# VAST Versions Quick Guide

This guide is a quick reference tool for those looking to upgrade to the latest version of VAST or looking to add additional feature support to existing implementations. Deprecated or deleted VAST features are shown using ~~strikethrough~~.

## VAST Versions
* VAST 2.0
* VAST 3.0
* VAST 4.x (currently 4.2)

## Quick Guides
* [VAST Inline Elements and Attributes](#vast-inline-elements-and-attributes)
* [VAST Wrapper Elements and Attributes](#vast-wrapper-elements-and-attributes)
* [VAST Error Codes](#vast-error-codes)
* [VAST Macros](#vast-macros)
* [VAST Tracking Events](#vast-tracking-events)

## VAST Inline Elements and Attributes

<table>
  <thead>
    <tr>
      <th align="left" width="310px">Elements</th>
      <th align="left" width="220px">Attributes</th>
      <th colspan="3" width="150px">Version Support</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>VAST</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>version</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;/Error</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>VAST/Ad</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>id</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>sequence</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td><del>conditionalAd</del></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center"><del>4.x</del></td>
    </tr>
    <tr>
      <td></td>
      <td>adType</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>VAST/Ad/InLine</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;/AdSystem</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>version</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;/AdTitle</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;/Impression</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;/AdServingId</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;/Category</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>authority</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;/Description</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;/Advertiser</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>id</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;/Pricing</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>model</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>currency</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;/Survey</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>type</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;/Error</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;/Expires</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;/ViewableImpression</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>id</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/Viewable</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/NotViewable</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/ViewUndetermined</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;/AdVerifications</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/Verification</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>vendor</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/JavaScriptResource</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>apiFramework</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>browserOptional</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<del>/FlashResource</del></td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center"><del>4.x</del></td>
    </tr>
    <tr>
      <td></td>
      <td><del>apiFramework</del></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center"><del>4.x</del></td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/ExecutableResource</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>apiFramework</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>language</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/TrackingEvents</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/Tracking</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>event</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<del>/ViewableImpression</del></td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center"><del>4.x</del></td>
    </tr>
    <tr>
      <td></td>
      <td><del>id</del></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center"><del>4.x</del></td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/VerificationParameters</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;/Extensions</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/Extension</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>type</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;/Creatives</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/Creative</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>id</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>sequence</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>adId</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>apiFramework</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/UniversalAdId</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>idRegistry</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td><del>idValue</del></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center"><del>4.x</del></td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/CreativeExtensions</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/CreativeExtension</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>type</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/Linear</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>skipoffset</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/Duration</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/AdParameters</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>xmlEncoded</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/MediaFiles</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/Mezzanine</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>delivery</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>type</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>width</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>height</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>codec</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>id</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>fileSize</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>mediaType</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/MediaFile</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>id</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>delivery</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>type</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>bitrate</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>minBitrate</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>maxBitrate</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>width</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>height</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>scalable</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>maintainAspectRatio</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>codec</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td><del>apiFramework</del></td>
      <td align="center"><del>2.0</del></td>
      <td align="center"><del>3.0</del></td>
      <td align="center"><del>4.x</del></td>
    </tr>
    <tr>
      <td></td>
      <td>fileSize</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>mediaType</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/InteractiveCreativeFile</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>type</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>apiFramework</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>variableDuration</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/ClosedCaptionFiles</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/ClosedCaptionFile</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>type</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>language</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/VideoClicks</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/ClickThrough</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>id</td>
      <td align="center"></td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/ClickTracking</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>id</td>
      <td align="center"></td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/CustomClick</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>id</td>
      <td align="center"></td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/TrackingEvents</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/Tracking</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>event</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>offset</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/Icons</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/Icon</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>program</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>width</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>height</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>xPosition</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>yPosition</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>duration</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>offset</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>apiFramework</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>pxratio</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/StaticResource</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>creativeType</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/IFrameResource</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/HTMLResource</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/IconClicks</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/IconClickThrough</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/IconClickTracking</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>id</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/IconClickFallbackImages</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/IconClickFallbackImage</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/AltText</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/StaticResource</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/IconViewTracking</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/NonLinearAds</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/NonLinear</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>id</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>width</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>height</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>expandedWidth</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>expandedHeight</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>scalable</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>maintainAspectRatio</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>minSuggestedDuration</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>apiFramework</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/NonLinearClickThrough</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/NonLinearClickTracking</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>id</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/TrackingEvents</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/Tracking</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>event</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<del>/AdParameters</del></td>
      <td></td>
      <td align="center"><del>2.0</del></td>
      <td align="center">-</td>
      <td align="center">-</td>
    </tr>
    <tr>
      <td></td>
      <td><del>xmlEncoded</del></td>
      <td align="center"><del>2.0</del></td>
      <td align="center">-</td>
      <td align="center">-</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/CompanionAds</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>required</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/Companion</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>id</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>width</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>height</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>assetWidth</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>assetHeight</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>expandedWidth</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>expandedHeight</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>apiFramework</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>adSlotId</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>pxratio</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>renderingMode</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/StaticResource</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>creativeType</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/IFrameResource</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/HTMLResource</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/AdParameters</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>xmlEncoded</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/AltText</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/CompanionClickThrough</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/CompanionClickTracking</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>id</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/TrackingEvents</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/Tracking</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>event</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
  </tbody>
</table>

## VAST Wrapper Elements and Attributes

<table>
  <thead>
    <tr>
      <th align="left" width="310px">Elements</th>
      <th align="left" width="220px">Attributes</th>
      <th colspan="3" width="150px">Version Support</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>VAST/Ad/Wrapper</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>followAdditionalWrappers</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>allowMultipleAds</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>fallbackOnNoAd</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;/Impression</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>id</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;/VASTAdTagURI</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;/AdSystem</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>version</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;/Pricing</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>model</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>currency</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;/Error</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;/ViewableImpression</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>id</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/Viewable</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/NotViewable</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/ViewUndetermined</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;/AdVerifications</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/Verification</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>vendor</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/JavaScriptResource</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>apiFramework</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>browserOptional</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/ExecutableResource</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>apiFramework</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>language</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/TrackingEvents</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/Tracking</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>event</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/VerificationParameters</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/BlockedAdCategories</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<del>/ViewableImpression</del></td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center"><del>4.x</del></td>
    </tr>
    <tr>
      <td></td>
      <td><del>id</del></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center"><del>4.x</del></td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;/Extensions</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/Extension</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>type</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;/Creatives</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/Creative</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>id</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>sequence</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>adId</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/Linear</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/TrackingEvents</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/Tracking</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>event</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>offset</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/VideoClicks</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/ClickThrough</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>id</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/ClickTracking</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>id</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/CustomClick</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>id</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/Icons</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/Icon</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>program</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>width</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>height</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>xPosition</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>yPosition</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>duration</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>offset</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>apiFramework</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>pxratio</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/StaticResource</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>creativeType</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/IFrameResource</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/HTMLResource</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/IconClicks</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/IconClickThrough</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/IconClickTracking</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>id</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/IconClickFallbackImages</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/IconClickFallbackImage</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/AltText</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/StaticResource</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/IconViewTracking</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/InteractiveCreativeFile</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>type</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>apiFramework</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>variableDuration</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/NonLinearAds</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/NonLinear</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>id</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>width</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>height</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>expandedWidth</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>expandedHeight</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>scalable</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>maintainAspectRatio</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>minSuggestedDuration</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>apiFramework</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/NonLinearClickThrough</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/NonLinearClickTracking</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/TrackingEvents</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/Tracking</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>event</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/CompanionAds</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>required</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/Companion</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>id</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>width</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>height</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>assetWidth</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>assetHeight</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>expandedWidth</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>expandedHeight</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>apiFramework</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>adSlotId</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>pxratio</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>renderingMode</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/StaticResource</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>creativeType</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/IFrameResource</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/HTMLResource</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/AdParameters</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>xmlEncoded</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/AltText</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/CompanionClickThrough</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/CompanionClickTracking</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>id</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/TrackingEvents</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/Tracking</td>
      <td></td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td></td>
      <td>event</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
  </tbody>
</table>

## VAST Error Codes

<table>
  <thead>
    <tr>
      <th align="left" width="310px">VAST Error Codes</th>
      <th align="left" width="220px">-</th>
      <th colspan="3" width="150px">Version Support</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>100</td>
      <td></td>
      <td align="center" width="50px">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>101</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>102</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>200</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>201</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>202</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>203</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>204</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>205</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>206</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>300</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>301</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>302</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>303</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>304</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>400</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>401</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>402</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>403</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>405</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>406</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>407</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td><del>408</del></td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center"><del>4.x</del></td>
    </tr>
    <tr>
      <td>409</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>410</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>411</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>500</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>501</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>502</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>503</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>600</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>601</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>602</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>603</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>604</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>900</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>901</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>902</td>
      <td></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
  </tbody>
</table>

## VAST Macros

<table>
  <thead>
    <tr>
      <th align="left" width="310px">VAST Macros</th>
      <th align="left" width="220px">Macro Type</th>
      <th colspan="3" width="150px">Version Support</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>[TIMESTAMP]</td>
      <td>Generic Macros</td>
      <td align="center" width="50px">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[CACHEBUSTING]</td>
      <td>Generic Macros</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td><del>[CONTENTPLAYHEAD]</del></td>
      <td><del>Ad Break Info</del></td>
      <td align="center">-</td>
      <td align="center"><del>3.0</del></td>
      <td align="center"><del>4.x<del></td>
    </tr>
    <tr>
      <td>[MEDIAPLAYHEAD]</td>
      <td>Ad Break Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[BREAKPOSITION]</td>
      <td>Ad Break Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[BLOCKEDADCATEGORIES]</td>
      <td>Ad Break Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[ADCATEGORIES]</td>
      <td>Ad Break Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[ADCOUNT]</td>
      <td>Ad Break Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[TRANSACTIONID]</td>
      <td>Ad Break Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[PLACEMENTTYPE]</td>
      <td>Ad Break Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[ADTYPE]</td>
      <td>Ad Break Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[UNIVERSALADID]</td>
      <td>Ad Break Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[BREAKMAXDURATION]</td>
      <td>Ad Break Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[BREAKMINDURATION]</td>
      <td>Ad Break Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[BREAKMAXADS]</td>
      <td>Ad Break Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[BREAKMINADLENGTH]</td>
      <td>Ad Break Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[BREAKMAXADLENGTH]</td>
      <td>Ad Break Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[IFA]</td>
      <td>Client Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[IFATYPE]</td>
      <td>Client Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[CLIENTUA]</td>
      <td>Client Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[SERVERUA]</td>
      <td>Client Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[DEVICEUA]</td>
      <td>Client Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[SERVERSIDE]</td>
      <td>Client Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[DEVICEIP]</td>
      <td>Client Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[LATLONG]</td>
      <td>Client Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[DOMAIN]</td>
      <td>Publisher Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[PAGEURL]</td>
      <td>Publisher Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[APPBUNDLE]</td>
      <td>Publisher Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[VASTVERSIONS]</td>
      <td>Capabilities Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[APIFRAMEWORKS]</td>
      <td>Capabilities Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[EXTENSIONS]</td>
      <td>Capabilities Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[VERIFICATIONVENDORS]</td>
      <td>Capabilities Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[OMIDPARTNER]</td>
      <td>Capabilities Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[MEDIAMIME]</td>
      <td>Capabilities Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[PLAYERCAPABILITIES]</td>
      <td>Capabilities Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[CLICKTYPE]</td>
      <td>Capabilities Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[PLAYERSTATE]</td>
      <td>Player State Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[INVENTORYSTATE]</td>
      <td>Player State Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[PLAYERSIZE]</td>
      <td>Player State Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[ADPLAYHEAD]</td>
      <td>Player State Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[ASSETURI]</td>
      <td>Player State Info</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[CONTENTID]</td>
      <td>Player State Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[CONTENTURI]</td>
      <td>Player State Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[PODSEQUENCE]</td>
      <td>Player State Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[ADSERVINGID]</td>
      <td>Player State Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[CLICKPOS]</td>
      <td>Click Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[ERRORCODE]</td>
      <td>Error Info</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[REASON]</td>
      <td>Verificaion Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[LIMITADTRACKING]</td>
      <td>Regulation Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[REGULATIONS]</td>
      <td>Regulation Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>[GDPRCONSENT]</td>
      <td>Regulation Info</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
  </tbody>
</table>

## VAST Tracking Events

<table>
  <thead>
    <tr>
      <th align="left" width="310px">VAST Tracking Events</th>
      <th align="left" width="220px">Metric Type</th>
      <th colspan="3" width="150px">Version Support</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>mute</td>
      <td>Player Operation</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>unmute</td>
      <td>Player Operation</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>pause</td>
      <td>Player Operation</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>resume</td>
      <td>Player Operation</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>rewind</td>
      <td>Player Operation</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>skip</td>
      <td>Player Operation</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td><del>fullscreen</del></td>
      <td><del>Player Operation</del></td>
      <td align="center"><del>2.0</del></td>
      <td align="center"><del>3.0</del></td>
      <td align="center">-</td>
    </tr>
    <tr>
      <td><del>exitFullscreen</del></td>
      <td><del>Player Operation</del></td>
      <td align="center">-</td>
      <td align="center"><del>3.0</del></td>
      <td align="center">-</td>
    </tr>
    <tr>
      <td>playerExpand</td>
      <td>Player Operation</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>playerCollapse</td>
      <td>Player Operation</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>notUsed</td>
      <td>Player Operation</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>loaded</td>
      <td>Linear Ad</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>start</td>
      <td>Linear Ad</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>firstQuartile</td>
      <td>Linear Ad</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>midpoint</td>
      <td>Linear Ad</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>thirdQuartile</td>
      <td>Linear Ad</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>complete</td>
      <td>Linear Ad</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>otherAdInteraction</td>
      <td>Linear Ad</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>progress</td>
      <td>Linear Ad</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>closeLinear</td>
      <td>Linear Ad</td>
      <td align="center">-</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td><del>acceptInvitationLinear</del></td>
      <td><del>Linear Ad</del></td>
      <td align="center">-</td>
      <td align="center"><del>3.0</del></td>
      <td align="center"><del>4.x</del></td>
    </tr>
    <tr>
      <td><del>timeSpentViewing</del></td>
      <td><del>Linear Ad</del></td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center"><del>4.x</del></td>
    </tr>
    <tr>
      <td>creativeView</td>
      <td>NonLinear Ad</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>acceptInvitation</td>
      <td>NonLinear Ad</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td><del>expand</del></td>
      <td><del>NonLinear Ad</del></td>
      <td align="center"><del>2.0</del></td>
      <td align="center"><del>3.0</del></td>
      <td align="center">-</td>
    </tr>
    <tr>
      <td><del>collapse</del></td>
      <td><del>NonLinear Ad</del></td>
      <td align="center"><del>2.0</del></td>
      <td align="center"><del>3.0</del></td>
      <td align="center">-</td>
    </tr>
    <tr>
      <td>adExpand</td>
      <td>NonLinear Ad</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>adCollapse</td>
      <td>NonLinear Ad</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>minimize</td>
      <td>NonLinear Ad</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>close</td>
      <td>NonLinear Ad</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>overlayViewDuration</td>
      <td>NonLinear Ad</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>otherAdInteraction</td>
      <td>NonLinear Ad</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>creativeView</td>
      <td>Companion Ad</td>
      <td align="center">2.0</td>
      <td align="center">3.0</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>interactiveStart</td>
      <td>Interactive Ad</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
    <tr>
      <td>verificationNotExecuted</td>
      <td>Verification</td>
      <td align="center">-</td>
      <td align="center">-</td>
      <td align="center">4.x</td>
    </tr>
  </tbody>
</table>
