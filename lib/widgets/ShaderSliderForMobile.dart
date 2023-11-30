import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ShaderSliderForMobile extends StatelessWidget {
  const ShaderSliderForMobile({super.key});

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

    final List<Color> maskColors = [
      Color(0xFF0BF00CED1).withOpacity(1),
      Colors.green.withOpacity(1),
      Colors.red.withOpacity(1),
      Colors.orange.withOpacity(1),
      Colors.purple.withOpacity(1),
      Colors.yellow.withOpacity(1),
    ];


    final List<Widget> imageSliders = imgList.asMap().entries.map((entry) {
      final int index = entry.key;
      final String item = entry.value;

      final Shader singleColorGradient = LinearGradient(
        colors: [maskColors[index], maskColors[index]],
      ).createShader(
        const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
      );

      return Container(
        margin: const EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: [
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return singleColorGradient;
                },
                blendMode: BlendMode.color,
                child: Image.network(item, fit: BoxFit.cover, width: 1000.0),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 20.0,
                    ),
                    child: Text(
                      'No. $index Printer',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }).toList();
    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 2.0,
        enlargeCenterPage: false,
        enableInfiniteScroll: false,
        initialPage: 0,
        autoPlay: false,
      ),
      items: imageSliders,
    );
  }
}
