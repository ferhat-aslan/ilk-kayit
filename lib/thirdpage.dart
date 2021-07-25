import 'package:flutter/material.dart';

class thirdpage extends StatefulWidget {
  const thirdpage({Key? key}) : super(key: key);

  @override
  _thirdpageState createState() => _thirdpageState();
}

class _thirdpageState extends State<thirdpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("üçünncüsayfa"),
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("geridönüşbutonu"))
        ],
      ),
    );
  }
}
