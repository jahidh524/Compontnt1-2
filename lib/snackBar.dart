import 'package:flutter/material.dart';


class snackbar extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<snackbar> {
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScaffoldMessenger(
        key: scaffoldMessengerKey,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('SnackBar Example'),
          ),
          body: Center(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                  ElevatedButton(
                    onPressed: showSnackBar,
                    child: const Text('Show SnackBar'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}