import 'package:flutter/material.dart';
// ignore: unused_import
// ignore: implementation_imports

import 'package:provider/provider.dart';
import 'package:thrift_books/consts/colors.dart';
import 'package:thrift_books/provider/dark_theme_provider.dart';

class WishlistEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 20), //80
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('android/assets/images/wishlist_empty.png'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          /* child: Text(
            'Your Wishlist Is Empty',
            textAlign: TextAlign.center,
            style: TextStyle(
                // ignore: deprecated_member_use
                color: Theme.of(context).textSelectionColor,
                fontSize: 32, //36
                fontWeight: FontWeight.w600),
          ),*/
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Explore more and shortlist some items!!',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: themeChange.darkTheme
                    ? Theme.of(context).disabledColor
                    : ColorsConsts.subTitle,
                fontSize: 22, //26
                fontWeight: FontWeight.w600),
          ),
        ),
        // ignore: deprecated_member_use
        SizedBox(
          height: 30,
        ), //30
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.06,
          // ignore: deprecated_member_use
          child: RaisedButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: BorderSide(color: Colors.red)),
            color: Colors.redAccent,
            child: Text(
              'Add a wish'.toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyle(
                  // ignore: deprecated_member_use
                  color: Theme.of(context).textSelectionColor,
                  fontSize: 26,
                  fontWeight: FontWeight.w600),
            ),
          ),
        )
      ],
    );
  }
}
