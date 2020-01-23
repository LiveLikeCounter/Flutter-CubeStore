import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/iconButton.dart';
import '../core/util.dart';
import '../screens/productbox.dart';

class Product extends StatefulWidget {
  static const routeName = '/product';

  Product({Key key}) : super(key: key);

  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0, 0.5, 1],
          colors: [
            CustomColors.LiniarBlack1,
            CustomColors.LiniarBlack2,
            CustomColors.LiniarBlack3,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                iconButton(context, 'menu', 'top'),
                Container(
                  child: SvgPicture.asset('assets/images/Cube-logo.svg'),
                ),
                iconButton(context, 'search', 'top'),
              ],
            ),
            Expanded(
              child: Container(),
            ),
            Container(
              child: Image.asset('assets/images/cube.png'),
            ),
            Expanded(
              child: Container(),
            ),
            Container(
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Gold Cube - G',
                      style: CustomTextStyles.HeaderTextLarge),
                  Text('Luxury cube with fine gold',
                      style: CustomTextStyles.HeaderTextSmall),
                  Text('\$700.000', style: CustomTextStyles.MoneyHeader),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(),
                ),
                iconButton(context, 'left', 'bottom'),
                Expanded(
                  child: Container(),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(ProductBox.routeName);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: 55,
                    child: Center(
                      child: Text('BUY NOW', style: CustomTextStyles.ButtonText),
                    ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        CustomColors.GoldButton1,
                        CustomColors.GoldButton2
                      ],
                      // begin: Alignment(-2.0, -1.0),
                      // end: Alignment(2.0, 1.0),
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(55),
                    ),
                    border:
                        Border.all(color: CustomColors.BlackBorder1, width: 4),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xff3E4245),
                          offset: Offset(-5.0, -5.0),
                          blurRadius: 30.0,
                          spreadRadius: 1.0),
                      BoxShadow(
                          color: Color(0xff171A1C),
                          offset: Offset(5.0, 5.0),
                          blurRadius: 30.0,
                          spreadRadius: 1.0),
                    ],
                  ),
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                iconButton(context, 'heart', 'bottom'),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
            Expanded(
              flex: 2,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
