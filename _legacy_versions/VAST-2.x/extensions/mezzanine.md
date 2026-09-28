# Mezzanine Files

[intro text]


## Implementation

The following information provides details for standardized use of a registered ID in each version of VAST.


### VAST 2.0

The <InLine> element in VAST 2.0 includes a sub-element for <Extensions>. Add an &lt;Extension> under this element of type=”mezzanine.” 

Since the &lt;Extensions> element is general to the &lt;InLine> element and not specific to each creative included, two elements need to be provided as part of the extension: a &lt;Mezzanine> element and a &lt;CreativeId> element to associate the registered ID with the appropriate creative. 


<table>
  <tr>
   <td><strong>Nested Element</strong>
   </td>
   <td><strong>Attribute</strong>
   </td>
   <td><strong>Value</strong>
   </td>
  </tr>
  <tr>
   <td>VAST/InLine/
<p>
Extensions/<strong>Extension</strong>
   </td>
   <td>
   </td>
   <td>&lt;Mezzanine>
<p>
&lt;CreativeId>
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>type
   </td>
   <td>“mezzanine”
   </td>
  </tr>
  <tr>
   <td>VAST/InLine/Extensions/
<p>
Extension/<strong>Mezzanine</strong>
   </td>
   <td>
   </td>
   <td>A CDATA-wrapped URI to a raw, high-quality media file.
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>delivery*
   </td>
   <td>Either progressive for “progressive” download protocols (such as HTTP) or “streaming” for streaming protocols.
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>type*
   </td>
   <td>MIME type for the file container. Popular MIME types include, but are not limited to “video/mp4” for MP4, “audio/mpeg” and “audio/aac” for audio ads.
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>width*
   </td>
   <td>The native width of the video file, in pixels.
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>height*
   </td>
   <td>The native height of the video file, in pixels.
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>codec
   </td>
   <td>The codec used to encode the file which can take values as specified by RFC 4281: http://tools.ietf.org/html/rfc4281.
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>id
   </td>
   <td>An identifier for the media file.
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>fileSize
   </td>
   <td>Optional field that helps eliminate the need to calculate the size based on bitrate and duration.
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td>mediaType
   </td>
   <td>Type of media file (3D / 360 / etc). Optional.
<p>
Default value = 2D
   </td>
  </tr>
  <tr>
   <td>VAST/InLine/Extensions/
<p>
Extension/<strong>CreativeId</strong>
   </td>
   <td>
   </td>
   <td>The value of the “id” attribute for the &lt;Creative> node associated with the supplied registered ID.
   </td>
  </tr>
</table>


**Associating mezzanine file to associated creative in the VAST tag**

The reason an additional element is used here rather than an attribute to the &lt;Mezzanine> is to maintain consistency with the &lt;Mezzanine> used in VAST 4.x, which is nested under its associated creative. 

When multiple creative are included in a VAST tag, you may include a mezzanine file for each. To associate a mezzanine file to the appropriate creative, include a value for the “id” attribute for the &lt;Creative> element and provide that same value for the &lt;CreativeId> nested under the same &lt;Extension> where the &lt;Mezzanine> is added. The Creative “id” value can be any value as long as it matches the value provided in the &lt;CreativeId> extension.

**Example 1: Mezzanine for &lt;Creative id=”my_unique_id”>**


```
…
<Extensions>
     <Extension type="mezzanine">
	<Mezzanine delivery="streaming" type="video/mp4" width="value" height="value">               
                  ![CDATA[https://mycdn.com/videoads/mezz1234.mp4]]
           </Mezzanine>
           <CreativeId>my_unique_id</CreativeId>
     </Extension>
</Extensions>
… 
```


**Example 2: Mezzanine for &lt;Creative id=”abcd1234”>**


```
…
<Extensions>
     <Extension type="registeredID">
	<Mezzanine delivery="streaming" type="video/mp4" width="value" height="value">               
                  ![CDATA[https://mycdn.com/videoads/mezz1234.mp4]]
           </Mezzanine>
           <CreativeId>abcd1234</CreativeId>
     </Extension>
</Extensions>
… 
```
