import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductScreen extends StatelessWidget {

void ApiFetch () async{
  var headers = {
  'x-api-key': '#b0@6hX8YasCq6^unOaPw1tqR',
  'Accept': 'application/json',
  'Content-Type': 'application/json'
};
var request = http.Request('GET', Uri.parse('https://books-list-api.vercel.app/books'));

request.headers.addAll(headers);

http.StreamedResponse response = await request.send();

if (response.statusCode == 200) {
  print(await response.stream.bytesToString());
}
else {
  print(response.reasonPhrase);
}

}  

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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 450,
                width: MediaQuery.of(context).size.width,
                child: FanCarouselImageSlider(
                imagesLink: imageList, 
                isAssets: true
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 30,),
                    Text(
                    "Things Fall Apart,",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 25,
                    ),
                      
                    )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
         ),
    )
    );
  }
}