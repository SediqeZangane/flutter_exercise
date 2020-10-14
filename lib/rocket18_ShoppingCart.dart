import 'package:flutter/material.dart';

class MyApp18 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // shey sakhtan dar dart
    Product a = new Product(name: 'ali');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping App',
      home: ShoppingList(
        products: <Product>[
          a,
          new Product(name: 'Eggs'),
          Product(name: 'Appls'),
          Product(name: 'Chips'),
          a,
          new Product(name: 'Eggs'),
          Product(name: 'Appls'),
          Product(name: 'Chips'),
          a,
          new Product(name: 'Eggs'),
          Product(name: 'Appls'),
          Product(name: 'Chips'),
          Product(name: 'Chocolate')
        ],
      ),
    );
  }
}

class Product {
  final String name;

  Product({this.name});
}

typedef void CartChangedCallback(Product product, bool inCart);

class ShoppingList extends StatefulWidget {
  final List<Product> products;

  ShoppingList({this.products});

  @override
  State<StatefulWidget> createState() {
    return ShoppingListState();
  }
}

class ShoppingListState extends State<ShoppingList> {
  Set<Product> shoppingCart = Set<Product>();

  void handleCartChanged(Product product, bool inCart) {
    setState(() {
      if (inCart) {
        shoppingCart.remove(product);
      } else {
        shoppingCart.add(product);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shopping List")),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        children: widget.products.map((Product product) {
          return ShoppingListItem(
            product: product,
            inCart: shoppingCart.contains(product),
            onCartChanged: handleCartChanged,
          );
        }).toList(),
      ),
    );
  }
}

class ShoppingListItem extends StatelessWidget {
  final Product product;
  final CartChangedCallback onCartChanged;
  final bool inCart;

  ShoppingListItem({this.product, this.onCartChanged, this.inCart});

  Color getColor(BuildContext context) {
    return inCart ? Colors.black : Theme.of(context).primaryColor;
  }

  TextStyle getTextStyle(BuildContext context) {
    if (inCart) {
      return TextStyle(
        color: Colors.black,
        decoration: TextDecoration.lineThrough,
      );
    } else {
      return TextStyle(color: Colors.blue);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onCartChanged(product, inCart);
      },
      leading: CircleAvatar(
        backgroundColor: getColor(context),
        child: Text(product.name[0]),
      ),
      title: Text(
        product.name,
        style: getTextStyle(context),
      ),
    );
  }
}
