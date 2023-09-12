import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home:HomeActivity());
  }
}
class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home"),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.search_rounded)),
          IconButton(onPressed: (){}, icon:Icon(Icons.email)),
          IconButton(onPressed: (){}, icon:Icon(Icons.account_circle)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
           DrawerHeader(child: UserAccountsDrawerHeader(
             currentAccountPicture: Image.network('https://i.ibb.co/tPxPVCQ/Abdullahblack-2.jpg'),
             accountName: Text('abdullah'),
             accountEmail: Text("abdullahtalha@gmail.com"),
           )),

            ListTile(
              leading: Icon(Icons.home),
              title:  Text('Home'),
            ),
          ListTile(
              leading: Icon(Icons.person),
              title:  Text('Account'),
            ),
          ],

        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search_rounded),label:"Search"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),label:"Profile"),

        ],
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.cyan,
                border:Border.all(color: Colors.black87,width: 2,),
                // borderRadius:BorderRadius.circular(10),
                              borderRadius: BorderRadius.only(topRight:Radius.circular(20),
                              bottomLeft:Radius.circular(20) ),
              ),
              child: Text("Hello World"),
              alignment: Alignment.center,
            ),

            SizedBox(
              height: 20,
            ),

            ElevatedButton(
              style:ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                    textStyle:TextStyle(
                 fontSize: 20,
                      fontWeight: FontWeight.w600,
        ),
              ),
                onPressed: (){
              print("mail hasben send");

            },
            child: Text("send mail")),
            TextButton(onPressed: (){
              print("Resent email");
            },
             child: Text('Resent')),
             
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Your Email',
                label: Text("Email"),
              ),
            ),

            // SizedBox(
            //   height: 30,
            // ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Your Email',
                label: Text("Email"),
              ),
            ),
          ],
        ),
      )
    );

  }
}