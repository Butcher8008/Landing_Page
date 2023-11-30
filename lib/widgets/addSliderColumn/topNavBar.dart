import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:newfrontend/widgets/SearchFilter.dart';
import 'package:newfrontend/widgets/addSliderColumn/3D_Duckers.dart';
import 'package:newfrontend/widgets/addSliderColumn/NewsAndEnvents.dart';
import 'package:newfrontend/widgets/addSliderColumn/ProfileForDesktop.dart';
import 'package:newfrontend/widgets/addSliderColumn/ShadedMaskSliderForDesktop.dart';
import 'package:newfrontend/widgets/addSliderColumn/addSliderColumn.dart';

class topNavBar extends StatefulWidget {
  const topNavBar({super.key});

  @override
  State<topNavBar> createState() => _topNavBarState();
}

class _topNavBarState extends State<topNavBar> with TickerProviderStateMixin {
  final List<String> items = [
    'FDM Printers',
    'SLA Printer',
  ];
  String? selectedValue;
  final List<String> genderItems = [
    'Male',
    'Female',
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 9, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 20,
        backgroundColor: const Color(0xFFFFFFFF),
        bottom: TabBar(
          controller: _tabController,
          indicatorWeight: 6,
          indicatorColor: const Color(0xFF00CED1),
          tabs: <Widget>[
            const Tab(
              child: Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text('Startseite', style: TextStyle(fontSize: 20,color: Color(0xFF222222)),),
              ),
            ),
            const Tab(
              child: Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text('Beste Liste',style: TextStyle(fontSize: 20,color: Color(0xFF222222))),
              ),
            ),
            Tab(child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: DropdownButtonHideUnderline(),
            )),
            const Tab(
              child: Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text('data',style: TextStyle(fontSize: 20,color: Color(0xFF222222))),
              ),
            ),
            const Tab(
              child: Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text('Laser',style: TextStyle(fontSize: 20,color: Color(0xFF222222))),
              ),
            ),
            const Tab(
              child: Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text('Scanner',style: TextStyle(fontSize: 20,color: Color(0xFF222222))),
              ),
            ),
            const Tab(
              child: Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text('Filamente',style: TextStyle(fontSize: 20,color: Color(0xFF222222))),
              ),
            ),
            const Tab(
              child: Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text('Ratgeber',style: TextStyle(fontSize: 20,color: Color(0xFF222222))),
              ),
            ),
            const Tab(
              child: Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text('News',style: TextStyle(fontSize: 20,color: Color(0xFF222222))),
              ),
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Column(
            children: [
              SearchFilter(),
              addSliderColumn(),
              ProfileForDesktop(),
              ShadedMaskedSliderForDesktop(),
              SizedBox(height: 50,),
              NewsAndEvents()
            ],
          ),
          Center(
            child: Text("It's rainy here"),
          ),
          Center(
            child: Text("It's sunny here"),
          ),
          Center(
            child: Text("It's sunny here"),
          ),
          Center(
            child: Text("It's sunny here"),
          ),
          Center(
            child: Text("It's sunny here"),
          ),
          Center(
            child: Text("It's sunny here"),
          ),
          Center(
            child: Text("It's sunny here"),
          ),
          Center(
            child: Text("It's sunny here"),
          ),
        ],
      ),
    );
  }

  Widget DropdownButtonHideUnderline() {
    return DropdownButton2<String>(
      isExpanded: true,
      hint: const Text(
        '3D Drucker'
          ,style: TextStyle(fontSize: 20,color: Color(0xFF222222))
      ),
      items: items
          .map((String item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ))
          .toList(),
      value: selectedValue,
      onChanged: (String? value) {
        setState(() {
          selectedValue = value;
        });
        if (value != null) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => druckers(selectedValue: value),
            ),
          );
        }
      },
      iconStyleData: const IconStyleData(
        icon: Icon(
          Icons.keyboard_arrow_down_outlined,
        ),
      ),
      buttonStyleData: const ButtonStyleData(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
        )
      ),
      menuItemStyleData: const MenuItemStyleData(
        height: 50,
        padding: EdgeInsets.only(left: 14, right: 14),
      ),
    );
  }
}

