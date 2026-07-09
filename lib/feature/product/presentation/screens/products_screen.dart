import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products/core/state/app_state.dart';
import 'package:products/feature/product/presentation/cubits/home_cubit.dart';
import 'package:products/feature/product/presentation/cubits/state_cubit.dart';
import 'package:products/feature/product/presentation/widgets/product_card.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  late final HomeCubit _homeCubit;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _homeCubit = context.read<HomeCubit>();
      _homeCubit.getProducts();
    });
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
                builder: (context, state) {
                  log("state:${state.getProducts}");
                  if (state.getProducts.isLoading) {
                    return Center(child: CircularProgressIndicator());
                  }
                  if (state.getProducts.isError) {
                    return Center(
                      child: Text(
                        state.errorMessage ?? "Something went wrong",
                        style: TextStyle(color: Colors.red),
                      ),
                    );
                  }
                  if (state.getProducts.isSuccess) {
                    final products = state.products;

                    return GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 1,
                        mainAxisSpacing: 1,
                        childAspectRatio: 0.8,
                      ),
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        final product = products[index];
                        log(product.thumbnail.toString());
                        return CustomContainer(
                          image: product.thumbnail ?? '',
                          title: product.title ?? '',
                          description: product.description ?? '',
discount: product.discountPercentage??0.0,
                          price: product.price ?? 0.0,
                          rating: product.rating ?? 0.0,
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
