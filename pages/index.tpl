
<article class="container_12 home">
    
    <div class="grid_4">
        
        <h1>Linus</h1>
        <h2>Unnebäck</h2>
        
        <p>
            Ibland när man pratar med Linus kan det vara svårt att förstå vad
            han menar, för det blir ofta förklaringar i något av de hundra olika
            programmeringsspråken han kan. Med det sagt; han är grym på att
            programmera. Allt.
        </p>
        
    </div>
    
    <div class="grid_4">
        
        <h1>Ricard</h1>
        <h2>Stahre</h2>
        
        <p>
            När morgonen gryr och människor går till sina jobb, är Ricard redan
            där. Han gick upp klockan 04:30 för att flytta en Centralstationsblå
            box 3 pixlar åt höger.
        </p>
        
    </div>
    
    <div class="grid_4">
        
        <h1>Jonathan</h1>
        <h2>Gill</h2>
        
        <p>
            Jonathan Gill är som en försiktigt konstruerat urverk, instoppat i
            en apelsin. Man förväntar sig en god apelsin, och hittar i den goda
            apelsinen en fin klocka som jobbar med front-end-utveckling och
            dricker mycket kaffe. Najs.
        </p>
        
    </div>
    
</article>

<article class="map">
    
    <h1 style="margin: 0px; padding: 128px 0px; text-align: center; font-size: 48pt; text-shadow: 2px 2px 0px #999;">
        Loading map...
    </h1>
    
</article>

<div id="map-popup-content" style="display: none;">
    <p class="here-are-we">
        <span class="icon-0">070 - 624 09 10</span>
        <span class="icon-1">salut@phibyte.se</span>
        <span class="icon-2">Slakterigatan 10<br />721 32 Västerås</span>
    </p>
</div>

<script type="text/javascript">
    $(function () {
        
        var $map = $('.map');
        var $pop = $('#map-popup-content');
        
        window.mapsLoaded = function () {
            
            $map.children().remove();
            
            var map = new google.maps.Map($map[0], {
                center: new google.maps.LatLng(59.6039, 16.5474),
                zoom: 13,
                mapTypeId: google.maps.MapTypeId.TERRAIN
            });
            
            var marker = new google.maps.Marker({
                position: new google.maps.LatLng(59.591988, 16.513461),
                title: 'phiByte',
                map: map
            });
            
            var popup = new google.maps.InfoWindow({
                content: $pop.children()[0]
            });
            
            google.maps.event.addListener(marker, 'click', function () {
                popup.open(map, marker);
            });
            
            popup.open(map, marker);
            
            delete window.mapsLoaded;
        };
        
        var script = document.createElement("script");
        script.type = "text/javascript";
        script.src = "//maps.googleapis.com/maps/api/js?sensor=false&callback=mapsLoaded";
        document.body.appendChild(script);
        
    });
</script>
