import 'package:flutter/material.dart';

class ProfileForDesktop extends StatefulWidget {
  const ProfileForDesktop({super.key});

  @override
  State<ProfileForDesktop> createState() => _ProfileForDesktopState();
}

class _ProfileForDesktopState extends State<ProfileForDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      decoration: const BoxDecoration(
        color: Colors.blueAccent,
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40,),
                  const Text('Best guide to buy \n'
                      'the right 3D Printers', style:TextStyle(
                    color: Color(0xFF222222),
                    fontSize: 48,
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),),
                  const SizedBox(height: 20,),
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
          ),
          Stack(children: [
            Container(
              height: MediaQuery.of(context).size.height / 2.3,
              width: MediaQuery.of(context).size.width / 2.3,
              decoration: const BoxDecoration(
                  color: Colors.brown,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.contain,
                      image: NetworkImage(
                          'lib/images/Profile.png'))),
            ),
            Positioned(
              top: 28,
              left: 100,
              child: Container(
                height: MediaQuery.of(context).size.height / 10,
                width: MediaQuery.of(context).size.width/10,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white
                ),
              ),
            ),
            Positioned(
              bottom: 28,
              left: 400,
              child: Container(
                height: MediaQuery.of(context).size.height / 15,
                width: MediaQuery.of(context).size.width/15,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white
                ),
              ),
            )
          ])

        ],
      ),
    );
  }
}
