import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:products/feature/Cubits/Home_Cubit/home_cubit.dart';
import 'package:products/feature/auth/ui/screens/products_screen.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(Provider(
    create: (context) => HomeCubit(),
    child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:ProductsScreen(),
      ),
    );
  }
}