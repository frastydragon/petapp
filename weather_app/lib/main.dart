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
  int temp = 00;
  String weather = 'IDK';
  int zipcode=00000;

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
                zipcode = 30096;
                setState(() {                 
                });
                
              } ,
              child: const Text('Get The Weather'),
            ),
            SizedBox(height: 16.0),
            const SizedBox(height: 16.0),
            const Text("Monday"),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'City Name: $cityNameUpdate  ',
                  style: const TextStyle(fontSize: 15.0),
                  )       ,
                const SizedBox(height: 16.0),

                Text(
                  'Temprature: $temp F  ',
                  style: const TextStyle(fontSize: 15.0),
                  )       ,
                const SizedBox(height: 16.0),

                Text(
                  'Weather Condition: $weather  ',
                  style: const TextStyle(fontSize: 15.0),
                  )       ,
                const SizedBox(height: 16.0),

                Text(
                  'ZipCode: $zipcode',
                  style: TextStyle(fontSize: 15.0),
                  )       ,
                SizedBox(height: 16.0),
                
              ],
            ),
            const SizedBox(height: 16.0),
            const Text("Tuesday"),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'City Name: $cityNameUpdate  ',
                  style: const TextStyle(fontSize: 15.0),
                  )       ,
                const SizedBox(height: 16.0),

                Text(
                  'Temprature: $temp F  ',
                  style: const TextStyle(fontSize: 15.0),
                  )       ,
                const SizedBox(height: 16.0),

                Text(
                  'Weather Condition: $weather  ',
                  style: const TextStyle(fontSize: 15.0),
                  )       ,
                const SizedBox(height: 16.0),

                Text(
                  'ZipCode: $zipcode',
                  style: TextStyle(fontSize: 15.0),
                  )       ,
                SizedBox(height: 16.0),
                
              ],
            ),
            const SizedBox(height: 16.0),
            const Text("Wednesday"),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'City Name: $cityNameUpdate  ',
                  style: const TextStyle(fontSize: 15.0),
                  )       ,
                const SizedBox(height: 16.0),

                Text(
                  'Temprature: $temp F  ',
                  style: const TextStyle(fontSize: 15.0),
                  )       ,
                const SizedBox(height: 16.0),

                Text(
                  'Weather Condition: $weather  ',
                  style: const TextStyle(fontSize: 15.0),
                  )       ,
                const SizedBox(height: 16.0),

                Text(
                  'ZipCode: $zipcode',
                  style: TextStyle(fontSize: 15.0),
                  )       ,
                SizedBox(height: 16.0),
                
              ],
            ),
            const SizedBox(height: 16.0),
            const Text("Thursday"),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'City Name: $cityNameUpdate  ',
                  style: const TextStyle(fontSize: 15.0),
                  )       ,
                const SizedBox(height: 16.0),

                Text(
                  'Temprature: $temp F  ',
                  style: const TextStyle(fontSize: 15.0),
                  )       ,
                const SizedBox(height: 16.0),

                Text(
                  'Weather Condition: $weather  ',
                  style: const TextStyle(fontSize: 15.0),
                  )       ,
                const SizedBox(height: 16.0),

                Text(
                  'ZipCode: $zipcode',
                  style: TextStyle(fontSize: 15.0),
                  )       ,
                SizedBox(height: 16.0),
                
              ],
            ),
            const SizedBox(height: 16.0),
            const Text("Friday"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'City Name: $cityNameUpdate  ',
                  style: const TextStyle(fontSize: 15.0),
                  )       ,
                const SizedBox(height: 16.0),

                Text(
                  'Temprature: $temp F  ',
                  style: const TextStyle(fontSize: 15.0),
                  )       ,
                const SizedBox(height: 16.0),

                Text(
                  'Weather Condition: $weather  ',
                  style: const TextStyle(fontSize: 15.0),
                  )       ,
                const SizedBox(height: 16.0),

                Text(
                  'ZipCode: $zipcode',
                  style: TextStyle(fontSize: 15.0),
                  )       ,
                SizedBox(height: 16.0),
                
              ],
            ),
            const SizedBox(height: 16.0),
            const Text("Saturday"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'City Name: $cityNameUpdate  ',
                  style: const TextStyle(fontSize: 15.0),
                  )       ,
                const SizedBox(height: 16.0),

                Text(
                  'Temprature: $temp F  ',
                  style: const TextStyle(fontSize: 15.0),
                  )       ,
                const SizedBox(height: 16.0),

                Text(
                  'Weather Condition: $weather  ',
                  style: const TextStyle(fontSize: 15.0),
                  )       ,
                const SizedBox(height: 16.0),

                Text(
                  'ZipCode: $zipcode',
                  style: TextStyle(fontSize: 15.0),
                  )       ,
                SizedBox(height: 16.0),
                
              ],
            ),
            const SizedBox(height: 16.0),
            const Text("Sunday"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'City Name: $cityNameUpdate  ',
                  style: const TextStyle(fontSize: 15.0),
                  )       ,
                const SizedBox(height: 16.0),

                Text(
                  'Temprature: $temp F  ',
                  style: const TextStyle(fontSize: 15.0),
                  )       ,
                const SizedBox(height: 16.0),

                Text(
                  'Weather Condition: $weather  ',
                  style: const TextStyle(fontSize: 15.0),
                  )       ,
                const SizedBox(height: 16.0),

                Text(
                  'ZipCode: $zipcode',
                  style: TextStyle(fontSize: 15.0),
                  )       ,
                SizedBox(height: 16.0),
                
              ],
            ),
           
          ]

        ),
      ),
    );
  }
}
