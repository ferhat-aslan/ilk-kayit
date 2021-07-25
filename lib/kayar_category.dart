import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class kayarcategory extends StatefulWidget {
  kayarcategory({Key? key}) : super(key: key);

  @override
  _kayarcategoryState createState() => _kayarcategoryState();
}

class _kayarcategoryState extends State<kayarcategory> {
  List<String> categories = [
    "All",
    "indian",
    "italian",
    "Mexican",
    "Chinese",
    "French",
    "Antebian"
  ];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildKayarCategoryItem(index),
      ),
    );
  }

  Widget buildKayarCategoryItem(int index) => GestureDetector(
        onTap: () {
          setState(() {
            selectedindex = index;
          });
        },
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 5),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            categories[index],
            style: GoogleFonts.architectsDaughter(
                fontSize: 18,
                color: selectedindex == index
                    ? Colors.green
                    : Colors.grey.shade800),
          ),
          decoration: BoxDecoration(
            color:
                selectedindex == index ? Color(0xFFEFF3EE) : Colors.transparent,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      );
}
