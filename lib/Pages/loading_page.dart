import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shopping/Pages/home_page.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    loadingDuration();
  }

  Future loadingDuration() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, route);
  }

  route() {
    Navigator.push(context, MaterialPageRoute(builder: ((context) => const GoodsPage())));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0x00000000),
      body: Center(
        child: CircleAvatar(
          backgroundImage: AssetImage('images/logo-white.png'),
          radius: 100,
        ),
      ),
    );
  }
}
