<gm:page title="Mashup" css="/css/g.css" class="googleTheme">

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
        <gm:list id="myList" data="http://aruhela.googlepages.com/amit3.xml" pagesize="1">
          <gm:handleEvent src="myMap" event="select"/>          
        </gm:list>
      </td>
      <td class="mainPanel">
        <gm:map id="myMap" zoom="0" height="500px" data="${myList}" latref="geo:lat" lngref="geo:long" >
          <gm:handleEvent src="myList" event="select"/>
        </gm:map>
      </td>
    </tr>    
  </table>

  <gm:template id="detailTemplate">
    <div repeat="true">
      <b><gm:text ref="atom:title"/></b><br/>
      <gm:text ref="geo:lat"/><br/>
      <gm:text ref="geo:long"/>
    </div>
  </gm:template>

</gm:page>
