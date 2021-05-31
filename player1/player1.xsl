<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
	<head>
		<script>
     			//setTimeout(function() { location.reload(); }, 300000);
		</script>
		<link rel="stylesheet" type="text/css" href="player1.css"></link>
	</head>
  	<body>
  		<h2><xsl:value-of select="response/data/item/title"/></h2>

		<div id="date">
                <p class="dateText"><xsl:value-of select="response/data/item/date"/></p>
		<p class="dateText"><xsl:value-of select="response/data/item/time"/> (HST)</p>
		</div>
				
		<div id="player">
		<p> Playlist: <xsl:value-of select="response/data/item/track/playlist/title"/></p>



		
		<img alt="Flowers" style="width:300px; margin-bottom: 20px;">
  		<xsl:attribute name="src">
			<xsl:value-of select="response/data/item/track/imageurl" />
		</xsl:attribute>
		</img>
		
		<br/>
		<audio src="http://199.195.194.94:8183/stream">
			<xsl:attribute name="controls">
			</xsl:attribute>
		</audio>
		
		<p><xsl:value-of select="response/data/item/track/title"/></p>
		<p><xsl:value-of select="response/data/item/track/artist"/></p>
		<p><xsl:value-of select="response/data/item/track/album"/></p>
		</div>	
	
		<div id="listeners">
		<h4>Listening stats:</h4>
			<p>Current Listeners: <xsl:value-of select="response/data/item/listeners"/></p>
			<p>Max Listeners: <xsl:value-of select="response/data/item/maxlisteners"/></p>
		</div>

		<div id="stats">
		<h4>Stats for nerds:</h4>
			<p>Bitrate: <xsl:value-of select="response/data/item/bitrate"/></p>
			<p>Server status: <xsl:value-of select="response/data/item/server"/></p>
			<p>Tune in url: <xsl:value-of select="response/data/item/tuneinurl"/></p>
			<p>Foramt: <xsl:value-of select="response/data/item/tuneinformat"/></p>
		</div>
		
  	</body>
  </html>
</xsl:template>

</xsl:stylesheet>