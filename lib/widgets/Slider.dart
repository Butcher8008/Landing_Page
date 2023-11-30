import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MobileSlider extends StatelessWidget {
  const MobileSlider({Key? key});

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'https://static.wixstatic.com/media/5d104f_942ed39e2eb04f3690ce73118799546d~mv2.jpg/v1/crop/x_42,y_0,w_1115,h_675/fill/w_448,h_268,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/Creality%20K1.jpg',
      'https://static.wixstatic.com/media/5d104f_942ed39e2eb04f3690ce73118799546d~mv2.jpg/v1/crop/x_42,y_0,w_1115,h_675/fill/w_448,h_268,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/Creality%20K1.jpg',
      'https://static.wixstatic.com/media/5d104f_942ed39e2eb04f3690ce73118799546d~mv2.jpg/v1/crop/x_42,y_0,w_1115,h_675/fill/w_448,h_268,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/Creality%20K1.jpg',
      'https://static.wixstatic.com/media/5d104f_942ed39e2eb04f3690ce73118799546d~mv2.jpg/v1/crop/x_42,y_0,w_1115,h_675/fill/w_448,h_268,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/Creality%20K1.jpg',
      'https://static.wixstatic.com/media/5d104f_942ed39e2eb04f3690ce73118799546d~mv2.jpg/v1/crop/x_42,y_0,w_1115,h_675/fill/w_448,h_268,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/Creality%20K1.jpg',
      'https://static.wixstatic.com/media/5d104f_942ed39e2eb04f3690ce73118799546d~mv2.jpg/v1/crop/x_42,y_0,w_1115,h_675/fill/w_448,h_268,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/Creality%20K1.jpg'
    ];

    final List<String> imageDetails = [
      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua',
      'Details 2',
      'Details 3',
      'Details 4',
      'Details 5',
      'Details 6',
    ];

    final List<String> imageTitle = [
      'In publishing and graphic design',
      'Details 2',
      'Details 3',
      'Details 4',
      'Details 5',
      'Details 6',
    ];

    final List<Widget> imageSliders = imgList.asMap().entries.map((entry) {
      final int index = entry.key;
      final String item = entry.value;
      final String details = imageDetails[index];
      final String title = imageTitle[index];

      return Container(
        height: 400,
        width: 300,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 6,
                blurRadius: 7,
                offset: const Offset(-5, -5),
              )
            ]),
        child: Column(
          children: [
            Image(image: NetworkImage(item),
              height: 230,
              width: 300,
            ),
            Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            Padding(
              padding: EdgeInsets.all(13.0),
              child: Text(details),
            )
          ],
        ),
      );
    }).toList();

    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 1,
        enlargeCenterPage: false,
        enableInfiniteScroll: false,
        initialPage: 0,
        autoPlay: false,
      ),
      items: imageSliders,
    );
  }
}
