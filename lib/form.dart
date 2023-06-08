import 'package:flutter/material.dart';
import 'package:myapp/strings.dart';

final _formKey = GlobalKey<FormState>();

final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();
  final TextEditingController _textEditingController = TextEditingController();

  String? _selectedValueDrop;
  String? _errorTextDrop;

  void _validateInputDrop() {
    if (_selectedValueDrop == null) {
      setState(() {
        _errorText = 'Please select a value';
      });
    } else {
      // Input is valid, perform necessary actions
      setState(() {
        _errorText = null;
      });
      print('Selected value: $_selectedValueDrop');
    }
  }

  String? _errorText;
  void _validateInput() {
    final inputValue = _textEditingController.text;
    if (inputValue.isEmpty || !RegExp(r'^[a-z A-Z]').hasMatch(inputValue)) {
      setState(() {
        _errorText = 'Please enter correct value';
      });
    } else {
      setState(() {
        _errorText = null;
      });
      print('Input value: $inputValue');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  // Handle back button press
                  Navigator.pop(context);
                },
              ),
              title: const Text('Form Page'),
            ),
            body: Container(
              padding: const EdgeInsets.all(20),
              child: Form(
                key: _formKey,
                child: Column(
                 // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "This is form Page",
                      style: TextStyle(
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

                    TextField(
                      controller: _textEditingController,
                      decoration: InputDecoration(
                        labelText: AllStrings.yourName,
                        errorText: _errorText,
                      ),
                    ),
                    TextField(
                      controller: _textEditingController,
                      decoration: InputDecoration(
                        labelText: AllStrings.yourNumber,
                        errorText: _errorText,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: _validateInput,
                      child: const Text('Get Input Value'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    
                    //Dropdown
                    DropdownButtonFormField<String>(
                      value: _selectedValueDrop,
                      items: const [
                        DropdownMenuItem(
                          value: 'Option 1',
                          child: Text('Option 1'),
                        ),
                        DropdownMenuItem(
                          value: 'Option 2',
                          child: Text('Option 2'),
                        ),
                        DropdownMenuItem(
                          value: 'Option 3',
                          child: Text('Option 3'),
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          _selectedValueDrop = value;
                        });
                      },
                      decoration: InputDecoration(
                        labelText: 'Select an option',
                        errorText: _errorTextDrop,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: _validateInputDrop,
                      child: const Text('Validate Selection'),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
