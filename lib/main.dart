import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:products/core/service/service_locator.dart';
import 'package:products/feature/product/presentation/cubits/home_cubit.dart';
import 'package:products/feature/product/presentation/screens/products_screen.dart';

void main() {
  setup();
  runApp(BlocProvider(create: (_) => getIt<HomeCubit>(), child: const MyApp()));
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
        home: ProductsScreen(),
      ),
    );
  }
}
