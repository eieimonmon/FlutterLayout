import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
  //Color color = Colors.blue;
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter UI Design")),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              BuildLayoutWidget(),
              ImageIconsWidget(),
              TextWidget(),
            ],
          )
        )
      ),
    );
  }
}
class BuildLayoutWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text('Jhon McDonald',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Icon(Icons.location_on),
                Text('Los Angles, CA',
                  style: TextStyle(
                      fontSize: 20
                  ),)
              ],
            ),
              const SizedBox(height: 30,),
            RaisedButton(
              onPressed: (){},
                color: Colors.blueGrey,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                 child: Text('Follow',
                   style: TextStyle(
                       fontSize: 20,
                       color: Colors.white,
                   ),),
               ),
            const SizedBox(height: 15,),
            Row(
              children:[
                Column(
                  children: [
                    Text('34',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text('Posts',
                    style: TextStyle(
                        color: Colors.blueGrey,
                      fontSize: 18
                    ),)
                  ],
                ),
                const SizedBox(width: 30,),
                Column(
                  children: [
                    Text('1256',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text('Followers',
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 18
                      ),)
                  ],
                )
              ],
            )
          ]
        ),
        const SizedBox(width: 30,),
        Image.asset(
            'images/science.jpg',
          width: 120,
          height: 150,
        ),
      ],
    );
    throw UnimplementedError();
  }
}
class ImageIconsWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Image.asset('images/brain.jpg',
              width: 80,
              height: 100,
            ),
            Icon(Icons.language),

          ],
        ),
            Column(
              children: [
                Image.asset('images/logo.jpg',
                  width: 80,
                  height: 100,
                ),
                Icon(Icons.cloud_done),
              ],
            ),
            Column(
              children: [
                Image.asset('images/brain.jpg',
                  width: 80,
                  height: 100,
                ),
                Icon(Icons.card_travel),
              ],
            ),
            Column(
              children: [
                Image.asset('images/air.jpg',
                  width: 80,
                  height: 100,
                ),
                Icon(Icons.local_grocery_store),
              ],
            )
      ],
    );

    throw UnimplementedError();
  }

}
class TextWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          child: Text('About',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          alignment: Alignment.topLeft,
        ),
        const SizedBox(height: 10,),
        Text('Him poletic eye. Searched any remedies. The wind is moving the curtain. Marriage has really changed her. An expolsion shook the rooms',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 18,
            color: Colors.blueGrey,
        ),
         )

      ],
    );
    throw UnimplementedError();
  }

}

