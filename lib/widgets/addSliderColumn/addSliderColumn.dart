import 'package:flutter/material.dart';
import 'package:newfrontend/widgets/addSliderColumn/DesktopSlider.dart';

class addSliderColumn extends StatefulWidget {
  const addSliderColumn({super.key});

  @override
  State<addSliderColumn> createState() => _addSliderColumnState();
}

class _addSliderColumnState extends State<addSliderColumn> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        height: 1000,
        decoration: const BoxDecoration(
          color: Colors.white
        ),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 80.0, left: 30),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Latest on SLA Printer', style: TextStyle(
                      color: Color(0xFF222222),
                      fontSize: 24,
                      fontFamily: 'Avenir',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: DesktopSlider(),
                  ),
                  SizedBox(height: 50,),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Latest on FDM Printer' ,style: TextStyle(
                        color: Color(0xFF222222),
                    fontSize: 24,
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: DesktopSlider(),
                  )
                  ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 40.0,  bottom: 10),
                child: Container(
                  height: 860,
                  width: 360,
                  decoration:
                  const BoxDecoration(color: Colors.white,
                      image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSw8gCDM9C04O4pFYs8VQZmw5WgJuVgSVLUlA&usqp=CAU")),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 25,
                        offset: Offset(0, 4),
                        spreadRadius: 10,
                      )
                    ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
