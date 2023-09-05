import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
          theme: ThemeData(primarySwatch: Colors.green),
          darkTheme: ThemeData(primarySwatch: Colors.amber),
          color: Colors.blue,
          debugShowCheckedModeBanner: false,
          home:HomeActivity());
  }

}
class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});
MySnakar(massage,context){
  return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(massage))
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       titleSpacing: 40,
        toolbarHeight: 60,
        title:Text("Inventory",style:TextStyle(color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold)),
      actions: [
        IconButton(onPressed: (){MySnakar("search", context);},  icon:Icon(Icons.search)),
        IconButton(onPressed: (){MySnakar("comment", context);},  icon:Icon(Icons.comment)),
        IconButton(onPressed: (){MySnakar("email", context);},  icon:Icon(Icons.email)),
      ],
      ),
      drawer:Drawer (
        child:ListView(
          children: [
            DrawerHeader(child:UserAccountsDrawerHeader(
              currentAccountPicture:Image.network('https://i.ibb.co/tPxPVCQ/Abdullahblack-2.jpg'),
              accountName: Text("Abdullah"),
              accountEmail:  Text("abdullahtalha@gmail.com") ,
            )),
            ListTile(
              title: const Text('Home'),
              onTap: (){MySnakar("Home", context);},
            ),
            ListTile(
              title: const Text('Email'),
              onTap: (){MySnakar("Email", context);},
            ),
            ListTile(
              title: const Text('Profile'),
              onTap: (){MySnakar("Profile", context);},
            ),
          ],
        ),
      ),


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home"),
          BottomNavigationBarItem(icon: Icon(Icons.verified_user),label:"User"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label:"Profile"),
        ],
        onTap:(int index){
          if(index == 0){
            MySnakar("im Home", context);
          }if(index == 1){
            MySnakar("im User", context);
          }if(index == 2){
            MySnakar("im Profile", context);
          }
        },

      ),
    );
  }

}