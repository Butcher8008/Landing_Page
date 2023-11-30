import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ShadedMaskedSliderForDesktop extends StatefulWidget {
  const ShadedMaskedSliderForDesktop({super.key});

  @override
  State<ShadedMaskedSliderForDesktop> createState() => _ShadedMaskedSliderForDesktopState();
}

class _ShadedMaskedSliderForDesktopState extends State<ShadedMaskedSliderForDesktop> {
  late CarouselController _carouselController;

  @override
  void initState() {
    super.initState();
    _carouselController = CarouselController();
  }

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
      const Color(0xFF0BF00CED1).withOpacity(1),
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
        decoration: const BoxDecoration(
          color: Colors.white
        ),
        margin: const EdgeInsets.all(5.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return singleColorGradient;
                },
                blendMode: BlendMode.color,
                child: Image.network(item, fit: BoxFit.contain, height: MediaQuery.of(context).size.height,),
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

    return Container(
      decoration: BoxDecoration(
        color: Colors.white
      ),
      height: 500,
      child: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: Column(
          children: [
            const Text('Unsere Top 5', style: TextStyle(
              color: Color(0xFF222222),
              fontSize: 48,
              fontFamily: 'Avenir',
              fontWeight: FontWeight.w400,
              height: 0,
            ),),
            Stack(
              children: [
                CarouselSlider(
                  carouselController: _carouselController,
                  options: CarouselOptions(

                    aspectRatio: 4,
                    enlargeCenterPage: false,
                    enableInfiniteScroll: true,
                    initialPage: 1,
                    autoPlay: false,
                    viewportFraction: 1/3
                  ),
                  items: imageSliders,
                ),
                Positioned(
                  top: 5,
                  right: 0,
                  child: Container(
                    height: 400,
                    width: 240,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white54.withOpacity(0.9),
                            spreadRadius: 9,
                            blurRadius: 7,
                            offset: const Offset(-5, -5),
                          )
                        ]),
                    child: IconButton(
                        onPressed: (){
                          _carouselController.nextPage();
                        },
                        icon: const Icon(Icons.arrow_forward_ios)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
