import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Screenone extends StatefulWidget {
  const Screenone({super.key});

  @override
  State<Screenone> createState() => _ScreenoneState();
}

class _ScreenoneState extends State<Screenone> {
  bool _isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        centerTitle: true,
        title: const Text('Additional Information'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const ListTile(
              leading: Icon(
                Icons.share_outlined,
                color: Colors.black87,
                size: 30,
              ),
              title: Text('Share Dukaan App',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 20)),
              trailing: SizedBox(
                width: 30,
                child: Icon(
                  Icons.keyboard_arrow_right_outlined,
                  size: 35,
                ),
              ),
            ),
            const ListTile(
              leading: FaIcon(
                FontAwesomeIcons.language,
                color: Colors.black87,
                size: 30,
              ),
              title: Text('Change Language',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 20)),
              trailing: SizedBox(
                width: 30,
                child: Icon(
                  Icons.keyboard_arrow_right_outlined,
                  size: 35,
                ),
              ),
            ),
            ListTile(
              leading: const FaIcon(
                FontAwesomeIcons.whatsapp,
                color: Colors.black87,
                size: 30,
              ),
              title: const Text('Whatsapp Chat Support',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 20)),
              trailing: SizedBox(
                width: 42,
                child: Switch(
                  value: _isSwitched,
                  onChanged: (value) {
                    setState(() {
                      _isSwitched = value;
                    });
                  },
                ),
              ),
            ),
            const ListTile(
              leading: FaIcon(
                FontAwesomeIcons.lock,
                color: Colors.black87,
                size: 30,
              ),
              title: Text('Privacy Policy',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 20)),
            ),
            const ListTile(
              leading: Icon(
                Icons.star_border_purple500_outlined,
                color: Colors.black87,
                size: 30,
              ),
              title: Text('Rate Us',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 20)),
            ),
            const ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.black87,
                size: 30,
              ),
              title: Text('Sign Out',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 20)),
            ),
            const SizedBox(
              height: 370,
            ),
            const ListTile(
              title: Column(
                children: [
                  Text(
                    'Version',
                    style: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.grey),
                  ),
                  Text(
                    '2.4.2',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
