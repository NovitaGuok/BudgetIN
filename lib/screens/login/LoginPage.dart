import 'package:budgetin/screens/register/RegisterPage.dart';
import 'package:budgetin/utils/Assets.dart';
import 'package:budgetin/widget/CustomTheme.dart';
import 'package:budgetin/widget/buttons/Button.dart';
import 'package:budgetin/widget/form/WidgetForm.dart';
import 'package:budgetin/widget/text/WidgetText.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomTheme.colorWhite,
      body: ListView(
        padding: EdgeInsets.fromLTRB(17, 22, 17, 25),
        children: <Widget>[
          Image.asset(Assets.iconAuth),
          WidgetText.montserratSemiBoldBlack28("Login"),
          Padding(padding: EdgeInsets.only(bottom: 29)),
          WidgetForm.email("email", null), //put controller here
          Padding(padding: EdgeInsets.only(bottom: 19)),
          WidgetForm.password("password", null), //put controller here
          Padding(padding: EdgeInsets.only(bottom: 10)),
          WidgetText.montserratMediumGrayLight18("forgot password",
              textAlign: TextAlign.end),
          Padding(padding: EdgeInsets.only(bottom: 36)),
          ButtonLong.large("Login"),
          Padding(padding: EdgeInsets.only(bottom: 126)),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 58,
                  child: Divider(
                    color: CustomTheme.colorGray,
                  ),
                ),
                Column(
                  children: <Widget>[
                    WidgetText.montserratRegularBlack14(
                        "Don't have an account?"),
                    InkWell(
                        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) =>
                            RegisterPage()
                        )),
                        child: WidgetText.montserratRegularBlue14("Register Now"),
                    ),
                  ],
                ),
                Container(
                  width: 58,
                  child: Divider(
                    color: CustomTheme.colorGray,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
