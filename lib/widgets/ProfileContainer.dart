import 'package:flutter/material.dart';

class ProfileContainer extends StatefulWidget {
  const ProfileContainer({super.key});

  @override
  State<ProfileContainer> createState() => _ProfileContainerState();
}

class _ProfileContainerState extends State<ProfileContainer> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: MediaQuery.of(context).size.height / 4,
        width: MediaQuery.of(context).size.width / 4,
        decoration: const BoxDecoration(
            color: Colors.brown,
            shape: BoxShape.circle,
            image: DecorationImage(
                image: NetworkImage('lib/images/Profile.png'))),
      ),
      Positioned(
        top: 28,
        left: -1,
        child: Container(
          height: MediaQuery.of(context).size.height / 15,
          width: MediaQuery.of(context).size.width/15,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white
          ),
        ),
      ),
      Positioned(
        bottom: 35,
        right: -1,
        child: Container(
          height: MediaQuery.of(context).size.height / 20,
          width: MediaQuery.of(context).size.width/20,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white
          ),
        ),
      ),
      Positioned(
        top: 28,
        left: -1,
        child: Container(
          height: MediaQuery.of(context).size.height / 15,
          width: MediaQuery.of(context).size.width/15,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white
          ),
        ),
      )
    ]);
  }
}
