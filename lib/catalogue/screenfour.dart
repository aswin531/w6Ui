// import 'dart:math';

// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScreenFour extends StatefulWidget {
  const ScreenFour({
    Key? key,
  }) : super(key: key);

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  @override
  Widget build(BuildContext context) {
    bool _isSwitched = true;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.fromLTRB(65, 10, 0, 5),
          child: Column(
            children: [
              ListTile(
                titleAlignment: ListTileTitleAlignment.center,
                title: Padding(
                  padding: EdgeInsets.only(left: 70),
                  child: Text(
                    'Catalogue',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                trailing: SizedBox(
                  width: 10,
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Products',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(width: 78),
                    Text(
                      'Categories',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 0.5),
            borderRadius: BorderRadius.circular(5)),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 6),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              padding: const EdgeInsets.fromLTRB(8, 0, 10, 0),
                              height: 120,
                              width: 108,
                              child:
                                  Image.asset('assets/images/img$index.jpeg')),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(product[index]),
                                    const SizedBox(width: 85),
                                    Padding(
                                      padding: (index == 6 || index == 7)
                                          ? const EdgeInsets.only(left: 34.0)
                                          : (index % 2 == 0 && index > 0)
                                              ? const EdgeInsets.only(
                                                  left: 65.0)
                                              : EdgeInsets.zero,
                                      child: const FaIcon(
                                        FontAwesomeIcons.ellipsisVertical,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                const Text('1 Piece'),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  price[index],
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: Row(
                                    children: [
                                      const Text(
                                        'In stock',
                                        style: TextStyle(color: Colors.green),
                                      ),
                                      const SizedBox(
                                        width: 150,
                                      ),
                                      Switch(
                                        value: _isSwitched,
                                        onChanged: (value) {
                                          setState(() {
                                            _isSwitched = value;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 3,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(Icons.share_outlined),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Share Product')
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          itemCount: product.length,
        ),
      ),
    );
  }

  final product = [
    'couch Potato | Women...',
    'couch Potato | Men | Bl...',
    'Mug | Explore',
    'Combo Blahst 1 | Pack...',
    'Mug | Orchard',
    'Combo Blahst 2 | Explo...',
    '| See Combo Pack',
    'Kids Combo Blahst'
  ];

  final price = [
    '₹799',
    '₹799',
    '₹399',
    '₹699',
    '₹449',
    '₹599',
    '₹1,299',
    '₹1,199'
  ];
}
