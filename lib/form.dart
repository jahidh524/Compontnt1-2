import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();
  String _inputValue = '';

  void showSnackBar() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      final snackBar = SnackBar(
        content: Text(_inputValue),
        duration: const Duration(seconds: 3),
      );
      scaffoldMessengerKey.currentState!.showSnackBar(snackBar);
    }
  }


class formPage extends StatefulWidget {
  @override
  State<formPage> createState() => _formPageState();
}

class _formPageState extends State<formPage> {
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
     

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
          title:  const Text('Form Page'),
          ),

          body: Container(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("This is form Page", style: TextStyle(
                    fontSize: 24,
                  ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  /*TextFormField(
                    onSaved: (value) {
                      _inputValue = value!;
                    },
                    decoration: const InputDecoration(
                      labelText: 'Enter your name',
                    ),
                    validator: (value){
                      if(value!.isEmpty || !RegExp(r'^[a-z A-Z]').hasMatch(value)){
                        return "Enter correct name";
                      } 
                      else{
                        return null;
                      }
                      
                    },
                  ),*/


                  TextFormField(
                    onSaved: (value) {
                      _inputValue = value!;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a value';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      labelText: 'Enter your name',
                    ),
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  TextFormField(
                    onSaved: (value) {
                      _inputValue = value!;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a value';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      hintText: 'Enter a value',
                    ),
                  ),



                   const SizedBox(
                    height: 50,
                  ),

                  ElevatedButton(
                    onPressed: showSnackBar,
                    
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    child: const Text('Sign-Up'),
              ),
                  
                ],
              ),
            ),
          )
        

          
        
        ),
      ),
    );
    
  }
}