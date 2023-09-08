import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home:HomeActivity());
  }

}
class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Text("Inventory"),

      ),
    bottomNavigationBar: BottomNavigationBar(
    currentIndex: 1,
    items: [
    BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home"),
    BottomNavigationBarItem(icon: Icon(Icons.mail),label:"Contact"),
    BottomNavigationBarItem(icon: Icon(Icons.person),label:"ProFile"),
    ],
    ),
    drawer: Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child:UserAccountsDrawerHeader(
              accountName: Text("Abdullah"),
              accountEmail: Text("abdullahtalha@gmail.com"),
              // currentAccountPicture: Image.network("https://i.ibb.co/tPxPVCQ/Abdullahblack-2.jpg"),
              // currentAccountPictureSize:Size.square(50),
            ) ,
          ),
          ListTile(
            leading: Icon(Icons.home),
            title:  Text('Home'),
          ),

          ListTile(
            leading: Icon(Icons.abc_outlined),
            title:  Text('About'),
          ),ListTile(
            leading: Icon(Icons.contact_mail),
            title:  Text('email'),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title:  Text('Phone'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title:  Text('Profile'),
          ),


        ],
      ),
    ),
      body:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,

         children: [
           // Image.asset()
           Image.network("https://i.ibb.co/tPxPVCQ/Abdullahblack-2.jpg",
             height: 200,
             width: 200,
             fit:BoxFit.cover,
            repeat: ImageRepeat.noRepeat,
           ),
           Title(color: (Colors.cyan), child: Text("Abdullah Talha",style: TextStyle(fontSize: 30,
             fontWeight: FontWeight.bold,
             color: Colors.cyanAccent
           ),))
         ],
      ),
    );

  }

}