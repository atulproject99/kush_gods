import 'package:flutter/material.dart';
import 'package:kush_gods/consts/app_color.dart';

class SearchItemDesign extends StatefulWidget {
  final List<String> itemList;
  static String? sItem;

  SearchItemDesign({required this.itemList});

  @override
  _SearchItemDesignState createState() => _SearchItemDesignState();
}

String selectItem = "";

class _SearchItemDesignState extends State<SearchItemDesign> {
  _buildList() {
    List<Widget> choices = [];
    widget.itemList.forEach((item) {
      choices.add(Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          child: ChoiceChip(
            shape: const RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey)),
            label: Text(
              item,
              style: TextStyle(
                  color: SearchItemDesign.sItem != null
                      ? SearchItemDesign.sItem == item
                          ? Colors.white
                          : Colors.black
                      : selectItem == item
                          ? Colors.white
                          : Colors.black),
            ),
            selectedColor: Colors.black,
            padding: const EdgeInsets.all(10),
            //disabledColor: AppColor.backgroundColor,
            backgroundColor: AppColor.backgroundColor,
            selected: SearchItemDesign.sItem != null
                ? SearchItemDesign.sItem == item
                : selectItem == item,
            onSelected: (selected) {
              if (SearchItemDesign.sItem != null) {
                SearchItemDesign.sItem = null;
              }
              setState(() {
                selectItem = item;
                print(selectItem);
              });
            },
          ),
        ),
      ));
    });
    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(children: _buildList());
  }

  String getSelectedItem() {
    if (SearchItemDesign.sItem != null) {
      return SearchItemDesign.sItem!;
    } else {
      return selectItem;
    }
  }
}
