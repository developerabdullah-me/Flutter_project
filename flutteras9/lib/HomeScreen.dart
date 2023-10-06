import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _fileMTeController = TextEditingController ();
  final   TextEditingController _fileLTeController = TextEditingController ();

  double mresult=1;
  double mTresult=0;

  int itemCount = 0;
  double unitPrice = 10.0;

  void incrementItem() {
    setState(() {
      itemCount++;
    });
  }

  void decrementItem() {
    if (itemCount > 0) {
      setState(() {
        itemCount--;
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    double totalPrice = itemCount * unitPrice;

    return Scaffold(

      appBar: AppBar(title: Text('shoping Cart'),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16,),
          Text('Shoping bag',style: TextStyle(fontSize: 20) ,),
         Card(
           child: Row(
             children: [
               Image.network(
                 'https://i.ibb.co/k1vX89C/product-8.png',
                 width: 150,
                 height: 150,
               ),
               Column(
                 children: [
                   Text("Pollover",style: TextStyle(
                     fontSize: 16,
                     fontWeight: FontWeight.bold,
                   )),
                   SizedBox(height: 10,),
                   Container(
                     child:  RichText(
                       text: const TextSpan(children: [
                         TextSpan(
                             text: 'Color:  ',
                             style: TextStyle(
                                 fontWeight: FontWeight.bold, color: Colors.black38,fontSize: 14,)),
                         TextSpan(
                             text: ' Black',
                             style: TextStyle(
                                 fontWeight: FontWeight.bold, color: Colors.black,fontSize: 14)),
                         TextSpan(
                             text: ' Size:',
                             style: TextStyle(
                                 fontWeight: FontWeight.bold, color: Colors.black38,fontSize: 14)),
                         TextSpan(
                             text: '  M',
                             style: TextStyle(color: Colors.black,fontSize: 14))
                       ]),
                     ),
                   ),
                  Row(
                    children: [
                      IconButton(onPressed: decrementItem,

                          icon: Icon(Icons.minimize,size: 20,)),

                     Text("$itemCount"),
                      IconButton(
                          onPressed: incrementItem,
                          icon: Icon(Icons.add,size: 20,)),
                      Column(
                        children: [
                          Text('\$${totalPrice.toStringAsFixed(2)}'),
                        ],
                      ),
                    ],
                  ),
                 ],
               ),
             ],
           ),
         ),
         Card(
           child: Row(
             children: [
               Image.network(
                 'https://i.ibb.co/k1vX89C/product-8.png',
                 width: 150,
                 height: 150,
               ),
               Column(
                 children: [
                   Text("Pollover",style: TextStyle(
                     fontSize: 16,
                     fontWeight: FontWeight.bold,
                   )),
                   SizedBox(height: 10,),
                   Container(
                     child:  RichText(
                       text: const TextSpan(children: [
                         TextSpan(
                             text: 'Color:  ',
                             style: TextStyle(
                                 fontWeight: FontWeight.bold, color: Colors.black38,fontSize: 14,)),
                         TextSpan(
                             text: ' Black',
                             style: TextStyle(
                                 fontWeight: FontWeight.bold, color: Colors.black,fontSize: 14)),
                         TextSpan(
                             text: ' Size:',
                             style: TextStyle(
                                 fontWeight: FontWeight.bold, color: Colors.black38,fontSize: 14)),
                         TextSpan(
                             text: '  M',
                             style: TextStyle(color: Colors.black,fontSize: 14))
                       ]),
                     ),
                   ),
                  Row(
                    children: [
                      IconButton(onPressed: decrementItem,

                          icon: Icon(Icons.minimize,size: 20,)),

                     Text("$itemCount"),
                      IconButton(
                          onPressed: incrementItem,
                          icon: Icon(Icons.add,size: 20,)),
                      Column(
                        children: [
                          Text('\$${totalPrice.toStringAsFixed(2)}'),
                        ],
                      ),
                    ],
                  ),
                 ],
               ),
             ],
           ),
         ),
         Card(
           child: Row(
             children: [
               Image.network(
                 'https://i.ibb.co/k1vX89C/product-8.png',
                 width: 150,
                 height: 150,
               ),
               Column(
                 children: [
                   Text("Pollover",style: TextStyle(
                     fontSize: 16,
                     fontWeight: FontWeight.bold,
                   )),
                   SizedBox(height: 10,),
                   Container(
                     child:  RichText(
                       text: const TextSpan(children: [
                         TextSpan(
                             text: 'Color:  ',
                             style: TextStyle(
                                 fontWeight: FontWeight.bold, color: Colors.black38,fontSize: 14,)),
                         TextSpan(
                             text: ' Black',
                             style: TextStyle(
                                 fontWeight: FontWeight.bold, color: Colors.black,fontSize: 14)),
                         TextSpan(
                             text: ' Size:',
                             style: TextStyle(
                                 fontWeight: FontWeight.bold, color: Colors.black38,fontSize: 14)),
                         TextSpan(
                             text: '  M',
                             style: TextStyle(color: Colors.black,fontSize: 14))
                       ]),
                     ),
                   ),
                  Row(
                    children: [
                      IconButton(onPressed: decrementItem,

                          icon: Icon(Icons.minimize,size: 20,)),

                     Text("$itemCount"),
                      IconButton(
                          onPressed: incrementItem,
                          icon: Icon(Icons.add,size: 20,)),
                      Column(
                        children: [
                          Text('\$${totalPrice.toStringAsFixed(2)}'),
                        ],
                      ),
                    ],
                  ),
                 ],
               ),
             ],
           ),
         ),
        ],
      ),
    );
  }
}
