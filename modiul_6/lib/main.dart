import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeActivity(),);
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {

    final ButtonStyle buttonStyle=TextButton.styleFrom(
      textStyle:TextStyle(
        fontSize: 40,
      )
    );

    MyAlartDilog(context){
      return showDialog(context: context,
          builder:(BuildContext context ){
        return Expanded(child: AlertDialog(
          title: Text("Alart"),
          content: Text("do you want to delete now"),
          actions: [
            ElevatedButton(onPressed: (){Navigator.of(context).pop();}, child: Text("Yes")),
            ElevatedButton(onPressed: (){Navigator.of(context).pop();}, child: Text("No")),
          ],
        ));

          }
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [
          ElevatedButton(onPressed: (){}, child: Text("Send Email"),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink,
            padding: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            textStyle:TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color:Colors.white,
            ),
          ),
          ),
          TextButton(onPressed: (){}, child: Text("Email all send"),style:buttonStyle,),

          ElevatedButton(onPressed: (){MyAlartDilog(context);}, child: Text("Click Me"))
        ],
      ),
    );
  }
}
