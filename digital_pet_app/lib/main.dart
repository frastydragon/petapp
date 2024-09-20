import 'package:flutter/material.dart';
import 'dart:async';

//Meissen Hsu
// Samuel Akinniyi
void main() {

  runApp(MaterialApp(
    home: DigitalPetApp(),
    )
  );
}
class DigitalPetApp extends StatefulWidget {
  @override
  _DigitalPetAppState createState() => _DigitalPetAppState();
}

class _DigitalPetAppState extends State<DigitalPetApp> {
  String petName = "Your Pet";
  int happinessLevel = 50;
  int hungerLevel = 50;
  String emotion = '';
  bool enable = true;
  Color color = const Color.fromARGB(255, 255, 0, 0);
  int red = 0;
  int b = 0;
  int g = 0;
  Timer? timer;
  int seconds=10;

  void startCount(){
    const timeDecay = Duration(seconds: 1);
    timer = Timer.periodic(timeDecay, (Timer timer){
      if (seconds <=0){
        setState(() {
          seconds=10;
          hungerLevel++;

        });
      }
      else {
        setState(() {
          seconds--;
        });
      }
    });
  }

// Function to increase happiness and update hunger when playing with the pet
  void _playWithPet() {
    setState(() {
      happinessLevel = (happinessLevel + 10).clamp(0, 100);
      _updateHunger();
      _updateEmotion();
      
    }
    );
  }


// Function to decrease hunger and update happiness when feeding the pet
  void _feedPet() {
    setState(() {
    hungerLevel = (hungerLevel - 10).clamp(0, 100);
    _updateHappiness();
    _updateEmotion();
    });
  }
  void _updateEmotion(){
    if (happinessLevel > 70) {
      emotion = "Happy 😊😊";
      color = const Color.fromARGB(255, 10, 151, 50);
    } 
      else if (happinessLevel < 30) {
      emotion = "Sad 😢" ;
      color = const Color.fromARGB(255, 255, 0, 0);
    }
    else if (happinessLevel > 30 || happinessLevel < 70 ) {
      emotion = "Neutral 😑";
      color = const Color.fromARGB(255, 206, 227, 48);
    }
  
  }
// Update happiness based on hunger level
  void _updateHappiness() {
    if (hungerLevel < 30) {
    happinessLevel = (happinessLevel - 20).clamp(0, 100);
    } 
    else {
    happinessLevel = (happinessLevel + 10).clamp(0, 100);
    }
  }
// Increase hunger level slightly when playing with the pet
  void _updateHunger() {
    hungerLevel = (hungerLevel + 5).clamp(0, 100);
    if (hungerLevel > 100) {
      hungerLevel = 100;
      happinessLevel = (happinessLevel - 20).clamp(0, 100);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Digital Pet'),
      ),
    
    body: Center(
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        
        
            TextField(
              onChanged: (value){
              petName=value;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Pet Name",                
              ),
              enabled: enable,
            ),
            ElevatedButton(
	          onPressed: (){ 
              setState(() {
                enable = false;
                startCount();

              });
            },
	          child: const Text('Enter'),
	          ), 
        

        Text(
          'Name: $petName',
          style: TextStyle(fontSize: 20.0),
        ),
        SizedBox(height: 16.0),

        Container(
          width: 60,
          height: 60,
          decoration:  BoxDecoration(
            
            shape: BoxShape.circle,
            color: color
          ),
          

        ),
        SizedBox(height: 16.0),
        Text(
          'Happiness Level: $happinessLevel',
          style: TextStyle(fontSize: 20.0),
        ),
        SizedBox(height: 16.0),

        Text(
          'Emotion: $emotion ',
          style: TextStyle(fontSize: 20.0),
        ),
        SizedBox(height: 16.0),

        Text(
          'Hunger Level: $hungerLevel',
          style: TextStyle(fontSize: 20.0),
        ),
        SizedBox(height: 32.0),

        ElevatedButton(
          onPressed: _playWithPet,
          child: Text('Play with Your Pet'),
        ),
        SizedBox(height: 16.0),

        ElevatedButton(
          onPressed: _feedPet,
          child: Text('Feed Your Pet'),
        ),

      ],
    ),
    ),
    );
  }
}
