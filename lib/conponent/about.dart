import 'package:flutter/material.dart';

class about extends StatefulWidget {
  final String planet;
  final String Title;
  final String DistancefromSun;
  final String OrbitalPeriod;
  final String SurfaceArea;
  final String Gravity;
  final String LengthofDay;
  final String Mass;
  final String Radius;
  final String image;
  final String About;

  const about({
    super.key,
    required this.planet,
    required this.DistancefromSun,
    required this.Gravity,
    required this.LengthofDay,
    required this.Mass,
    required this.OrbitalPeriod,
    required this.Radius,
    required this.SurfaceArea,
    required this.Title,
    required this.image,
    required this.About,
  });

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    child: Transform.scale(
                      scaleY: -1,
                      child: Image.asset("images/top.jpeg"),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 170,
                    right: 0,
                    child: Text(
                      widget.planet,
                      style: TextStyle(fontSize: 30, color: Colors.white),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Positioned(
                    top: 190,
                    left: 30,
                    right: 30,
                    child: Text(
                      widget.Title,
                      style: TextStyle(fontSize: 30, color: Colors.white),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 20,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Icon(Icons.arrow_back,color: Colors.white,size: 30,),
                    ),
                  ),
                ],
              ),
              ClipRRect(
                child: Container(
                  child: Image.asset(
                    "images/${widget.image}",
                    height: 450,
                    width: 450,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "About",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      widget.About,
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    SizedBox(height: 20),
                    _buildDataRow('Distance from Sun (km):', widget.DistancefromSun),
                    _buildDataRow('Length of Day (hours):', widget.LengthofDay),
                    _buildDataRow('Orbital Period (Earth years):', widget.OrbitalPeriod),
                    _buildDataRow('Radius (km):', widget.Radius),
                    _buildDataRow('Mass (kg):', widget.Mass),
                    _buildDataRow('Gravity (m/s²):', widget.Gravity),
                    _buildDataRow('Surface Area (km²):', widget.SurfaceArea),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDataRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: RichText(
        text: TextSpan(
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          children: [
            TextSpan(text: label),
            TextSpan(
              text: value,
              style: TextStyle(fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}