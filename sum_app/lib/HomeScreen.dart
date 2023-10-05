import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

      final TextEditingController _fileOnTeController = TextEditingController ();
     final   TextEditingController _fileTowTeController = TextEditingController ();
     final  GlobalKey<FormState> _fromKey=GlobalKey<FormState> ();
       double result=0;
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Sum App"),
      ),
      body:Padding(
        padding:const EdgeInsets.all(16),
        child: Form(
          key: _fromKey,
          child: Column(
            children: [
              TextFormField(
                controller: _fileOnTeController,
                decoration: InputDecoration(
                  hintText: "sum 1",
                ),
                keyboardType:TextInputType.number,
                textInputAction: TextInputAction.next,

                validator: (String? value){
                  if(value?.isEmpty==true) {
                    return "enter valid value";
                  }
                  return null;
                },
                
              ),
              TextFormField(
                controller: _fileTowTeController,
                decoration: InputDecoration(
                  hintText: "sum 2",
                ),
                keyboardType:TextInputType.number,
                textInputAction: TextInputAction.next,
                validator: (String? value){
                  if(value?.isEmpty==true) {
                    return "enter valid value";
                  }
                  return null;
                },
              ),
              SizedBox(height: 22,),
              Text('$result'),
              ButtonBar(
                alignment:MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){
                    if(_fromKey.currentState!.validate()) {
                      double firstNumber=double.parse(_fileOnTeController.text.trim()) ;
                      double seccendNumber=double.parse(_fileTowTeController.text.trim()) ;
                      print(firstNumber);
                      print(seccendNumber);
                      result =firstNumber + seccendNumber;
                      setState(() {

                      });
                    }
                  }, child: Text('Add')),
                  ElevatedButton(onPressed: (){
                    if(_fromKey.currentState!.validate()) {
                      double firstNumber=double.parse(_fileOnTeController.text.trim()) ;
                      double seccendNumber=double.parse(_fileTowTeController.text.trim()) ;
                      print(firstNumber);
                      print(seccendNumber);
                      result =firstNumber - seccendNumber;
                      setState(() {

                      });
                    }
                  }, child: Text('minus')),
                ],
              ),
            ],
          ),
        ),
      ) ,
    );
  }
}
