import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Card(
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 15, 15, 10),
              child: Row(
                children: [
                  Text(
                    'May 31, 05:42 PM',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 170,
                  ),
                  Icon(
                    Icons.circle,
                    color: Color.fromARGB(255, 8, 143, 150),
                    size: 18,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Delivered',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Card(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(12, 5, 10, 15),
                    child: Row(
                      children: [
                        Text(
                          '1 ITEM',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          width: 245,
                        ),
                        Icon(
                          Icons.receipt_outlined,
                          color: Colors.teal,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'RECEIPT',
                          style: TextStyle(
                              color: Colors.teal, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 70,
                        width: 60,
                        child: Image.asset('assets/images/bluetshirt.jpeg'),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Explore | Men | Navy Blue',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            '1 piece',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'size:XL',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.looks_one_rounded,
                                color: Colors.blue,
                              ),
                              Text(
                                ' X 799',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 215,
                              ),
                              Text(
                                '₹799',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const Card(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text('Item Total'),
                      SizedBox(
                        width: 287,
                      ),
                      Text(
                        '₹799',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 0, 0, 2.0),
                  child: Row(
                    children: [
                      Text('Delivery'),
                      SizedBox(
                        width: 300,
                      ),
                      Text(
                        'FREE',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.green),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 7, 0, 10),
                  child: Row(
                    children: [
                      Text(
                        'Grand Total',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 280,
                      ),
                      Text(
                        '₹799',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'CUSTOMER DETAILS',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 172,
                      ),
                      Icon(
                        Icons.share_outlined,
                        color: Colors.blueAccent,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'SHARE',
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'Deepa',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            '+91-7829000484',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 195),
                    FaIcon(
                      Icons.phone,
                      color: Colors.teal,
                      size: 30,
                    ),
                    SizedBox(width: 20),
                    FaIcon(
                      FontAwesomeIcons.whatsapp,
                      color: Colors.green,
                      size: 30,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Text(
                        'Address',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Text(
                        'D 1101 Chartered Beverly\nHills,Subramanyapura P.O',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'City',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text('Bangalore'),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Column(
                          children: [
                            Text(
                              'Pincode',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('560061')
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'Payment',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Online'),
                      ],
                    ),
                    const SizedBox(
                      width: 282,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 30,
                              width: 50,
                              color: Colors.white,
                              child: Center(
                                child: Text(
                                  'PAID',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.green,
                                      backgroundColor: Colors.grey.shade300),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ADDITIONAL INFORMATION',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'State',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Karnataka',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Email',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'greeniceaqua@gmail.com',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              foregroundColor: MaterialStateProperty.all(Colors.blueAccent),
              side: MaterialStateProperty.all(
                  const BorderSide(color: Colors.blue)),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.fromLTRB(120, 10, 120, 10),
              child: Text(
                'Share receipt',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
