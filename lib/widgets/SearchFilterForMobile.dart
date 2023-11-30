import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class SearchFilterForMobile extends StatelessWidget {
  const SearchFilterForMobile({super.key});

  @override
  Widget build(BuildContext context) {
    String? selectedValue;
    final List<String> genderItems = [
      'Male',
      'Female',
    ];
    final formKey = GlobalKey<FormState>();

    return Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              const Text(
                'Search for best deals \nand discounts',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 20,
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.w800,
                  height: 0,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 250,
                  width: 400,
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5))),
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 25,
                        ),
                        Container(
                          height: 40,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: DropdownButtonFormField2<String>(
                            isExpanded: true,
                            decoration: InputDecoration(
                              // Add Horizontal padding using menuItemStyleData.padding so it matches
                              // the menu padding when button's width is not specified.
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 16),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              // Add more decoration..
                            ),
                            hint: const Text(
                              'All Machines',
                              style: TextStyle(fontSize: 14),
                            ),
                            items: genderItems
                                .map((item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ))
                                .toList(),
                            validator: (value) {
                              if (value == null) {
                                return 'All Machines';
                              }
                              return null;
                            },
                            onChanged: (value) {
                              //Do something when selected item is changed.
                            },
                            onSaved: (value) {
                              selectedValue = value.toString();
                            },
                            buttonStyleData: const ButtonStyleData(
                              padding: EdgeInsets.only(right: 8),
                            ),
                            iconStyleData: const IconStyleData(
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.black45,
                              ),
                              iconSize: 24,
                            ),
                            dropdownStyleData: DropdownStyleData(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            menuItemStyleData: const MenuItemStyleData(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 40,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: DropdownButtonFormField2<String>(
                            isExpanded: true,
                            decoration: InputDecoration(
                              // Add Horizontal padding using menuItemStyleData.padding so it matches
                              // the menu padding when button's width is not specified.
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 16),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              // Add more decoration..
                            ),
                            hint: const Text(
                              'All Manufactures',
                              style: TextStyle(fontSize: 14),
                            ),
                            items: genderItems
                                .map((item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ))
                                .toList(),
                            validator: (value) {
                              if (value == null) {
                                return 'All Manufactures';
                              }
                              return null;
                            },
                            onChanged: (value) {
                              //Do something when selected item is changed.
                            },
                            onSaved: (value) {
                              selectedValue = value.toString();
                            },
                            buttonStyleData: const ButtonStyleData(
                              padding: EdgeInsets.only(right: 8),
                            ),
                            iconStyleData: const IconStyleData(
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.black45,
                              ),
                              iconSize: 24,
                            ),
                            dropdownStyleData: DropdownStyleData(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            menuItemStyleData: const MenuItemStyleData(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 40,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: DropdownButtonFormField2<String>(
                            isExpanded: true,
                            decoration: InputDecoration(
                              // Add Horizontal padding using menuItemStyleData.padding so it matches
                              // the menu padding when button's width is not specified.
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 16),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              // Add more decoration..
                            ),
                            hint: const Text(
                              'All Products',
                              style: TextStyle(fontSize: 14),
                            ),
                            items: genderItems
                                .map((item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ))
                                .toList(),
                            validator: (value) {
                              if (value == null) {
                                return 'All Products';
                              }
                              return null;
                            },
                            onChanged: (value) {
                              //Do something when selected item is changed.
                            },
                            onSaved: (value) {
                              selectedValue = value.toString();
                            },
                            buttonStyleData: const ButtonStyleData(
                              padding: EdgeInsets.only(right: 8),
                            ),
                            iconStyleData: const IconStyleData(
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.black45,
                              ),
                              iconSize: 24,
                            ),
                            dropdownStyleData: DropdownStyleData(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            menuItemStyleData: const MenuItemStyleData(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 40,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: DropdownButtonFormField2<String>(
                            isExpanded: true,
                            decoration: InputDecoration(
                              // Add Horizontal padding using menuItemStyleData.padding so it matches
                              // the menu padding when button's width is not specified.
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 16),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              // Add more decoration..
                            ),
                            hint: const Text(
                              'All Prices',
                              style: TextStyle(fontSize: 14),
                            ),
                            items: genderItems
                                .map((item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ))
                                .toList(),
                            validator: (value) {
                              if (value == null) {
                                return 'All Prices';
                              }
                              return null;
                            },
                            onChanged: (value) {
                              //Do something when selected item is changed.
                            },
                            onSaved: (value) {
                              selectedValue = value.toString();
                            },
                            buttonStyleData: const ButtonStyleData(
                              padding: EdgeInsets.only(right: 8),
                            ),
                            iconStyleData: const IconStyleData(
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.black45,
                              ),
                              iconSize: 24,
                            ),
                            dropdownStyleData: DropdownStyleData(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            menuItemStyleData: const MenuItemStyleData(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 40,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Colors.cyan,
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.search)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
  }
}
