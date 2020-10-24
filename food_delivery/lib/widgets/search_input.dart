import 'package:flutter/material.dart';
import 'package:food_delivery/helpers/style.dart';

class SearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 15.0),
            fillColor: white,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(width: 0.8),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide:
                  BorderSide(width: 0.8, color: Theme.of(context).primaryColor),
            ),
            hintText: 'Search Food or Restaurants',
            prefixIcon: Icon(
              Icons.search,
              size: 30.0,
            ),
            suffixIcon: IconButton(icon: Icon(Icons.clear), onPressed: () {})),
      ),
    );
  }
}
