import 'package:flutter/material.dart';
import 'package:new_sqflite/sqflit.dart';
void main() {
  runApp(Home());
}


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyAppState();
}

class _MyAppState extends State<Home> {
  Sqldb sqlDb = Sqldb();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              children: [

                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search",
                      border: InputBorder.none,
                      fillColor: Colors.grey[150],
                      filled: true,
                      ),
                    ),
                  ),
                
                Padding(
                  padding:  EdgeInsets.only(left: 10),
                  child: Icon(Icons.menu,size: 40),
                )
              ],
            ),
            Container(
              height: 30,
            ),
            Text("categories",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            ),
            Container(height: 20,),
            
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(color:
                           Colors.grey[300],
                           borderRadius: BorderRadius.circular(100)
                           ),
                          child: Icon(Icons.laptop,size: 30,),color: Colors.grey[150],padding: EdgeInsets.all(15),
                          ),
                          Text("laptop",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[800]),
                          ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(color:
                         Colors.grey[300],
                         borderRadius: BorderRadius.circular(100)
                         ),
                        child: Icon(Icons.phone,size: 30,),color: Colors.grey[150],padding: EdgeInsets.all(15),
                        ),
                        Text("Mobile",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[800]),),
                ],
              
              
              ),
                 Column(
                    children: [
                      Container(
                       margin: EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(color:
                         Colors.grey[300],
                         borderRadius: BorderRadius.circular(100)
                         ),
                        child: Icon(Icons.electric_bike,size: 30,),color: Colors.grey[150],padding: EdgeInsets.all(15),
                        ),
                        Text("Bike",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[800]),),
                        ]
                 ),
                   Column(
                    children: [
                      Container(
                       margin: EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(color:
                         Colors.grey[300],
                         borderRadius: BorderRadius.circular(100)
                         ),
                        child: Icon(Icons.card_giftcard_outlined,size: 30,),color: Colors.grey[150],padding: EdgeInsets.all(15),
                        ),
                        Text("Gift",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[800]),)
                ],
              
              ),
              Column(
                    children: [
                      Container(
                       margin: EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(color:
                         Colors.grey[300],
                         borderRadius: BorderRadius.circular(100)
                         ),
                        child: Icon(Icons.electric_car_outlined,size: 30,),color: Colors.grey[150],padding: EdgeInsets.all(15),
                        ),
                        Text("car",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[800]),)
                ],
              
              ),
              
             ],
              
                      ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text("Best Selling",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              ),
            ),
            GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
              children: [
                Card(child: Column(
                  children: [
                    Container(color: Colors.grey[300],child: Image.asset("images/assets/photo2.jpeg"),),

                  ],
                ),
              
            ),
             Card(child: Column(
                  children: [
                  Container(color: Colors.grey[300],child: Image.asset("images/assets/photo1.webp"),)
                  ],
             ),
          
      ),
          ],
      )
          ]
      ),
    ),
    );
  
  }
}