import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class anaSayfaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.65,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 8,
                    top: 5,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(),
                      Text(
                        "Pınar Multivitaminli Protein Süt",
                        style: TextStyle(
                          fontSize: 21,
                          color: Colors.white,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 5, top: 9, right: 5, bottom: 5),
                        child: Text(
                          "Vitamin",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 5, top: 9, right: 5, bottom: 5),
                        child: Text(
                          "1 paket(500 mL)'teki içerikler:",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Spacer(),
                      buildCardInfoRow(
                          iconsrc: 'assets/images/meal.svg',
                          ttext: "95 Calories"),
                      SizedBox(
                        height: 3,
                      ),
                      buildCardInfoRow(
                          iconsrc: 'assets/images/proteins.svg',
                          ttext: "15 grams"),
                      Spacer(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              AspectRatio(
                aspectRatio: 0.81,
                child: Image.asset(
                  'assets/images/pinar.jpeg',
                  fit: BoxFit.cover,
                  alignment: Alignment.centerLeft,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildCardInfoRow({required String iconsrc, required String ttext}) {
    return Row(
      children: [
        SvgPicture.asset(
          iconsrc,
          height: 25,
          width: 25,
          color: Colors.black,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          ttext,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
