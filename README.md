# Mapbox for flutter

![](https://firebasestorage.googleapis.com/v0/b/dservers-5def7.appspot.com/o/Screenshot_20200426-115605.jpg?alt=media&token=603b46d1-ab5a-42c2-9996-5d74b88345cc)

This is a Map for flutter where any one can use for free.

## Mapbox
[Mapbox](https://www.mapbox.com/)
Map box is give api and sdk for developers to use map on our project. Unlike other Map api like google api in mapbox we dont need any kind of payment on 1st use like that.

You you want your own mapbox to use then.

use dependencies

```
flutter_map: ^0.8.2
latlong: ^0.6.1
```

Now in your Dart code
use 
```dart
FlutterMap()
```

Flutter Map get
```dart
 options: new MapOptions(
        center: new LatLng(<take lagitude and logitude>),
        zoom: <take zoom value>,
      ),
      
```

Then it take layer
```dart
 layers: []
```

In 1st layer put your map
```dart
 TileLayerOptions(
          urlTemplate: "<url token>",
          additionalOptions: {
            'accessToken': '<acess token>,
            'id': '<map id this will tell what kind of map>',
          },
        ),
```
To place marker

```dart

MarkerLayerOptions(
          markers: [
            new Marker(
              width: <width>,
              height: <height>,
              point: new LatLng(<latitude and logitude>),
              builder: (ctx) =>
              new Container(
                child: new FlutterLogo(),// your marker
              ),
            ),
          ],
        )
```
