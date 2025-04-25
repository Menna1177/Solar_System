import 'package:flutter/material.dart';
class Botton extends StatefulWidget {
  final Widget page;
  final String planet;
  const Botton({super.key,required this.page , required this.planet});

  @override
  State<Botton> createState() => _BottonState();
}

class _BottonState extends State<Botton> {
  @override
  Widget build(BuildContext context) {
    return    Positioned(
      bottom: 20,
      child: SizedBox(
        width: 450,
        height: 70,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  widget.page),
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Explore ${widget.planet}",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              Icon(
                Icons.arrow_forward_rounded,
                color: Colors.white,
                size: 30,
              ),
            ],
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.redAccent,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
        ),
      ),
    );
  }
}
