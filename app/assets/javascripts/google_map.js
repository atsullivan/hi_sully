function initMap() {
  var uluru = {lat: 34.384407, lng: -119.490979};
  var styledMapType = new google.maps.StyledMapType(
    [
      {
        "elementType": "geometry",
        "stylers": [
          {
            "color": "#f5f5f5"
          }
        ]
      },
      {
        "elementType": "labels.icon",
        "stylers": [
          {
            "visibility": "off"
          }
        ]
      },
      {
        "elementType": "labels.text.fill",
        "stylers": [
          {
            "color": "#616161"
          }
        ]
      },
      {
        "elementType": "labels.text.stroke",
        "stylers": [
          {
            "color": "#f5f5f5"
          }
        ]
      },
      {
        "featureType": "administrative.land_parcel",
        "elementType": "labels.text.fill",
        "stylers": [
          {
            "color": "#bdbdbd"
          }
        ]
      },
      {
        "featureType": "poi",
        "elementType": "geometry",
        "stylers": [
          {
            "color": "#eeeeee"
          }
        ]
      },
      {
        "featureType": "poi",
        "elementType": "labels.text.fill",
        "stylers": [
          {
            "color": "#757575"
          }
        ]
      },
      {
        "featureType": "poi.park",
        "elementType": "geometry",
        "stylers": [
          {
            "color": "#e5e5e5"
          }
        ]
      },
      {
        "featureType": "poi.park",
        "elementType": "labels.text",
        "stylers": [
          {
            "visibility": "off"
          }
        ]
      },
      {
        "featureType": "road",
        "elementType": "geometry",
        "stylers": [
          {
            "color": "#ffffff"
          }
        ]
      },
      {
        "featureType": "road",
        "elementType": "labels",
        "stylers": [
          {
            "visibility": "off"
          }
        ]
      },
      {
        "featureType": "road.arterial",
        "stylers": [
          {
            "color": "#B98D49"
          },
          {
            "saturation": -5
          },
          {
            "#B98D49": 1
          }
        ]
      },
      {
        "featureType": "road.arterial",
        "elementType": "labels.text.fill",
        "stylers": [
          {
            "color": "#757575"
          }
        ]
      },
      {
        "featureType": "road.highway",
        "elementType": "geometry",
        "stylers": [
          {
            "color": "#dadada"
          }
        ]
      },
      {
        "featureType": "road.highway",
        "elementType": "labels.text.fill",
        "stylers": [
          {
            "color": "#616161"
          }
        ]
      },
      {
        "featureType": "road.highway.controlled_access",
        "stylers": [
          {
            "color": "#B98D49"
          },
          {
            "#B98D49": 0.5
          }
        ]
      },
      {
        "featureType": "road.local",
        "stylers": [
          {
            "color": "#B98D49"
          }
        ]
      },
      {
        "featureType": "road.local",
        "elementType": "labels.text.fill",
        "stylers": [
          {
            "color": "#9e9e9e"
          }
        ]
      },
      {
        "featureType": "transit.line",
        "elementType": "geometry",
        "stylers": [
          {
            "color": "#e5e5e5"
          }
        ]
      },
      {
        "featureType": "transit.station",
        "elementType": "geometry",
        "stylers": [
          {
            "color": "#eeeeee"
          }
        ]
      },
      {
        "featureType": "water",
        "elementType": "geometry",
        "stylers": [
          {
            "color": "#c9c9c9"
          }
        ]
      },
      {
        "featureType": "water",
        "elementType": "labels.text.fill",
        "stylers": [
          {
            "color": "#9e9e9e"
          }
        ]
      }
    ]
  );
  var contentString = '<div id="content">'+
                        '<div id="bodyContent">'+
                          '<a href="https://www.procore.com/about/" target="_blank"><p class="map-header">Procore Technologies</p></a>'+
                          '<p>6309 Carpinteria Ave, Carpinteria, CA 93013'
                        '</div>'+
                      '</div>';

  var infowindow = new google.maps.InfoWindow({
          content: contentString
        });
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 14,
    center: uluru,
    disableDefaultUI: true,
    scrollwheel: false,
    draggable: false
  });
  map.mapTypes.set('styled_map', styledMapType);
     map.setMapTypeId('styled_map');
  var marker = new google.maps.Marker({
    position: uluru,
    map: map,
    animation: google.maps.Animation.DROP,
    title: 'Uluru (Ayers Rock)'
  });
  infowindow.open(map, marker);
}
