import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:google_maps_webservice/places.dart';

import '../../widgets/Custom_Text_Field.dart';
import '../../widgets/appBar.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(30.033333, 31.233334),
    zoom: 16.4746,
  );

  GoogleMapController? myMapController;
  String? _mapStyle;

  @override
  void initState() {
    super.initState();

    rootBundle.loadString('assets/map_style.txt').then((string) {
      setState(() {
        _mapStyle = string;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          text: 'Add address',
          leadingiconp: 'assets/icons/Arrow_left.svg',
          actionicon: '',
        ),
        body: Stack(children: [
          GoogleMap(
            zoomControlsEnabled: false,
            onMapCreated: (GoogleMapController controller) {
              myMapController = controller;
              if (_mapStyle != null) {
                myMapController!.setMapStyle(_mapStyle!);
              }
            },
            initialCameraPosition: _kGooglePlex,
          ),
          buildTextField(context),
          BuildCurrentLocationIcon()
        ]));
  }
}

void ShowGoogleAutoComplete(BuildContext context) async {
  const googleAPIKey = "AIzaSyCPs2Gn5rwn4NmlXgS6T92r2c8LvUPWizU";
  try {
    Prediction? p = await PlacesAutocomplete.show(
      context: context,
      apiKey: googleAPIKey,
      mode: Mode.overlay,
      language: "en",
      components: [new Component(Component.country, "us")],
      types: ["(cities)"],
      hint: "Search City",
    );
  } catch (e) {
    print(e);
  }
}

Widget BuildCurrentLocationIcon() {
  return Align(
    alignment: Alignment.bottomRight,
    child: Padding(
      padding: const EdgeInsets.only(bottom: 8, right: 8),
      child: CircleAvatar(
        radius: 20,
        backgroundColor: Colors.white,
        child: Icon(
          Icons.my_location_rounded,
          color: Colors.green,
        ),
      ),
    ),
  );
}

Widget buildTextField(BuildContext context) {
  return Positioned(
      top: 50,
      right: 20,
      left: 20,
      child: Container(
        width: 100,
        height: 50,
        decoration: BoxDecoration(color: Colors.white,
            boxShadow: [ BoxShadow(
              color: Colors.black.withOpacity(0.05),
              spreadRadius: 1,
              blurRadius: 10,

            )
            ],
            borderRadius: BorderRadius.circular(8)


        ),


        child: TextField(
          readOnly: true,
          onTap: () {
            ShowGoogleAutoComplete(context);
          },
          decoration: InputDecoration(


              suffixIcon: Icon(Icons.search)
          ),
        ),
      ));
}