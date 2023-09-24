import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Locator extends StatefulWidget {
  static const route = "/locator";
  @override
  _LocatorState createState() => _LocatorState();
}

class _LocatorState extends State<Locator> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: const Text('ArcGIS', style: TextStyle(color: Colors.white),),
        backgroundColor: Theme.of(context).primaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        ),
        body: Column(
          children: [
            Flexible(
              child: FlutterMap(
                options: MapOptions(
                  center: LatLng(13.5336, 79.9997),
                  zoom: 9.0,
                  pinchZoomWinGestures: MultiFingerGesture.pinchZoom
                ),
                layers: [
                  TileLayerOptions(
                    urlTemplate:
                        'http://{s}.google.com/vt/lyrs=m&x={x}&y={y}&z={z}',
                    subdomains: ['mt0', 'mt1', 'mt2', 'mt3'],
                  ),
                  MarkerLayerOptions(
                    markers: [
                      Marker(point: LatLng(13.5336, 79.9997), builder: (context)=> const Icon(Icons.location_pin, size: 72,))
                    ]
                  )
                ],
              ),
            ),
          ],
        ),
    );
  }
}
