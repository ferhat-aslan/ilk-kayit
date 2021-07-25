import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("Test Text Test"),
        ],
      ),
    );
  }
}



/*AspectRatio(
      aspectRatio: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //ilk child
          Padding(
            padding: EdgeInsets.all(defaultSize! * 2),
            child: Text(
              "Yeni Ürünler",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          //ilk child
          Divider(height: 5),
          //////
          Container(
            decoration: BoxDecoration(color: Colors.white70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: defaultSize * 10,
                      height: defaultSize * 10,
                      child: Text("%95"),
                    ),
                    Text("Pınar Süt"),
                    Container(
                      width: defaultSize * 10,
                      height: defaultSize * 10,
                      child: Text("-%15"),
                    )
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                AspectRatio(
                  aspectRatio: 1.0,
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'assets/images/pinar.jpeg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Text("Text test test test test"),
                SizedBox(
                  height: 4,
                ),
                Text("Text test test test test"),
              ],
            ),
          )
        ],
      ),
    );*/