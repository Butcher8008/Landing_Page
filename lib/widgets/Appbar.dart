import 'package:flutter/material.dart';
import 'package:newfrontend/widgets/ProfileContainer.dart';
import 'package:newfrontend/widgets/SearchFilterForMobile.dart';
import 'package:newfrontend/widgets/ShaderSliderForMobile.dart';
import 'package:newfrontend/widgets/Slider.dart';
import 'package:newfrontend/widgets/addSliderColumn/topNavBar.dart';

class Appbar extends StatefulWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  State<Appbar> createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool isHovered = false;

  void _openEndDrawer() {
    Future.delayed(Duration.zero, () {
      _scaffoldKey.currentState!.openEndDrawer();
    });
  }

  void _closeEndDrawer() {
    Navigator.of(context).pop();
  }

  final TextEditingController _searchController = TextEditingController();
  bool isSearching = false;

  void _toggleSearch() {
    setState(() {
      isSearching = !isSearching;
      if (!isSearching) {
        _searchController.clear();
      }
    });
  }

  bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 600;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: isMobile(context)
          ? AppBar(
        backgroundColor: Color(0xFF026CC4),
              title: const Text(
                '3D Heavens',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              actions: [
                if (isSearching)
                  Visibility(
                    visible: isSearching,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 5, bottom: 5),
                      child: Container(
                        height: 35,
                        width: 200,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(20),
                              right: Radius.circular(20)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: TextField(
                            controller: _searchController,
                            decoration: const InputDecoration(
                                hintText: 'Search...',
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none),
                          ),
                        ),
                      ),
                    ),
                  ),
                if (isMobile(context))
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 20),
                    child: IconButton(
                      onPressed: _toggleSearch,
                      icon: const Icon(Icons.search),
                    ),
                  ),
                if (isMobile(context))
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: IconButton(
                      onPressed: _openEndDrawer,
                      icon: const Icon(Icons.menu),
                    ),
                  ),
              ],
            )
          : PreferredSize(
              preferredSize: const Size.fromHeight(80),
              child: AppBar(
                backgroundColor: Color(0xFF026CC4),
                title: Padding(
                  padding: const EdgeInsets.only(left: 40, top: 20, right: 10),
                  child: Row(
                    children: [
                      Flexible(
                        child: SizedBox(
                          height: 40,
                          width: 40,
                          child: Image.network(
                              'https://cfcdn.apowersoft.info/astro/picwish/_astro/scene-logo-after@530w.df3314dd.png'),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Flexible(
                        child: Text(
                          '3D Heavens',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                actions: [
                  if (!isMobile(context))
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Center(
                        child: Container(
                          height: 70,
                          width: 400,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  topLeft: Radius.circular(10))),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, bottom: 7),
                            child: TextField(
                              controller: _searchController,
                              decoration: const InputDecoration(
                                  fillColor: Colors.white,
                                  hintText: 'Search...',
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none),
                            ),
                          ),
                        ),
                      ),
                    ),
                  if (!isMobile(context))
                    Padding(
                      padding: const EdgeInsets.only(right: 10, top: 20),
                      child: Container(
                        height: 68,
                        width: 50,
                        decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.search),
                        ),
                      ),
                    ),
                  if (!isMobile(context))
                    Padding(
                      padding: const EdgeInsets.only(right: 40, top: 20),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.more_vert),
                      ),
                    ),
                ],
              ),
            ),
      endDrawer: isMobile(context)
          ? Drawer(
              child: Container(
                decoration: const BoxDecoration(color: Color(0xFFE1E6E4)),
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    SizedBox(
                      height: 70,
                      child: DrawerHeader(
                        child: Row(
                          children: [
                            InkWell(
                                onTap: _closeEndDrawer,
                                child: const Icon(Icons.cancel_outlined)),
                            const SizedBox(
                              width: 90,
                            ),
                            const Text(
                              'Menu',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ListTile(
                        title: _buildMenuButton('Filter search'), onTap: () {}),
                    ListTile(
                      title: _buildMenuButton('Scanner'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Center(
                        child: Text('3D Druckers'),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      title: _buildMenuButton('Beste Liste'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: _buildMenuButton('Scanner'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: _buildMenuButton('Filament'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: _buildMenuButton('Ratgeber'),
                      onTap: () {},
                    ),
                    // Add more ListTile items as needed
                  ],
                ),
              ),
            )
          : null,
      endDrawerEnableOpenDragGesture: false,
      body: SingleChildScrollView(

        child: SizedBox(
          height: 3000,
          child: Column(
            children: [
              // if (isMobile(context)) const Expanded(child: navBar()),
              if (!isMobile(context)) const Expanded(child: topNavBar()),
              if (isMobile(context))
                 Flexible(
                  child: Container(
                      height: MediaQuery.of(context).size.height / 2,
                      decoration:
                          const BoxDecoration(color: Color(0xFFF5F2F9)),
                      child: const SearchFilterForMobile()),
                ),
              if (isMobile(context))
                 Expanded(
                flex: 2,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 1.5,
                  child: Column(
                    children: [
                      const SizedBox(height: 80,),
                      const Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          'Latest on SLA Printers',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height /40,
                      ),
                      const Flexible(child: MobileSlider()),
                      SizedBox(
                        height: MediaQuery.of(context).size.height /40,
                      ),
                      const Text(
                        'Latest on FDM Printers',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height /40,
                      ),
                      const Flexible(child: MobileSlider()),
                    ],
                  ),
                ),
              ),
              if (isMobile(context))
                 SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
              if (isMobile(context))
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(color: Color(0xFF00CED1)),
                  child: Column(
                    children: [
                      const Flexible(
                        child: ProfileContainer(),
                      ),
                      const Text("Beginner’s guide to buy the \n"
                          " right 3D Printer", style: TextStyle(fontSize: 20,),textAlign: TextAlign.center,),
                      SizedBox(height: MediaQuery.of(context).size.height / 50,),
                      Container(
                        height: MediaQuery.of(context).size.height / 10,
                        width: MediaQuery.of(context).size.width / 3,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: TextButton(
                            onPressed: (){}, child: const Center(child: Text('Beginner’s Guide', style: TextStyle(color: Colors.black),)),),
                      )
                    ],
                  ),
                ),
              if(isMobile(context))
                Container(
                  height: MediaQuery.of(context).size.height /2,
                  decoration: const BoxDecoration(
                    color: Colors.white
                  ),
                  child: const Column(
                    children: [
                      SizedBox(height: 50,),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text('Unsere Top 5'),
                      ),
                      ShaderSliderForMobile(),
                    ],
                  ),
                ),
              if(isMobile(context))
                Container(
                  height: MediaQuery.of(context).size.height / 1.5,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Color(0xFFF5F2F9)
                  ),
                  child: Column(
                    children: [
                      Image.network('lib/images/Group.png', height: MediaQuery.of(context).size.height/3,width: MediaQuery.of(context).size.width,),
                      SizedBox(height: MediaQuery.of(context).size.height/60,),
                      const Text('What’s new in the \n 3D world', style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 24
                      ),),
                      SizedBox(height: MediaQuery.of(context).size.height/40,),
                      Container(
                        height: MediaQuery.of(context).size.height / 12,
                        width: MediaQuery.of(context).size.width / 2.5,
                        decoration: BoxDecoration(
                            color: const Color(0xFF00CED1),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: TextButton(
                          onPressed: (){}, child: const Center(child: Text('News and Events', style: TextStyle(color: Colors.black),)),),
                      )
                    ],
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuButton(String label) {
    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      child: GestureDetector(
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 200),
          style: TextStyle(
            decorationColor: Colors.cyan,
            decorationThickness: 7,
            decoration:
                isHovered ? TextDecoration.underline : TextDecoration.none,
          ),
          child: Center(
            child: Text(
              label,
              style: const TextStyle(fontSize: 12),
            ),
          ),
        ),
        onTap: () {
          // Add any onTap functionality here
        },
      ),
    );
  }

  void _onHover(bool hover) {
    setState(() {
      isHovered = hover;
    });
  }
}
