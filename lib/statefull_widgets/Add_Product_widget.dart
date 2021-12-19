import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  State<AddProduct> createState() => _AddProduct();
}

class _AddProduct extends State<AddProduct> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Product Name',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Product Name';
              }
              return null;
            },
          ),
           TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your Description',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Product Description';
              }
              return null;
            },
          ),
           TextFormField(
            decoration: const InputDecoration(
              hintText: 'Price',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Enter the Price';
              }
              return null;
            },
          ),

           TextFormField(
            decoration: const InputDecoration(
              hintText: 'Color',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Enter the Color';
              }
              return null;
            },
          ),

           TextFormField(
            decoration: const InputDecoration(
              hintText: 'Price',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Enter the Price';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState!.validate()) {
                  // Process data.
                }
              },
              
              child: const Text('Submit'),
            ),
          ),

          
        ],
      ),
      
      
    );
  }
}


