import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DesktopSlider extends StatefulWidget {
  const DesktopSlider({Key? key}) : super(key: key);

  @override
  _DesktopSliderState createState() => _DesktopSliderState();
}

class _DesktopSliderState extends State<DesktopSlider> {
  late CarouselController _carouselController;

  @override
  void initState() {
    super.initState();
    _carouselController = CarouselController();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
      'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
      'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
      'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
    ];

    void _nextSlide() {
      print("Next slide tapped"); // Add this line
      _carouselController.nextPage();
    }

    return Stack(
      alignment: Alignment.centerRight,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height/2,
          child: Center(
            child: CarouselSlider.builder(
              carouselController: _carouselController,
              itemCount: imgList.length,
              options: CarouselOptions(
                // carouselController: _carouselController,
                aspectRatio: 3,
                enlargeCenterPage: false,
                enableInfiniteScroll: true,
                initialPage: 1,
                autoPlay: false,
                viewportFraction: 1 / 3, // Display three cards at a time
                // controller: _carouselController, // Use controller instead of carouselController
              ),
              itemBuilder: (context, index, realIndex) {
                return Padding(
                  padding: const EdgeInsets.only(left: 8.0,right: 8),
                  child: Container(
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 25,
                          offset: Offset(0, 4),
                          spreadRadius: 10,
                        )
                      ],
                    ),
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 13.0),
                          child: Image(image: NetworkImage('https://static.wixstatic.com/media/5d104f_aae35404bd444cfcad6666c21a6272d2~mv2.jpg/v1/fill/w_580,h_325,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/Elegoo%20Neptune%203%20Pro-45.jpg'),
                          ),
                        ),
                        Text('In publishing and graphic design', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        Padding(
                          padding: EdgeInsets.all(13.0),
                          child: Text('In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. '),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        Positioned(
          top: 23,
          right: 10,
          child: Container(
            height: 400,
            width: 200,
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
                onPressed: _nextSlide,
                icon: const Icon(Icons.arrow_forward_ios)),
          ),
        ),
      ],
    );
  }
}
