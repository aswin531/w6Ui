import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScreenSix extends StatelessWidget {
  ScreenSix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('Payments'),
        leading: const Icon(
          Icons.arrow_back,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.info_outline,
              size: 27,
            ),
          )
        ],
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 5, 5, 8),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.2,
                    ),
                    borderRadius: BorderRadius.circular(5)),
                width: 380,
                height: 180,
                child: Card(
                  borderOnForeground: true,
                  shadowColor: Colors.grey,
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 5, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Transaction Limit',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                            'A free limit up to which you will receive\nthe online payments directly in your bank'),
                        const SizedBox(
                          height: 2,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const LinearProgressIndicator(
                          color: Colors.blue,
                          value: 0.3,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text('36,668 left out of ₹50,000'),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(3, 15, 0, 0),
                          child: SizedBox(
                            width: 160,
                            height: 43,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: const Text('Increase limit')),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                    child: Row(
                      children: [
                        Text('Default Method',
                            style: TextStyle(fontWeight: FontWeight.w500)),
                        SizedBox(
                          width: 142,
                        ),
                        Text('Online Payments',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey)),
                        SizedBox(
                          width: 10,
                        ),
                        FaIcon(FontAwesomeIcons.angleRight, color: Colors.grey)
                      ],
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                child: Row(
                  children: [
                    Text('Payment Profile',
                        style: TextStyle(fontWeight: FontWeight.w500)),
                    SizedBox(
                      width: 157,
                    ),
                    Text('Bank Account',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.grey)),
                    SizedBox(
                      width: 10,
                    ),
                    FaIcon(FontAwesomeIcons.angleRight, color: Colors.grey)
                  ],
                ),
              ),
              const Divider(
                thickness: 3,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      ' Payment Overview',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16),
                    ),
                    SizedBox(
                      width: 155,
                    ),
                    Text('Life Time'),
                    SizedBox(
                      width: 5,
                    ),
                    FaIcon(FontAwesomeIcons.angleDown, color: Colors.grey)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            5,
                          ),
                          color: Colors.orange),
                      height: 80,
                      width: 180,
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(12, 10, 0, 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'AMOUNT ON HOLD',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(2, 10, 0, 5),
                                child: Text(
                                  '₹0',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ]),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            5,
                          ),
                          color: const Color.fromARGB(255, 32, 194, 38)),
                      height: 80,
                      width: 180,
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(12, 10, 0, 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'AMOUNT RECEIVED',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(2, 10, 0, 5),
                                child: Text(
                                  '₹13,332',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Transactions',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey.shade400,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: const Text('On hold',
                              style: TextStyle(color: Colors.black)),
                        ),
                        const SizedBox(width: 15.0),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: const Text('Payouts (15)'),
                        ),
                        const SizedBox(width: 15.0),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey.shade400,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: const Text(
                            'Refunds',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 500,
                child: ListView.separated(
                    // physics: NeverScrollableScrollPhysics(),
                    itemCount: orderno.length,
                    separatorBuilder: (BuildContext ctx, int index) {
                      return const Divider();
                    },
                    itemBuilder: (BuildContext ctx, int index) {
                      return Column(
                        children: [
                          ListTile(
                            title: Text(
                              'Order ${orderno[index]}',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            leading: SizedBox(
                                height: 80,
                                width: 60,
                                child: Image.asset(
                                    'assets/images/img$index.jpeg')),
                            subtitle: Text(
                              date[index],
                              style: const TextStyle(color: Colors.grey),
                            ),
                            trailing: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, left: 15),
                                  child: Text(
                                    price[index],
                                    style: const TextStyle(
                                        fontSize: 15, color: Colors.blue),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 1),
                                  child: Text(
                                    '\u{1F7E2}  Successful',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 13),
                                child: Text(
                                  '${price[index]} deposited to 508860200000138',
                                  style: const TextStyle(
                                      color:
                                          Color.fromARGB(255, 104, 100, 100)),
                                ),
                              )),
                        ],
                      );
                    }),
              ),
            ],
          ),
        )
      ]),
    );
  }

  final orderno = [
    '#1688068',
    '#1598736',
    '#1364958',
    '#1322596',
    '#1379658',
    '#1369869',
    '#1366949',
    '#1598736',
    '#1364958',
    '#1322596',
    '#1379658',
    '#1598736',
    '#1364958',
    '#1322596',
    '#1379658',
  ];

  final date = [
    'Jul 12, 02:06 PM',
    'Apr 26, 07:47 AM',
    'Apr 11, 10:54 AM',
    'Apr 2, 11:29 AM',
    'Apr 2, 11:29 AM',
    'Apr 2, 11:19 AM',
    'Apr 1, 10:37 AM',
    'Apr 26, 07:47 AM',
    'Apr 11, 10:54 AM',
    'Apr 2, 11:29 AM',
    'Apr 2, 11:29 AM',
    'Apr 2, 11:19 AM',
    'Apr 1, 10:37 AM',
    'Apr 2, 11:29 AM',
    'Apr 2, 11:19 AM',
  ];

  final price = [
    '₹799',
    '₹397.4',
    '₹686.4',
    '₹1123.5',
    '₹599',
    '₹1098.5',
    '₹299.56',
    '₹799',
    '₹397.4',
    '₹686.4',
    '₹1123.5',
    '₹599',
    '₹1098.5',
    '₹299.56',
    '₹299.56',
  ];

  //lib/assets/images/img$index.jpeg
}
