import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/iconButton.dart';
import '../core/util.dart';

class ProductBox extends StatefulWidget {
  static const routeName = '/productbox';

  ProductBox({Key key}) : super(key: key);

  _ProductBoxState createState() => _ProductBoxState();
}

class _ProductBoxState extends State<ProductBox> {
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
              child: Image.asset('assets/images/BoxCube.png'),
            ),
            Expanded(
              child: Container(),
            ),
            Container(
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Cube Box Color',
                      style: CustomTextStyles.HeaderTextLarge),
                  Text('Choose the color of the Cube Box',
                      style: CustomTextStyles.HeaderTextSmall),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    CustomColors.LiniarBlack2,
                                    CustomColors.LiniarBlack1
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(45),
                                ),
                                border: Border.all(
                                    color: CustomColors.BlackBorder1, width: 2),
                              ),
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    CustomColors.LiniarGold1,
                                    CustomColors.LiniarGold2
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomCenter,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                CustomColors.LiniarGrey1,
                                CustomColors.LiniarGrey2
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(45),
                            ),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xff3D434A),
                                  offset: Offset(-4.0, -4.0),
                                  blurRadius: 5.0,
                                  spreadRadius: 1.0),
                              BoxShadow(
                                  color: Color(0xff1a1a1c),
                                  offset: Offset(4.0, 4.0),
                                  blurRadius: 5.0,
                                  spreadRadius: 1.0),
                            ],
                          ),
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    CustomColors.LiniarBlack2,
                                    CustomColors.LiniarBlack1
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(45),
                                ),
                                border: Border.all(
                                    color: CustomColors.BlackBorder1, width: 2),
                              ),
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    CustomColors.LiniarGreen1,
                                    CustomColors.LiniarGreen2
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomCenter,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
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
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: iconButton(context, 'left', 'bottom'),
                ),
                Expanded(
                  child: Container(),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 55,
                  child: Center(
                    child: Text('PAYMENT', style: CustomTextStyles.ButtonText),
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
                        end: Alignment.bottomCenter),
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
