import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thrift_books/consts/colors.dart';
import 'package:thrift_books/consts/my_icons.dart';
import 'package:thrift_books/provider/dark_theme_provider.dart';
import 'package:thrift_books/screens/cart.dart';
import 'package:thrift_books/screens/wishlist.dart';
import 'package:thrift_books/widget/feeds_products.dart';

class ProductDetails extends StatefulWidget {
  static const routeName = '/ProductDetails';
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  GlobalKey previewContainer = new GlobalKey();
  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            foregroundDecoration: BoxDecoration(color: Colors.black12),
            height: MediaQuery.of(context).size.height * 0.45,
            width: double.infinity,
            child: Image.network(
                "https://cdn1.vectorstock.com/i/thumb-large/62/60/default-avatar-photo-placeholder-profile-image-vector-21666260.jpg"),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 250),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            splashColor: Colors.purple.shade200,
                            onTap: () {},
                            borderRadius: BorderRadius.circular(30),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.save,
                                size: 23,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            splashColor: Colors.purple.shade200,
                            onTap: () {},
                            borderRadius: BorderRadius.circular(30),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.share,
                                size: 23,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    //padding: const EdgeInsets.all(16.0),
                    color: Theme.of(context).scaffoldBackgroundColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.9,
                                child: Text(
                                  'title',
                                  maxLines: 2,
                                  style: TextStyle(
                                    // ignore: deprecated_member_use
                                    color: Theme.of(context).textSelectionColor,
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'US \$ 15',
                                style: TextStyle(
                                    color: themeState.darkTheme
                                        ? Theme.of(context).disabledColor
                                        : ColorsConsts.subTitle,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 21.0),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 3.0),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Divider(
                            thickness: 1,
                            color: Colors.grey,
                            height: 1,
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Description',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 21.0,
                              color: themeState.darkTheme
                                  ? Theme.of(context).disabledColor
                                  : ColorsConsts.subTitle,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Divider(
                            thickness: 1,
                            color: Colors.grey,
                            height: 1,
                          ),
                        ),
                        _details(themeState.darkTheme, 'Brand', 'BrandName'),
                        _details(themeState.darkTheme, 'Quantity', '12 Left'),
                        _details(themeState.darkTheme, 'Category', 'Cat Name'),
                        _details(themeState.darkTheme, 'Popularity', 'Popular'),
                        SizedBox(
                          height: 15,
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.grey,
                          height: 1,
                        ),

                        //const SizedBox(height: 15.0),
                        Container(
                          color: Theme.of(context).backgroundColor,
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(height: 10.0),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'No reviews yet',
                                  style: TextStyle(
                                    // ignore: deprecated_member_use
                                    color: Theme.of(context).textSelectionColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 21.0,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text(
                                  'Be the first to review!!',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20.0,
                                    color: themeState.darkTheme
                                        ? Theme.of(context).disabledColor
                                        : ColorsConsts.subTitle,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 70,
                              ),
                              Divider(
                                thickness: 1,
                                color: Colors.grey,
                                height: 1,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  //const SizedBox(height:15.0),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(8.0),
                    color: Theme.of(context).scaffoldBackgroundColor,
                    child: Text(
                      'Suggested products :',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    width: double.infinity,
                    height: 300,
                    child: ListView.builder(
                      itemCount: 7,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext ctx, int index) {
                        return FeedProducts(
                          description: '',
                          imageUrl: '',
                          price: null,
                          isFavorite: null,
                          id: '',
                          quantity: null,
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              title: Text(
                "DETAIL",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    MyAppIcons.wishlist,
                    color: ColorsConsts.black,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(WishlistScreen.routeName);
                  },
                ),
                IconButton(
                  icon: Icon(
                    MyAppIcons.cart,
                    color: ColorsConsts.cartColor,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(CartScreen.routeName);
                  },
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 50,
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      shape: RoundedRectangleBorder(side: BorderSide.none),
                      color: Colors.redAccent.shade400,
                      onPressed: () {},
                      child: Text(
                        'Add to Cart'.toUpperCase(),
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 50,
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      shape: RoundedRectangleBorder(side: BorderSide.none),
                      color: Colors.white,
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            'Buy now'.toUpperCase(),
                            style: TextStyle(
                              fontSize: 14,
                              // ignore: deprecated_member_use
                              color: Theme.of(context).textSelectionColor,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.payment,
                            color: Colors.green.shade700,
                            size: 19,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: themeState.darkTheme
                        ? Theme.of(context).disabledColor
                        : ColorsConsts.subTitle,
                    height: 50,
                    child: InkWell(
                      splashColor: ColorsConsts.favColor,
                      onTap: () {},
                      child: Center(
                        child: Icon(
                          MyAppIcons.wishlist,
                          color: ColorsConsts.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
    // ignore: todo
    // TODO: implement build
  }

  Widget _details(bool themeState, String title, String info) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 16, right: 16),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              // ignore: deprecated_member_use
              color: Theme.of(context).textSelectionColor,
              fontWeight: FontWeight.w600,
              fontSize: 21.0,
            ),
          ),
          Text(
            info,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20.0,
              color: themeState
                  ? Theme.of(context).disabledColor
                  : ColorsConsts.subTitle,
            ),
          ),
        ],
      ),
    );
  }
}
