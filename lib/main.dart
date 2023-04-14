import 'package:flutter/material.dart';
import 'package:geographical/Model/Location_Model.dart';
import 'package:geographical/Services/Location_Service.dart';
import 'package:geographical/Views/Home_View.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return StreamProvider(
      create: (_) => LocationService().getStreamData,
      initialData: null,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: HomeView(),
      ),
    );
  }
}
