import 'package:flutter/material.dart';
import 'package:new_sqflite/provider/theme_provider.dart';
import 'package:new_sqflite/services/api_service.dart';
import 'package:new_sqflite/models/product_model.dart';
import 'package:new_sqflite/screens/details.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Future<List<Product>> products;

  @override
  void initState() {
    super.initState();
    products = ApiService.getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  actions: [
    IconButton(
      icon: Icon(
        context.watch<ThemeProvider>().isDark
            ? Icons.light_mode
            : Icons.dark_mode,
      ),
      onPressed: () {
        context.read<ThemeProvider>().toggleTheme();
      },
    ),
  ],
),

      
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 40,
        selectedItemColor: Colors.orange,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),label: "shopping"),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),label: "profile",),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          shrinkWrap: false,
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
              height: 120,
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
            GridView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
              children: [
                InkWell(
                  onTap: (){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ItemsDetails({
          "name": "Headphone",
          "price": "350\$",
          "image": "images/assets/photo2.jpeg",
        }),
      ),
    );
  },
                  child: Card(child: Column(
                    children: [
                      Container(
                        
                       
                        color: Colors.grey[300],child: Image.asset("images/assets/photo2.jpeg",width: double.infinity,height: 124,fit: BoxFit.fill,),
                      ),
                      Text("Headphone",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                      Text("350\$",style: TextStyle(fontSize: 14,color: Colors.orange),),
                      
                  
                    ],
                  ),
                                
                              ),
                ),
             InkWell(
              onTap: () {
    Navigator.push(
      context,MaterialPageRoute(
        builder: (context) => ItemsDetails({
              "name": "watch",
              "price": "250\$",
              "image": "images/assets/photo1.webp",
            }),
      ),
    );
  },
               child: Card(child: Column(
                    children: [
                    Container(
               
                     
                      color: Colors.grey[300],child: Image.asset("images/assets/photo1.webp",width: double.infinity,height: 124,fit: BoxFit.fill,),
                    ),
                      Text("watch",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                      Text("250\$",style: TextStyle(fontSize: 14,color: Colors.orange),),
                    ],
               ),
                         
                     ),
             ),
       InkWell(
        onTap: () {
    Navigator.push(
      context,MaterialPageRoute(
        builder: (context) => ItemsDetails({
              "name": "Iphone",
              "price": "1000\$",
              "image": "images/assets/photo3.webp",
            }),
      ),
    );
  },
  child: Card(child: Column(
                    children: [
                      Container(
                        
                       
                        color: Colors.grey[300],child: Image.asset("images/assets/photo3.webp",width: double.infinity,height: 124,fit: BoxFit.fill,),
                      ),
                      Text("Iphone",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                      Text("1000\$",style: TextStyle(fontSize: 14,color: Colors.orange),),
                      
         
                    ],
                  ),
                
              ),
       ),
             InkWell(
              onTap: () {
    Navigator.push(
      context,MaterialPageRoute(
        builder: (context) => ItemsDetails({
              "name": "Car",
              "price": "100000\$",
              "image": "images/assets/photo4.webp",
            }),
      ),
    );
  },
               child: Card(child: Column(
                    children: [
                      Container(
                        
                       
                        color: Colors.grey[300],child: Image.asset("images/assets/photo4.webp",width: double.infinity,height: 124,fit: BoxFit.fill,),
                      ),
                      Text("Car",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                      Text("100000\$",style: TextStyle(fontSize: 14,color: Colors.orange),),
                      
               
                    ],
                  ),
                
                           ),
             ),
            
          ],
      )
          ]
          )
      ),
    );
    
  
  }
}