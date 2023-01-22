import 'package:flutter/material.dart';
import 'package:shopping/Pages/login_page.dart';

import '../components/constant.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({
    super.key,
  });

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  child: TryInsert(
                    email: 'hello@emal',
                  ),
                ),
                /*
                      
                      Body Widget....
                      
                       */
                const CardBanner(
                  label: 'Payment Setting',
                ),
                ReusableCard(
                  onPress: (() {}),
                  colour: kCardColor,
                  cardChild: const CardContent(
                    iconColour: kBoostColor,
                    icon: Icons.credit_card,
                    label: 'Credit Card',
                    txtColor: kBoostColor,
                  ),
                ),
                const CardBanner(label: 'App Setting'),
                ReusableCard(
                  onPress: (() {}),
                  colour: kCardColor,
                  cardChild: const CardContent(
                    iconColour: kContentColor,
                    icon: Icons.settings,
                    label: "Preference",
                    txtColor: kContentColor,
                    subTitle: "Language and theme",
                  ),
                ),
                const CardBanner(label: 'about'),
                ReusableCard(
                  onPress: (() {}),
                  colour: kCardColor,
                  cardChild: const CardContent(
                    iconColour: kContentColor,
                    icon: Icons.power_settings_new,
                    label: "Get to know us",
                    txtColor: kContentColor,
                    subTitle: "Learn about the SnapUp team",
                  ),
                ),
                InkWell(
                  onTap: (() {
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => const LoginPage())));
                  }),
                  child: Container(
                    width: double.infinity,
                    margin: const EdgeInsets.fromLTRB(15, 40, 15, 0),
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: kLogoutColor,
                    ),
                    child: const Center(
                        child: Text(
                      'Sign In',
                      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: kLogoutColorText),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TryInsert extends StatefulWidget {
  String email;
  TryInsert({
    required this.email,
    Key? key,
  }) : super(key: key);

  @override
  State<TryInsert> createState() => _TryInsertState();
}

class _TryInsertState extends State<TryInsert> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.all(15.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.grey),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20.0),
              child: const Icon(
                Icons.person_rounded,
                size: 60.0,
                color: Color(0xff82868c),
              ),
            ),
            const SizedBox(
              width: 16.0,
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Customer Name",
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.email,
                    style: const TextStyle(color: Color(0xff686b71)),
                  ),
                ],
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios,
              size: 40.0,
            ),
          ],
        ),
      ),
    );
  }
}

class CardBanner extends StatelessWidget {
  final String label;
  const CardBanner({super.key, required this.label});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15.0, 15.0, 10.0, 10.0),
      child: Text(label),
    );
  }
}

class CardContent extends StatelessWidget {
  final IconData icon;
  final String label;
  final String? subTitle;
  final Color iconColour;
  final Color txtColor;

  const CardContent(
      {super.key,
      required this.icon,
      required this.label,
      required this.iconColour,
      required this.txtColor,
      this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 40.0,
          color: iconColour,
        ),
        const SizedBox(width: 12.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(
                color: txtColor,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            subTitle != null
                ? Text(
                    subTitle ?? '',
                    style: const TextStyle(color: kSubColor),
                  )
                : const SizedBox.shrink()
          ],
        ),
        const Spacer(),
        const Icon(Icons.arrow_forward_ios_outlined),
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color colour;
  final VoidCallback onPress;
  final Widget cardChild;

  const ReusableCard({super.key, required this.onPress, required this.colour, required this.cardChild});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: colour),
        child: cardChild,
      ),
    );
  }
}
