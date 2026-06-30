import 'package:flutter/material.dart';

Widget searchField(){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12),
    child: TextField(
    decoration: InputDecoration(
      hintText: "Search",
      suffixIcon: Icon(Icons.restaurant_menu_sharp),
      filled: true,
      fillColor: const Color(0xfff4f3f8),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 18,
      ),
    ),
    ),
  );
}