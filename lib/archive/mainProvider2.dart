import 'package:flutter/material.dart';
import 'dart:math';
import 'package:faker/faker.dart' as fake;
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductProvider(),
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Model"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: const EdgeInsets.all(10),
        childAspectRatio: 3 / 4,
        children: Provider.of<ProductProvider>(context).products.map<Widget>((product) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(product: product),
                ),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: GridTile(
                footer: Container(
                  padding: const EdgeInsets.all(5),
                  color: Colors.blue[100],
                  height: 70,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(product.name),
                      Text(
                        "Rp. ${product.price}",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      Text(product.description,
                          maxLines: 1, overflow: TextOverflow.ellipsis),
                    ],
                  ),
                ),
                header: Container(
                  child: Image.network(product.image),
                ),
                child: const SizedBox.shrink(),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final Product product;
  DetailPage({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Detail"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(product.image),
              Text(product.name),
              Text(product.description),
              Text("Rp. ${product.price}"),
            ],
          ),
        ));
  }
}

class Product with ChangeNotifier {
  int id;
  String name;
  String description;
  int price;
  String image;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });
}

class ProductProvider with ChangeNotifier {
  get products {
    final fake.Faker faker = fake.Faker();

    return List.generate(100, (index) {
      return Product(
          id: index,
          name: faker.person.name(),
          description: faker.lorem.sentence(),
          price: 10000 + Random().nextInt(100000),
          image: "https://picsum.photos/id/$index/200/300");
    });
  }
}
