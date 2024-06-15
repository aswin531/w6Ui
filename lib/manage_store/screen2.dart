import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ScreenTwo extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  ScreenTwo({
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Manage Store'),
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 3,
          selectedItemColor: const Color.fromARGB(255, 0, 156, 247),
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          backgroundColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.currency_rupee_sharp), label: 'Orders'),
            BottomNavigationBarItem(
                icon: Icon(Icons.grid_view_outlined), label: 'Products'),
            BottomNavigationBarItem(
              icon: Icon(Icons.layers),
              label: 'Manage',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: 'Account'),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              crossAxisCount: 2, mainAxisExtent: 150.0,
              // childAspectRatio: 0.7,
            ),
            itemCount: 7,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shadowColor: Colors.grey,
                  elevation: 5,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.topLeft,
                            height: 50,
                            width: 70,
                            child: Image.asset(iconsdata[index]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                          child: Text(
                            cardlist[index],
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                        ),
                        if (index == 6)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ClipRect(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.green,
                                  ),
                                  alignment: Alignment.center,
                                  height: 14,
                                  width: 50,
                                  child: const Text(
                                    'NEW',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          )
                      ]),
                ),
              );
            },
          ),
        ));
  }

  final cardlist = [
    'Marketing\nDesign',
    'Online\nPayments',
    'Discount\nCoupons',
    'My\nCustomers',
    'Store QR\nCode',
    'Extra\nCharges',
    'Order\nForm'
  ];

  final iconsdata = [
    'assets/images/volume.jpg',
    'assets/images/rupee.jpg',
    'assets/images/offerbadge.jpg',
    'assets/images/people.jpg',
    'assets/images/scanner.jpg',
    'assets/images/currencynote.jpg',
    'assets/images/notes.jpeg',
  ];

  // final colors = [
  //   Colors.orange,
  //   Colors.green,
  //   Colors.yellow,
  //   Colors.teal,
  //   Colors.grey,
  //   Colors.purple,
  //   Colors.pink,
  // ];
}
