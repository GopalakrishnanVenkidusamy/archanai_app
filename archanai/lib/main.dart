import 'package:archanai/bloc/archanai_details_bloc.dart';
import 'package:archanai/routes/index.dart';
import 'package:archanai/screens/archanai_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ArchanaiDetailsBloc(),
      child: MaterialApp(
        title: 'Archanai',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: PageRoutes().routes(),
        initialRoute: PageRoutes().defaultRoute(),
      ),
    );
  }
}
