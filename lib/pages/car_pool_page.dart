import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ridebudysv0/pages/available_rider__page.dart';
import 'package:ridebudysv0/pages/ride_details_confirmation_page.dart';
import 'package:ridebudysv0/utils/location_service.dart';

class CarPoolPage extends StatefulWidget {
  const CarPoolPage({super.key});

  @override
  State<CarPoolPage> createState() => _CarPoolPageState();
}

class _CarPoolPageState extends State<CarPoolPage> {
  final _key = GlobalKey<FormState>();
  FocusNode pickfocus = FocusNode();
  FocusNode dropfocus = FocusNode();
  Completer<GoogleMapController> _controller = Completer();
  final PickUpLocationController = TextEditingController();
  final DropLocationController = TextEditingController();
  final DateController = TextEditingController();
  late final DateTime dateinput;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      DateController.text = '20/12/2023';
    });
    _setMarker(const LatLng(28.834444422486207, 77.56984346681318));
  }

  void _setMarker(LatLng point) {
    setState(() {
      _markers.add(Marker(markerId: const MarkerId('marker'), position: point));
    });
  }

  void _setPolygon() {
    final String polygonIdVal = 'polygon_$_polygonIdCounter';
    _polygonIdCounter++;
    _polygons.add(
      Polygon(
          polygonId: PolygonId(polygonIdVal),
          points: polygonLatLngs,
          strokeWidth: 2,
          fillColor: Colors.transparent),
    );
  }

  void _setPolyline(List<PointLatLng> points) {
    final String polylineIdval = ' polyline_$_polylineIdCounter';
    _polylineIdCounter++;
    _polylines.add(
      Polyline(
        polylineId: PolylineId(polylineIdval),
        width: 8,
        color: Colors.blue,
        points: points
            .map((point) => LatLng(point.latitude, point.longitude))
            .toList(),
      ),
    );
  }

  static const _initialCameraPosition = CameraPosition(
      target: LatLng(28.834444422486207, 77.56984346681318), zoom: 17);

  final Set<Marker> _markers = <Marker>{};
  final Set<Polygon> _polygons = <Polygon>{};
  final Set<Polyline> _polylines = <Polyline>{};
  final List<LatLng> polygonLatLngs = <LatLng>[];

  int _polygonIdCounter = 1;
  int _polylineIdCounter = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(28, 28, 28, 1),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Ridebudys',
            style: TextStyle(color: Colors.amber, fontStyle: FontStyle.italic)),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
              flex: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Form(
                    key: _key,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: const [
                                Icon(Icons.circle_outlined,
                                    color: Colors.green, weight: 18),
                                Icon(
                                  Icons.more_vert_rounded,
                                  size: 34,
                                  color: Colors.green,
                                ),
                                Icon(
                                  Icons.location_pin,
                                  color: Colors.red,
                                )
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.85,
                                  child: TextFormField(
                                    focusNode: pickfocus,
                                    controller: PickUpLocationController,
                                    obscureText: false,
                                    validator: (value) {
                                      if (value!.isNotEmpty) {
                                        return null;
                                      } else {
                                        return 'Please enter a valid Pick up location';
                                      }
                                    },
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.03,
                                          //bottom:MediaQuery.of(context).size.height * 0.03, // HERE THE IMPORTANT PART
                                        ),
                                        hintText: 'Enter Pick Up Location',
                                        enabledBorder: const OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(12)),
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                        focusedBorder: const OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(12)),
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                        fillColor: Colors.grey.shade200,
                                        filled: true),
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                ),
                                SizedBox(

                                  width:
                                      MediaQuery.of(context).size.width * 0.85,
                                  child: TextFormField(
                                    focusNode: dropfocus,
                                    onFieldSubmitted: (String value) async {
                                      _polylines.clear();
                                      var directions = await LocationSerice()
                                          .getDirections(
                                              PickUpLocationController.text,
                                              DropLocationController.text);
                                      _gotoplace(
                                        directions['start_location']['lat'],
                                        directions['start_location']['lng'],
                                        directions['bounds_ne'],
                                        directions['bounds_sw'],
                                      );
                                      _setPolyline(
                                          directions['polyline_decoded']);
                                    },
                                    validator: (value) {
                                      if (value!.isNotEmpty) {
                                        return null;
                                      } else {
                                        return 'Please enter a valid Drop location';
                                      }
                                    },
                                    controller: DropLocationController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.03,
                                          // bottom: MediaQuery.of(context).size.height * 0.01, // HERE THE IMPORTANT PART
                                        ),
                                        hintText: 'Enter Drop Location',
                                        enabledBorder: const OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(12)),
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                        focusedBorder: const OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(12)),
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                        fillColor: Colors.grey.shade200,
                                        filled: true),
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.95,
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isNotEmpty) {
                                return null;
                              } else {
                                return 'Please enter a valid Date';
                              }
                            },
                            controller: DateController,
                            //editing controller of this TextField
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.03,
                                  //bottom: MediaQuery.of(context).size.height * 0.03, // HERE THE IMPORTANT PART
                                ),
                                hintText: 'Select Date',
                                suffixIcon: const Icon(
                                  Icons.calendar_month_outlined,
                                  color: Colors.black,
                                ),
                                enabledBorder: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                                focusedBorder: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                                fillColor: Colors.grey.shade200,
                                filled: true //label text of field
                                ),
                            readOnly:
                                true, //set it true, so that user will not able to edit text
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(
                                      2000), //DateTime.now() - not to allow to choose before today.
                                  lastDate: DateTime(2101),
                                  builder: (context, child) {
                                    return Theme(
                                      data: Theme.of(context).copyWith(
                                        colorScheme: const ColorScheme.light(
                                          primary: Colors.amber, // <-- SEE HERE
                                          onPrimary:
                                              Colors.black, // <-- SEE HERE
                                          onSurface:
                                              Colors.amber, // <-- SEE HERE
                                        ),
                                        textButtonTheme: TextButtonThemeData(
                                          style: TextButton.styleFrom(
                                            foregroundColor: Colors
                                                .black, // button text color
                                          ),
                                        ),
                                      ),
                                      child: child!,
                                    );
                                  });

                              if (pickedDate != null) {
                                setState(() {
                                  dateinput =
                                      pickedDate; //set output date to TextField value.
                                });
                                print(dateinput);
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GoogleMap(
                mapType: MapType.normal,
                markers: _markers,
                // polygons: _polygons,
                polylines: _polylines,
                initialCameraPosition: _initialCameraPosition,
                myLocationButtonEnabled: false,
                zoomControlsEnabled: false,
                compassEnabled: false,
                zoomGesturesEnabled: true,
                trafficEnabled: true,
                buildingsEnabled: true,
                indoorViewEnabled: true,
                mapToolbarEnabled: true,
                onMapCreated: (GoogleMapController controller) =>
                    _controller.complete(controller),
                onTap: (point) {
                  setState(() {
                    polygonLatLngs.add(point);
                    _setPolygon();
                  });
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 5,
                            side: const BorderSide(
                                color: Colors.black, width: 1.5),
                            backgroundColor: Colors.amber,
                            shape: const StadiumBorder()),
                        onPressed: () {
                          if (_key.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      rideDetalsConfirmation_page(
                                          date: dateinput,
                                          origin: PickUpLocationController.text.trim().toString(),
                                          destination: DropLocationController.text.trim().toString()),
                                ),
                            );
                          }
                        },
                        child: const Text(
                          'OFFER  RIDE',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_key.currentState!.validate())
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const availableRiderPage(),));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 5,
                          side:
                              const BorderSide(color: Colors.black, width: 1.5),
                          backgroundColor: Colors.amber,
                          shape: const StadiumBorder()),
                      child: const Text(
                        'SEARCH  RIDE',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _gotoplace(double lat, double lng, Map<String, dynamic> boundsNE,
      Map<String, dynamic> boundsSW) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(target: LatLng(lat, lng), zoom: 21),
    ));
    controller.animateCamera(
      CameraUpdate.newLatLngBounds(
          LatLngBounds(
              southwest: LatLng(boundsSW['lat'], boundsSW['lng']),
              northeast: LatLng(boundsNE['lat'], boundsNE['lng'])),
          4),
    );
    _setMarker(LatLng(lat, lng));
  }

  void ini() async {
    var directions = await LocationSerice().getDirections(
        PickUpLocationController.text, DropLocationController.text);
    _gotoplace(
      directions['start_location']['lat'],
      directions['start_location']['lng'],
      directions['bounds_ne'],
      directions['bounds_sw'],
    );
    _setPolyline(directions['polyline_decoded']);
  }
}
