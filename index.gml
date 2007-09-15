<gm:page title="Mashup" css="/css/g.css" class="googleTheme" onload="onLoadf()">

    <!--    -->


  <div class="gm-app-header">
    <table>
      <tr>
        <td width="200"><h1>Mashup</h1></td>
      </tr>
    </table>
  </div>

  <table width="900">
    <tr valign="top">
      <td width="300">
     <div style="float: left; width: 50%">    
        <gm:list id="myList" data="http://aruhela.googlepages.com/amit7.xml" pagesize="2">
          <gm:handleEvent src="myMap" event="select"/>          
        </gm:list>
    </div>
      </td>
      <td class="mainPanel">
        <div style="float: left; width: 100%">   
        <gm:map id="myMap" zoom="12" control="large" maptypes="true" height="500px" data="${myList}" latref="geo:lat" lngref="geo:long" infotemplate="detailTemplate" >
          <gm:handleEvent src="myList" event="select"/>
        </gm:map>
        </div>
      </td>
    </tr>    
  </table>
  
<script type="text/javascript">
<![CDATA[
     
    function onLoadf() {  
     if (document.namespaces) 
     { 
       // only exists in IE, only needed in IE 
       document.namespaces.add("v", "urn:schemas-microsoft-com:vml");     }     
    
       var myTMap = google.mashups.getObjectById('myMap').getMap();  
       setMap(myTMap);     
   }
    function setMap(map) {
     map.enableDoubleClickZoom();
     map.enableContinuousZoom();
     map.setMapType(G_HYBRID_MAP);
   }
]]></script>

  <gm:template id="detailTemplate">
    <div repeat="true">
      <b><gm:text ref="atom:title"/></b><br/>
      <gm:text ref="geo:lat"/><br/>
      <gm:text ref="geo:long"/>
      <gm:labels ref=" atom:label"/>
     <gm:image ref="atom:image" style="margin-right:5px" width="100" height="100" />    </div>
  </gm:template>

</gm:page>
