import 'package:flutter/material.dart';


class SettingScren extends StatefulWidget {
  const SettingScren({Key? key}) : super(key: key);

  @override
  State<SettingScren> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Row(
          children: [
            Icon(Icons.menu, color: Colors.white), 
            SizedBox(width: 10), 
            Text('Sita', style: TextStyle(color: Colors.white)),
            SizedBox(width: 10),
            Text('My Wishlist', style: TextStyle(color: Colors.white)),
            SizedBox(width: 10),
            Icon(Icons.shopping_cart, color: Colors.white),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                color: Colors.green, 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: const ListTile(title: Text('Setting', style: TextStyle(color: Colors.white))),
              ),
              Card(
                color: Colors.green, 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: ListTile(
                  title: const Text('Edit Password', style: TextStyle(color: Colors.white)),
                  onTap: () {},
                ),
              ),
              Card(
                color: Colors.green, 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: ListTile(
                  title: const Text('Edit Profile', style: TextStyle(color: Colors.white)),
                  onTap: () {},
                ),
              ),
              Card(
                color: Colors.green, 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: ListTile(
                  title: const Text('Edit Shipping Details', style: TextStyle(color: Colors.white)),
                  onTap: () {},
                ),
              ),
              Card(
                color: Colors.green, 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: ListTile(
                  leading: Icon(Icons.logout, color: Colors.white),
                  title: Text('Logout', style: TextStyle(color: Colors.white)),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
