import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
      ),
      home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  //bool enable = true;
  String cityName = 'City Name';
  String cityNameUpdate = "";
  int temp = 87;
  String weather = 'rain';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('weather'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
         
            TextField(
              onChanged: (value){
              cityName=value;
              },
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 5.0,
                  ),
                border: OutlineInputBorder(),
                hintText: "Enter City Name",   
                             
              ),
              //enabled: enable,
            ),
            ElevatedButton(
	          onPressed: (){ 
              setState(() {
                //enable = false;
              });
              
            },
	          child: const Text('Enter'),
	          ), 
            const SizedBox(height: 16.0),
            Text(
              cityName,
              style: const TextStyle(fontSize: 35.0),
            ),
            const SizedBox(height: 16.0),

            ElevatedButton(
              onPressed:(){
                cityNameUpdate = cityName;
                temp = 99;
                weather = 'Sunny';
                setState(() {                 
                });
                
              } ,
              child: const Text('Get The Weather'),
            ),
            SizedBox(height: 16.0),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'City Name: $cityNameUpdate  ',
                  style: const TextStyle(fontSize: 20.0),
                  )       ,
                const SizedBox(height: 16.0),

                Text(
                  'Temprature: $temp F  ',
                  style: const TextStyle(fontSize: 20.0),
                  )       ,
                const SizedBox(height: 16.0),

                Text(
                  'Weather Condition: $weather  ',
                  style: const TextStyle(fontSize: 20.0),
                  )       ,
                const SizedBox(height: 16.0),

                Text(
                  ' Etc.',
                  style: TextStyle(fontSize: 20.0),
                  )       ,
                SizedBox(height: 16.0),
                
              ],
            )


          ]

        ),
      ),
    );
  }
}
