
import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor;
  final Text title;
  final AppBar appBar;

  /// you can add more fields that meet your needs

  const BaseAppBar({Key?key, required this.backgroundColor,required this.title, required this.appBar});
 

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: title,
      backgroundColor: backgroundColor,
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}


Widget startDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(color: Colors.orangeAccent),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: const <Widget>[
                FlutterLogo(
                  size: 48.0,
                ),
                Text(
                  "Flutter Example",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  "flutterexample@gmail.com",
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
          createDrawerListTiles(Icons.my_library_add_rounded, "Add Item"),
          createDrawerListTiles(Icons.my_library_books_sharp, "My Items"),
          createDrawerListTiles(Icons.slideshow, "Slideshow"),
          createDrawerListTiles(Icons.build, "Tools"),
          const Divider(),
          createDrawerListTiles(Icons.share, "Share"),
          createDrawerListTiles(Icons.send, "Send"),
        ],
      ),
    );
  }

  ///
  /// Account list tile
  ///


  ///
  /// Drawer container list tiles
  /// [IconData]
  ///
  Widget createDrawerListTiles(IconData icon, String title) {
    return ListTile(
      leading: Icon(
        icon,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16.0,
        ),
      ),
      onTap: () {
      },
    );
  }

  ///
  /// creates the circular avatar for the header
  /// [CircleAvatar]
  ///
