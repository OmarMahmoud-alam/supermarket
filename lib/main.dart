import 'package:flutter/material.dart';
import 'package:supermarket/common/utils/dio_helper.dart';
import 'package:supermarket/common/utils/shered_helper.dart';
import 'package:supermarket/view/login_register/login.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await Prefs.init(); 
   DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Login(),
    );
  }
}
