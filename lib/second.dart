import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    var str_mail = TextEditingController();
    var str_pass = TextEditingController();


    return MaterialApp(
     debugShowCheckedModeBanner: false,

      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
            icon:  const Icon(Icons.arrow_back),
            onPressed: () {
              // Handle back button press
              Navigator.pop(context);
            },
          ),
            title:  const Text('Second Page'),
          ),
          body: 
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children:[ 
                  Stack(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      color: Colors.greenAccent,
                    ),
              
                    Positioned(
                      left: 20,
                      top: 20,
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.blue,
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      color: Colors.green,
                    )
                  ],
                ),
               RadioExample(),
               
               Container(
                width: screenWidth/1.2,
                height: screenHeight/15,
                 child: 
                 
                 TextField(
                  controller: str_mail,
                  decoration: InputDecoration(
                    hintMaxLines: 2,
                    hintText: 'Enter your Email',
                    suffix: IconButton(
                      onPressed: (){}, 
                      icon: Icon(Icons.remove_red_eye)),
                    prefix: IconButton(
                      onPressed: (){}, 
                      icon: IconButton(
                        onPressed: (){}, 
                        icon: const Icon(Icons.mail))),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                  ),
                 ),
               ),
               Container(
                width: screenWidth/1.2,
                 child: TextField(
                  controller: str_pass,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    hintText: 'Enter your Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                  ),
                 ),
               ),
               ElevatedButton(onPressed: ()
               {
                  String email = str_mail.text.toString();
                  String pass = str_pass.text.toString();

                  print("Email: $email, Password: $pass");
               },
               child: const Text(
                'Login'
               ))
               //CheckboxExampleApp(),
               ],
              ),
            ),
          ),

          
          
          
          
           
        ),
      );
    
  }
}


class CheckboxExampleApp extends StatelessWidget {
   CheckboxExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        body:
        
        CheckboxExample(),
        
      ),
    );
  }
}

class CheckboxExample extends StatefulWidget {
   CheckboxExample({super.key});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
       Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.purple;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}


class RadioExample extends StatefulWidget {
  @override
  _RadioExampleState createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  String selectedOption = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title:  const Text('Option 1'),
          leading: Radio(
            value: 'Option 1',
            groupValue: selectedOption,
            onChanged: (value) {
              setState(() {
                selectedOption = value!;
              });
            },
          ),
        ),
        ListTile(
          title:  const Text('Option 2'),
          leading: Radio(
            value: 'Option 2',
            groupValue: selectedOption,
            onChanged: (value) {
              setState(() {
                selectedOption = value!;
              });
            },
          ),
        ),
        ListTile(
          title:  const Text('Option 3'),
          leading: Radio(
            value: 'Option 3',
            groupValue: selectedOption,
            onChanged: (value) {
              setState(() {
                selectedOption = value!;
              });
            },
          ),
        ),
      ],
    );
  }
}