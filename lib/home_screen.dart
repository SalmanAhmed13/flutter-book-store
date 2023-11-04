import 'package:flutter/material.dart';
import 'package:job_project/item_detail.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


List<String> imageList = [
  'assets/images/image.png',
  'assets/images/image2.jpg',
  'assets/images/image3.jpg',
  'assets/images/image4.jpg',
  'assets/images/image.png',
  'assets/images/image2.jpg',
  'assets/images/image3.jpg',
  'assets/images/image4.jpg',
];

List<String> productTitle = [
"Things Fall Apart",
"Dante Alighter",
"Fairy Tale",
"The Epic",
"Things Fall Apart",
"Dante Alighter",
"Fairy Tale",
"The Epic",
];

List<String> productprice = [
"\$7",
"\$8",
"\$7",
"\$8",
"\$7",
"\$8",
"\$7",
"\$8",
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
    body: SingleChildScrollView(

    child: Column(
      children: [
        Row(
          
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Text("Hi Nick",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.black,
        fontSize: 22.2,
        fontWeight: FontWeight.bold
        ),
        ),
            ],
        ), 
        Container(
        
  // ellipse18DX (113:838)
  width: 60,
  height: 60,
  decoration:  BoxDecoration (
    borderRadius:  BorderRadius.circular(25),
    image:  DecorationImage (
      image:  NetworkImage (
        "https://images.pexels.com/photos/1547971/pexels-photo-1547971.jpeg?auto=compress&cs=tinysrgb&w=1600"
      ),
    ),
  ),
),
    SizedBox(height: 10,),
      TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Color.fromARGB(255, 231, 231, 231),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide.none
          ),
          hintText: "Search",
          prefixIcon: Icon(Icons.search),
          prefixIconColor: Colors.black
        ),
      ),
SizedBox( height: 600,
        child:  GridView.builder(
        itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.6,
        crossAxisSpacing: 30,
        crossAxisCount: 2
        ), 
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 200 ,
                child: Stack(
                  children: [
                    InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen()
                      ),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(imageList[index]),
                    ),
                    ),
                    Positioned(
                      right: 10,
                      top: 10,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 160, 160, 160),  
                        ),
                      child: Center(
                        child: Icon(
                          Icons.favorite,
                          color: Colors.redAccent,
                          size: 18,
                        ),
                      ),
                      ), 
                      )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Text(
                productTitle[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              SizedBox(height: 10,),
              Text(
                productprice[index],
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.black
                ),
              )
            ],
            ),
          );
        },
        ),


),

      
  ],
  
    
    ),
    
    ),
    


    );
  }
}