import 'package:flutter/material.dart';

import 'anasayfa_card.dart';
import 'kayar_category.dart';

class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  _firstpageState createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            kayarcategory(),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 15,
                  crossAxisCount: 1,
                  childAspectRatio: 1.65,
                ),
                itemBuilder: (context, index) => anaSayfaCard(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
