import 'package:flutter/material.dart';
import 'dart:math';
import 'package:faker/faker.dart' as fake;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final fake.Faker faker = fake.Faker();

  late final List<Product> products = List.generate(100, (index) {
    return Product(
        name: faker.person.name(),
        description: faker.lorem.sentence(),
        price: 10000 + Random().nextInt(100000),
        image: "https://picsum.photos/id/$index/200/300");
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Model"),
          bottom: PreferredSize(
            preferredSize: const Size.fromRadius(30),
            child: SearchAnchor(
              builder: (context, controller) {
                return SearchBar(
                  controller: controller,
                  hintText: "Search",
                  leading: const Icon(
                    Icons.search,
                  ),
                  padding: WidgetStateProperty.all(
                      const EdgeInsets.fromLTRB(20, 5, 1, 5)),
                );
              },
              suggestionsBuilder: (context, controller) {
                return products.where((product) {
                  final input = controller.text.toLowerCase();
                  final name = product.name.toLowerCase();
                  return name.contains(input);
                }).map((product) {
                  return ListTile(
                    title: Text(product.name),
                  );
                }).toList();
              },
            ),
          )),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: const EdgeInsets.all(10),
        childAspectRatio: 3 / 4,
        children: products.map((product) {
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

class Product {
  String name;
  String description;
  int price;
  String image;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });
}



// header: Container(
//               color: Colors.blue,
//               height: 100,
//               child: Text(product.name),
//             ),