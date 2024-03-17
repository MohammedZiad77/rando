import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import '../pages/home.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
    
        child: ListView(
          children: [
      Column(
        children: [
          UserAccountsDrawerHeader(
            // currentAccountPictureSize: const Size.square(80),
            currentAccountPicture: SizedBox(
                width: 100,
                height: 100,
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  child: ClipOval(
                    child: Image.asset(
                      "images/slider/5.jpg",
                      fit: BoxFit.cover,
                      height: 100,
                      width: 100,
                    ),
                  ),
                )),
            decoration: const BoxDecoration(
                color: Colors.pink,
                image: DecorationImage(
                    image: AssetImage("images/drawer.jpg"), fit: BoxFit.cover)),
            accountName: const Text("Mohammed Ziad"),
            accountEmail: const Text('mhmdzied22@gamil.com'),
          ),

          ListTile(
            title: const Text(
              "الصفحة الرئيسية",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            leading: const Icon(
              Icons.home,
              color: Colors.blue,
              size: 25,
            ),
            onTap: () {
              Navigator.of(context).pushNamed('homepage');
            },

            // trailing: Icon(Icons.access_time_filled),
            // subtitle: Text("myapp"),
            // isThreeLine: true,
            // dense: true,
            // contentPadding: EdgeInsets.all(10),
          ),
          ListTile(
            title: const Text(
              " الأقسام",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            leading: const Icon(
              Icons.category,
              color: Colors.blue,
              size: 25,
            ),
            onTap: () {
              Navigator.of(context).pushNamed('categories');
            }, //Note:what is the deference( Navigator.pushNamed(context, 'categories');)
          ),
          Divider(
            color: Colors.blue,
          ), ////////////////////////////
          ListTile(
            title: const Text(
              " حول التطبيق",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            leading: const Icon(
              Icons.info,
              color: Colors.blue,
              size: 25,
            ), /////////we must change thid icon
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              "الإعدادت",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            leading: const Icon(
              Icons.settings,
              color: Colors.blue,
              size: 25,
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              "تسجيل الخروج",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            leading: const Icon(
              Icons.exit_to_app,
              color: Colors.blue,
              size: 25,
            ),
            onTap: () {},
          ),
        ],
      ),
    ]));
  }
}
