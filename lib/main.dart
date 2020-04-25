import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text('Leaflet Maps')),
        body: new  FlutterMap(
      options: new MapOptions(
        center: new LatLng(10.151915, 76.231711),
        zoom: 13.0,
      ),
      layers: [
        new TileLayerOptions(
          urlTemplate: "https://api.mapbox.com/styles/v1/evolvingkid/ck7rzqqf62ucj1imvtsvrusja/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiZXZvbHZpbmdraWQiLCJhIjoiY2s3cjh5enN2MGJqeDNnbmE3eWliZjYweiJ9.fOY6dDJfqxEleFJfPFVa-Q",
          additionalOptions: {
            'accessToken': 'pk.eyJ1IjoiZXZvbHZpbmdraWQiLCJhIjoiY2s3cjh5enN2MGJqeDNnbmE3eWliZjYweiJ9.fOY6dDJfqxEleFJfPFVa-Q',
            'id': 'mapbox.streets',
          },
        ),
        new MarkerLayerOptions(
          markers: [
            new Marker(
              width: 80.0,
              height: 80.0,
              point: new LatLng(51.5, -0.09),
              builder: (ctx) =>
              new Container(
                child: new FlutterLogo(),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
