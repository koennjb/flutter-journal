import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:journal/helpers/Constants.dart';
import 'package:journal/helpers/colors.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance =
        ScreenUtil(width: 750, height: 1334, allowFontScaling: true)
          ..init(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 28, right: 28),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                appTitle.toUpperCase(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenUtil.getInstance().setSp(75)
                ),
              ),
              Container(
                width: double.infinity,
                child: Card(
                  elevation: 12,
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: ScreenUtil.getInstance().setSp(50)),
                        ),
                        SizedBox(height: 20),
                        Text(
                          usernameLabel,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: ScreenUtil.getInstance().setSp(26)
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: usernameHint,
                            hintStyle: TextStyle(
                              color: grey,
                              fontSize: 12
                            )
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          passwordLabel,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: ScreenUtil.getInstance().setSp(26)
                          ),
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: passwordHint,
                            hintStyle: TextStyle(
                              color: grey,
                              fontSize: 12
                            )
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              forgotPassword,
                              style: TextStyle(
                                color: blue
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8), side: BorderSide(color: Colors.transparent)),
                    color: primary,
                    onPressed: () => {},
                    child: Text(
                      loginLabel.toUpperCase(),
                       style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: ScreenUtil.getInstance().setSp(30))),
                  ),
                  OutlineButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                       side: BorderSide(color: primary)
                      ),
                    borderSide: BorderSide(color: primary),
                    onPressed: () => {},
                    child: Text(
                      signUpLabel.toUpperCase(),
                       style: TextStyle(color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: ScreenUtil.getInstance().setSp(30))),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
