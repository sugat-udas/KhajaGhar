import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:khaja_ghar/Methods/commonMethods.dart';
import 'package:khaja_ghar/ScreenController/HomeScreenController.dart';
import 'package:khaja_ghar/ScreenController/orderController.dart';
import 'package:khaja_ghar/supporterFiles/EachOrderItemMenu.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  HomeScreenController _homeScreenController;

  OrderController _orderController;

  String url =
      "https://scontent.fktm3-1.fna.fbcdn.net/v/t1.0-9/122777514_4658406440867560_8980358279672578081_o.jpg?_nc_cat=111&ccb=2&_nc_sid=09cbfe&_nc_ohc=K7SoRreE8DAAX_sx1qg&_nc_ht=scontent.fktm3-1.fna&oh=f00647a1eaff1045999abed17c74f31a&oe=60286AD1";

  var realOrientation;

  double height;

  double width;

  bool isMenuFixed(BuildContext context) {
    return MediaQuery.of(context).size.width > 500;
  }

  @override
  Widget build(BuildContext context) {
    _homeScreenController = Provider.of<HomeScreenController>(context);

    _orderController = Provider.of<OrderController>(context);

    realOrientation = MediaQuery.of(context).orientation;

    if (getDeviceType()) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
    }
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      drawer: (getDeviceType() ||
              (getDeviceType() == false &&
                  _homeScreenController.getOpacityForOrientation(context) == 1))
          ? _menuSideBar(context)
          : null,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.0),
        child: _AppBarClass(),
      ),
      body: _body(context),
    );
  }

  Widget _menuSideBar(context) {
    return Card(
      elevation: 2.0,
      child: Container(
        width: 207.0,
        color: Colors.black,
        child: Drawer(
          elevation: 0,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, top: 15, bottom: 420, right: 8),
              child: Column(
                children: [
                  (getDeviceType() ||
                          _homeScreenController
                                  .getOpacityForOrientation(context) ==
                              1)
                      ? SizedBox(
                          height: 75,
                          child: DrawerHeader(
                            child: Text(
                              'Menu',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            margin: EdgeInsets.zero,
                          ),
                        )
                      : SizedBox(
                          height: 5,
                        ),
                  SizedBox(
                    height: 10,
                  ),
                  EachOrderItemMenu(
                    icons: Icons.dashboard,
                    text: 'Dashboard',
                    index: 0,
                  ),
                  (_homeScreenController.productTOggleFlag &&
                          _homeScreenController.currentMenuItemIndex == 1)
                      ? _allOrderMenuItem()
                      : EachOrderItemMenu(
                          icons: Icons.stacked_bar_chart,
                          text: "Orders",
                          index: 1,
                          trailing: Icons.keyboard_arrow_down,
                        ),
                  EachOrderItemMenu(
                    icons: Icons.dashboard,
                    text: 'Product',
                    index: 2,
                  ),
                  EachOrderItemMenu(
                    icons: Icons.dashboard,
                    text: 'Customers',
                    index: 3,
                  ),
                  EachOrderItemMenu(
                    icons: Icons.dashboard,
                    text: 'Employees',
                    index: 4,
                  ),
                  EachOrderItemMenu(
                    icons: Icons.dashboard,
                    text: 'Credit',
                    index: 5,
                  ),
                  EachOrderItemMenu(
                    icons: Icons.dashboard,
                    text: 'Settings',
                    index: 5,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _allOrderMenuItem() {
    return Container(
      height: 218,
      child: Stack(
        children: [
          Positioned(
            top: 30,
            left: 5,
            child: _orderVariousPage(),
          ),
          EachOrderItemMenu(
            icons: Icons.stacked_bar_chart,
            text: "Orders",
            index: 1,
            trailing: Icons.keyboard_arrow_down,
          )
        ],
      ),
    );
  }

  Widget _orderVariousPage() {
    return Container(
      width: 180,
      padding: EdgeInsets.only(
        top: 10,
        bottom: 10,
        left: 10,
        right: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 6,
          ),
          for (var each in _homeScreenController.orderList)
            _eachOrderMenuItem(
                each, _homeScreenController.orderList.indexOf(each))
        ],
      ),
    );
  }

  _eachOrderMenuItem(String label, int index) {
    return GestureDetector(
      onTap: () {
        _orderController.onEachOrderMenuClick(index);
        //_homeScreenController.onSelectOrderMenu(index);
        //_orderController.onEachOrderMenuClick(index);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: _orderController.currentOrderIndex == index
                ? Colors.green
                : Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _body(context) {
    return Consumer<HomeScreenController>(
        builder: (context, homeController, child) {
      return Row(
        children: [
          (getDeviceType() == false &&
                  _homeScreenController.getOpacityForOrientation(context) == 0)
              ? _menuSideBar(context)
              : SizedBox(),
          _homeScreenController.screenList[homeController.currentMenuItemIndex],
        ],
      );
    });
  }
}

class _AppBarClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.green),
      backgroundColor: Colors.white,
      title: Row(
        children: [
          Image(
            image: AssetImage(
              'assets/foodicon.png',
            ),
            color: Colors.green,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "KHAJAGHAR -",
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          Text(
            " Admin",
            style: TextStyle(color: Colors.green, fontSize: 16),
          )
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 35.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage('assets/profile photo.png'),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Ram Thapa',
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                width: 10,
              ),
              Image(image: AssetImage('assets/Group 8.png'))
            ],
          ),
        )
      ],
    );
  }
}
