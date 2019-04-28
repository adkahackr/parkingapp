import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget{
  @override
  HomePageState createState()=>HomePageState();
}

class HomePageState extends State<HomePage>{
  Completer<GoogleMapController>_controller= Completer();

  @override
  void initState(){
    super.initState();
  }
    double zoomVal=5.0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              
            }),
        title: Text("Paris Parking"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              //
            },)
        ],
      ),
      body: Stack(
        children: <Widget>[
          _googlemap(context),
//          _zoomminusfunction(),
//          _zoomplusfunctions(),
//          _buildContainer(),

        ],
      ),
    );
  }
    Widget _googlemap(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(target: LatLng(48.8573126,2.2948935),zoom: 12),
        onMapCreated:(GoogleMapController controller){
          _controller.complete(controller);
      },
        markers: {
          paris1marker
      },
      )
    );
    }
}
Marker paris1marker = Marker(
    markerId:MarkerId("paris1"),
    position: LatLng(48.8584567,2.2708801),
    infoWindow: InfoWindow(title: "coffee hotel"),
    icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueGreen,
    )
);
