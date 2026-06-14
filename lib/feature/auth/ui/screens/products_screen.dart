import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products/core/constant/app_images.dart';
import 'package:products/core/state/app_state.dart';
import 'package:products/feature/Cubits/Home_Cubit/home_cubit.dart';
import 'package:products/feature/Cubits/Home_Cubit/state_cubit.dart';
import 'package:products/feature/auth/ui/widget/custom_container.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  late final _homeCubit;
  @override
  void initState() {
    _homeCubit = context.read<HomeCubit>();
    _homeCubit.getProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: BlocBuilder<HomeCubit, HomeState>(
                bloc: _homeCubit,
                builder: (context, state) {
                  log("state:${state.getProducts}");
                  if (state.getProducts == AppStatus.loading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (state.getProducts == AppStatus.error) {
                    return const Center(child: Text("Something went wrong"));
                  }
                  if (state.getProducts == AppStatus.success) {
                    final products = state.products;

                    return GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 1,
                            mainAxisSpacing: 1,
                            childAspectRatio: 0.8,
                          ),
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        final product = products[index];
                        return CustomContainer(
                          image: product.image ?? AppImages.im,
                          title: product.title ?? '',
                          description: product.description ?? '',

                          price: product.price ?? 0.0,
                          rating: product.rating?.rate ?? 0.0,
                        );
                      },
                    );
                  }
                  

                  return const SizedBox();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
