import 'package:flutter/material.dart';

class ListItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(15, 8, 15, 8),
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext buildContext, int index) {
            return listItem();
          },
        ),
      ),
    );
  }

  Widget listItem() {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            height: 200,
            child: Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 2,
                  child: Image.asset(
                    'assets/images/logo_mart9_bag.png',
                    fit: BoxFit.none,
                  ),
                ),
                Text('Mart9'),
                Text('Mart9'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
