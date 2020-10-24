import 'package:flutter/material.dart';
import 'package:food_delivery/data/data.dart';
import 'package:food_delivery/models/order.dart';

@override
Widget build(BuildContext context) {
  double totalPrice = 0;
  currentUser.cart.forEach(
    (Order order) => totalPrice += order.quantity * order.food.price,
  );

  return Scaffold(
    appBar: AppBar(
      title: Text('Cart (${currentUser.cart.length})'),
    ),
    body: ListView.separated(
      itemCount: currentUser.cart.length + 1,
      itemBuilder: (BuildContext context, int index) {
        if (index < currentUser.cart.length) {
          Order order = currentUser.cart[index];
          return _buildCartItem(order);
        }
        return Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Estimated Delivery Time:',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '25 min',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Total Cost:',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '\$${totalPrice.toStringAsFixed(2)}',
                    style: TextStyle(
                      color: Colors.green[700],
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 80.0),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider(
          height: 1.0,
          color: Colors.grey,
        );
      },
    ),
    bottomSheet: Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, -1),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Center(
        child: FlatButton(
          child: Text(
            'CHECKOUT',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
            ),
          ),
          onPressed: () {},
        ),
      ),
    ),
  );
}
