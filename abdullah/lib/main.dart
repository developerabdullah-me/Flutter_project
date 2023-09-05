import 'package:flutter/material.dart';

void main (){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green),
        darkTheme: ThemeData(primarySwatch: Colors.amber),
        color: Colors.blue,
        debugShowCheckedModeBanner: false,
        home:HomeActivity());
  }

}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

MySnakbar(massage,context){

  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(massage))
  );
}


  @override
  Widget build(BuildContext context) {
  return Scaffold(
appBar:AppBar (title:Text("Inventory"),
     titleSpacing: 10,
     // centerTitle:true,
     backgroundColor: Colors.amber,
    toolbarHeight: 60,
  actions: [
    IconButton(onPressed:(){MySnakbar("comment",context);}, icon:Icon(Icons.comment)),
    IconButton(onPressed:(){MySnakbar("search",context);}, icon:Icon(Icons.search)),
    IconButton(onPressed:(){MySnakbar("email",context);}, icon:Icon(Icons.email)),
    IconButton(onPressed:(){MySnakbar("settings",context);}, icon:Icon(Icons.settings)),
  ],
),
    floatingActionButton:FloatingActionButton (
      elevation: 1,
      child: Icon(Icons.add),
      backgroundColor: Colors.amber,
      onPressed: () {
      MySnakbar("Im Floating action button", context);
      },

    ),
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: 1,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home"),
        BottomNavigationBarItem(icon: Icon(Icons.mail),label:"Contact"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label:"ProFile"),
      ],
      onTap:(int index){
        if(index == 0){
          MySnakbar("im Home", context);
        }if(index == 1){
          MySnakbar("im Contact", context);
        }if(index == 2){
          MySnakbar("im User", context);
        }
      },
    ),
    drawer: Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          DrawerHeader(child:UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.amber),
            accountName: Text("Abdullah"),
            accountEmail: Text("abdullahtalha@gmail.com"),
            currentAccountPicture: Image.network("https://i.ibb.co/tPxPVCQ/Abdullahblack-2.jpg"),
            currentAccountPictureSize:Size.square(50),
          )),
          ListTile(leading: Icon(Icons.home),
            title:Text("Home"),
            onTap: (){MySnakbar("Im Home", context);},),

          ListTile(leading: Icon(Icons.contact_mail),
            title:Text("contact"),
            onTap: (){MySnakbar("Im person", context);},),
          ListTile(leading: Icon(Icons.person),
            title:Text("Profile"),
            onTap: (){MySnakbar("Im Profile", context);},),
        ],
      ),
    ),

    body: Text('hello'),


  );
  }
}
