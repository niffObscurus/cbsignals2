import 'package:cbsignals/constants.dart';
import 'package:cbsignals/screens/home/components/header_with_searchbox.dart';
import 'package:cbsignals/screens/home/components/title_with_more.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BodyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Pour prendre la total partie de l'ecran
    Size size = MediaQuery.of(context).size;
    // il est activer sur les petit apareil
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),

          // Corp de la page
          TitleWithMoreBtn(title : "Recommander",press : (){},),

          //it will cover 40% of our total width
          DepositeMethode(),

        ],
      ),
    );
  }
}

class DepositeMethode extends StatelessWidget {
  const DepositeMethode({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding /2,
          bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset("assets/images/image_1.png"),
          Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.7),
            ),
            child: Center(
              child: Text("PERFECT MONEY",
                style: Theme.of(context)
                    .textTheme
                    .button
                    .copyWith(color: kPrimaryColor),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(kDefaultPadding/2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: kPrimaryColor.withOpacity(0.23),
                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                RichText(
                text: TextSpan(
                children: [
                  // Minimum Deposite
                  TextSpan(
                    text: "Minimum : ",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                  TextSpan(
                    text: "10".toUpperCase(),
                    style: TextStyle(
                      color: kPrimaryColor.withOpacity(0.8),
                    ),
                  ),

                  //Maximim deposite
                  TextSpan(
                    text: "\nMaximum : ",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                  TextSpan(
                    text: "10".toUpperCase(),
                    style: TextStyle(
                      color: kPrimaryColor.withOpacity(0.8),
                    ),
                  ),
                ],
              ),
              ),
                //Spacer(),
                /*Text("\$4000",
                  style: Theme.of(context)
                      .textTheme
                      .button
                      .copyWith(color: kPrimaryColor),
                ),*/
              ],
            ),
          ),
        ],
      ),
    );
  }
}
