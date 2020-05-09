import 'package:flutter/material.dart';
import './login.dart';
import './grid_list.dart';

class SignUpHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Container(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    height: 60,
                    width: 60,
                    child: Image.asset('assets/images/logo_mart9_bag.png')),
                SizedBox(
                  height: 10,
                ),
                Container(
                    height: 20,
                    child: Image.asset('assets/images/logo_mart9.png')),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 16),
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Color(0xFFFFEB6E)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none, labelText: 'Fullname'),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.only(left: 16),
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      //Color(0xFFEEEEEE),
                      color: Color(0xFFFFEB6E)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none, labelText: 'Email'),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.only(left: 16),
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      //Color(0xFFEEEEEE),
                      color: Color(0xFFFFEB6E)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none, labelText: 'Password'),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.black),
                    child: InkWell(
                      onTap: (){
                        Navigator.push<dynamic>(
                          context,
                          MaterialPageRoute<dynamic>(
                            builder: (BuildContext context) => GridListPage(),
                          ),
                        );
                      },
                      child: Center(
                        child: Text(
                          'REGISTER',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 90,
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Colors.black),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push<dynamic>(
                            context,
                            MaterialPageRoute<dynamic>(
                              builder: (BuildContext context) => LoginHomePage(),
                            ),
                          );
                        },
                        child: Text(
                          "Login here",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }
}
