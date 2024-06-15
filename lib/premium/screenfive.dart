import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ScreenFive extends StatefulWidget {
  const ScreenFive({super.key});

  @override
  State<ScreenFive> createState() => _ScreenFiveState();
}

class _ScreenFiveState extends State<ScreenFive> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = YoutubePlayerController(
        initialVideoId: 'eyh_Q2PEmg',
        flags: const YoutubePlayerFlags(
          // autoPlay: false,
          mute: true,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // toolbarHeight: 100,
        title: const Text('Dukaan Premium'),
        leading: const Icon(
          Icons.arrow_back,
          size: 30,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Stack(children: [
            Container(
              width: double.infinity,
              height: 70,
              color: Colors.blue,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.white,
                  border: Border.all(width: 0),
                ),
                height: 170,
                width: double.infinity,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: SizedBox(
                        height: 50,
                        width: 200,
                        child: Image.asset('assets/images/PREMIUM.png')),
                  ),
                  const Text(
                    'Get Dukaan Premium for just',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  const SizedBox(
                    height: 0,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      '₹4,999/year',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                  ),
                  const SizedBox(
                    height: 0,
                  ),
                  const Text(
                    'All the advanced features for scaling your',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const Text(
                    'bussiness.',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ]),
              ),
            )
          ]),
          const SizedBox(
            height: 10,
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Features',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset('assets/images/globe.1.png')),
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Custom domain name',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      Text(
                          'Get your own custom domain and build\nyour brand on the internet.')
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset('assets/images/verifirdog.png')),
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Verified seller badge',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      Text(
                          'Get green verified badge under your\nstore name and build trust.')
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset('assets/images/laptop.png')),
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dukaan for PC',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      Text(
                          'Access all the exclusive premium\nfeatures on Dukaan for PC.')
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset('assets/images/headohone.jpg')),
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Priority support',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      Text(
                          'Get your questions resolved with our\npriority customer support.')
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              thickness: 4,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(11, 20, 0, 10),
              child: Text(
                'What is Dukaan Premium?',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.red,
                progressColors: const ProgressBarColors(
                    playedColor: Colors.amber, handleColor: Colors.red),
                onReady: () {
                  _controller.addListener(
                    () {},
                  );
                },
              ),
            ),
            const Divider(
              thickness: 4,
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(11, 8, 8, 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Frequently asked questions',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 15),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'What types of business can use Dukan\nPremium?',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                      SizedBox(
                        width: 103,
                      ),
                      FaIcon(FontAwesomeIcons.minus)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Dukaan caters to a wide variety of sellers. Be it a\nsmall grocery store or a big legacy brand - anyone\nwho wants to sell their products/services online -\nDukaan is the perfectplatform for you.',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(11, 8, 8, 8),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                        child: Text(
                          'What is your refund policy?',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        width: 190,
                      ),
                      FaIcon(FontAwesomeIcons.plus)
                    ],
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                        child: Text(
                          'Will there be an automatic charge after the\npaid trial?',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        width: 95,
                      ),
                      FaIcon(FontAwesomeIcons.plus)
                    ],
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                        child: Text(
                          'What payment methods do you offer?',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        width: 127,
                      ),
                      FaIcon(FontAwesomeIcons.plus)
                    ],
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                        child: Text(
                          'What happens when my free trial ends?',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        width: 115,
                      ),
                      FaIcon(FontAwesomeIcons.plus)
                    ],
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                        child: Text(
                          'What are the terms for the custom domain?',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      FaIcon(FontAwesomeIcons.plus)
                    ],
                  ),
                  Divider(
                    thickness: 2,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 5,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(14, 10, 0, 5),
              child: Text(
                'Need help? Get in touch',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(11, 8, 8, 8),
              child: Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey, width: 1.5)),
                      height: 80,
                      width: 185,
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Icon(Icons.chat_bubble_outline),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Live Chat',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      )),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey, width: 1.5)),
                    height: 80,
                    width: 185,
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(children: [
                        Icon(Icons.call_outlined),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Phone Call',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        )
                      ]),
                    ),
                  )
                ],
              ),
            ),
            const Divider(
              thickness: 2,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Select Domain',
                    style: TextStyle(
                        color: Colors.teal, fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  width: 110,
                ),
                SizedBox(
                  width: 177,
                  child: ElevatedButton(
                      style: const ButtonStyle(),
                      onPressed: () {},
                      child: const Text(
                        'Get Premium',
                      )),
                )
              ],
            )
          ]),
        ],
      ),
    );
  }
}
