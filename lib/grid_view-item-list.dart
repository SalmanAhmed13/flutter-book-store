import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GridViewItemList extends StatelessWidget {

List<String> imageList = [
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
];

List<String> productprice = [
"\$7",
"\$8",
"\$7",
"\$8",
];

  GridViewItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
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
                    // onTap: () {
                    //   Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen()
                    //   ),
                    //   );
                    // },
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
                  color: Colors.redAccent,
                ),
              )
            ],
            ),
          );
        },
        ),
    );
  }
} 
  
