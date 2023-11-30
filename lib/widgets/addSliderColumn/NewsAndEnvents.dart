import 'package:flutter/material.dart';

class NewsAndEvents extends StatelessWidget {
  const NewsAndEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      decoration: const BoxDecoration(
        color: Color(0xFFECEFEE)
      ),
      child:  Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 130.0, left: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text('What’s new in the world of \n 3D printers',style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 48,
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.w400,
                ),),
                Container(
                  height: 50,
                  width: 200,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Center(child: Text(
                    'Beginner’s guide',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF222222),
                      fontSize: 24,
                      fontFamily: 'Avenir',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  )),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 400.0),
            child: Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(image: NetworkImage('lib/images/Group.png'), fit: BoxFit.contain)
              ),
            ),
          )
        ],
      ),
    );
  }
}
