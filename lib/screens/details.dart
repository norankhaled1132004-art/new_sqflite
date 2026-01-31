import 'package:flutter/material.dart';

class ItemsDetails extends StatefulWidget {
  final data ;
  const ItemsDetails(this.data, {super.key});

  @override
  State<ItemsDetails> createState() => _ItemsDetailsState();
}

class _ItemsDetailsState extends State<ItemsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 40,
        selectedItemColor: Colors.orange,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),label: "shopping"),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),label: "profile",),
        ],
      ),
      endDrawer: Drawer(),
      appBar: AppBar(
        title:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shop_2),
        Text("Shopping",style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          
        ),),
          ]
        ),
        
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
        backgroundColor: Colors.grey[300],
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          Image.asset(widget.data['image']),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: Text( widget.data['name'],
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text( widget.data['price'],
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
            textAlign: TextAlign.center,
            ),

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("color : ",style: TextStyle(color: Colors.grey),),
              SizedBox(width: 10,),
              Container(
                margin: EdgeInsets.only(left: 10),
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Colors.orange,
                    width: 1.0,
                  )
                ),
              ),
              Text("   Grey"),
              SizedBox(width: 10,),
              Container(
                margin: EdgeInsets.only(left: 10),
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                 
                ),
              ),
              Text("   Black")
            ],

          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text("size:                34    35    40   41",style: TextStyle(color: Colors.grey),textAlign: TextAlign.center,)),
          SizedBox(height: 10,),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
            child: MaterialButton(
              
              padding: EdgeInsets.symmetric(vertical: 15),
              onPressed: (){},
              color: Colors.black,
              textColor: Colors.white,
              child: Text("Add to cart"),
            ),
          )
          
        ]

      ),
    );
  }
}