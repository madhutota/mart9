import 'package:flutter/material.dart';

class GridListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.73),
              itemBuilder: (BuildContext buildContext, int index) {
                return listItem();
              }),
        ),
      ),
    );
  }

  Widget listItem() {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey)),
            padding: EdgeInsets.all(3),
            child: Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Image.asset(
                      'assets/images/logo_mart9_bag.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Mart9'),
                SizedBox(
                  height: 10,
                ),
                Text('Mart9'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
