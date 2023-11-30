import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class SearchFilter extends StatelessWidget {
  const SearchFilter({super.key});

  @override
  Widget build(BuildContext context) {

    String? selectedValue;
    final List<String> genderItems = [
      'Male',
      'Female',
    ];
    final _formKey = GlobalKey<FormState>();


    return Container(
      height: 200,
      child: Scaffold(
        backgroundColor: const Color(0xFFD9D9D9),
        body: Center(
          child: Container(
            height: 160,
            width: 1000,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  const Text(
                    "Search for the best deal and discounts",
                    style: TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60, right: 60),
                    child: Container(
                      height: 60,
                      width: 1000,
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10))),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 55,
                                ),
                                Container(
                                  height: 40,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                    BorderRadius.circular(10),
                                  ),
                                  child: DropdownButtonFormField2<String>(
                                    isExpanded: true,
                                    decoration: InputDecoration(
                                      // Add Horizontal padding using menuItemStyleData.padding so it matches
                                      // the menu padding when button's width is not specified.
                                      contentPadding:
                                      const EdgeInsets.symmetric(
                                          vertical: 16),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(10),
                                      ),
                                      // Add more decoration..
                                    ),
                                    hint: const Text(
                                      'All Machines',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    items: genderItems
                                        .map((item) =>
                                        DropdownMenuItem<String>(
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
                                    buttonStyleData:
                                    const ButtonStyleData(
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
                                        borderRadius:
                                        BorderRadius.circular(15),
                                      ),
                                    ),
                                    menuItemStyleData:
                                    const MenuItemStyleData(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 40,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                    BorderRadius.circular(10),
                                  ),
                                  child: DropdownButtonFormField2<String>(
                                    isExpanded: true,
                                    decoration: InputDecoration(
                                      // Add Horizontal padding using menuItemStyleData.padding so it matches
                                      // the menu padding when button's width is not specified.
                                      contentPadding:
                                      const EdgeInsets.symmetric(
                                          vertical: 16),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(10),
                                      ),
                                      // Add more decoration..
                                    ),
                                    hint: const Text(
                                      'All Manufactures',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    items: genderItems
                                        .map((item) =>
                                        DropdownMenuItem<String>(
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
                                    buttonStyleData:
                                    const ButtonStyleData(
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
                                        borderRadius:
                                        BorderRadius.circular(15),
                                      ),
                                    ),
                                    menuItemStyleData:
                                    const MenuItemStyleData(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 40,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                    BorderRadius.circular(10),
                                  ),
                                  child: DropdownButtonFormField2<String>(
                                    isExpanded: true,
                                    decoration: InputDecoration(
                                      // Add Horizontal padding using menuItemStyleData.padding so it matches
                                      // the menu padding when button's width is not specified.
                                      contentPadding:
                                      const EdgeInsets.symmetric(
                                          vertical: 16),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(10),
                                      ),
                                      // Add more decoration..
                                    ),
                                    hint: const Text(
                                      'All Products',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    items: genderItems
                                        .map((item) =>
                                        DropdownMenuItem<String>(
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
                                    buttonStyleData:
                                    const ButtonStyleData(
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
                                        borderRadius:
                                        BorderRadius.circular(15),
                                      ),
                                    ),
                                    menuItemStyleData:
                                    const MenuItemStyleData(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 40,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                    BorderRadius.circular(10),
                                  ),
                                  child: DropdownButtonFormField2<String>(
                                    isExpanded: true,
                                    decoration: InputDecoration(
                                      // Add Horizontal padding using menuItemStyleData.padding so it matches
                                      // the menu padding when button's width is not specified.
                                      contentPadding:
                                      const EdgeInsets.symmetric(
                                          vertical: 16),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(10),
                                      ),
                                      // Add more decoration..
                                    ),
                                    hint: const Text(
                                      'All Prices',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    items: genderItems
                                        .map((item) =>
                                        DropdownMenuItem<String>(
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
                                    buttonStyleData:
                                    const ButtonStyleData(
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
                                        borderRadius:
                                        BorderRadius.circular(15),
                                      ),
                                    ),
                                    menuItemStyleData:
                                    const MenuItemStyleData(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.cyan,
                                      borderRadius:
                                      BorderRadius.circular(10)),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.search)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
