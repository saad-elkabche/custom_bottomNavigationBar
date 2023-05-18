
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../myBottomBar/myBottomBar.dart';
import '../myBottomBar/myBottomBarItem.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedItem=0;

  @override
  Widget build(BuildContext context) {
    List<Widget> pages=[
      Center(child: Text("home",style: Theme.of(context).textTheme.titleLarge,)),
      Center(child: Text("favorite",style: Theme.of(context).textTheme.titleLarge,)),
      Center(child: Text("chat",style: Theme.of(context).textTheme.titleLarge,)),
      Center(child: Text("settings",style: Theme.of(context).textTheme.titleLarge,)),
    ];
    return Scaffold(
      body:pages[selectedItem],
        bottomNavigationBar: myBottomNavBar(items: [
          BottomBarItem(iconAsset: "assets/icons/main.svg"),
          BottomBarItem(iconAsset: "assets/icons/liked.svg"),
          BottomBarItem(iconAsset: "assets/icons/chat.svg"),
          BottomBarItem(iconAsset: "assets/icons/settings.svg"),
        ],
          selctedItemColor: Colors.deepOrangeAccent,
          backGColor: Colors.grey[200],
          onTap: _select_item,

        ),
    );
  }

  void _select_item(int index){
    setState(() {
      selectedItem=index;
    });
  }

}





