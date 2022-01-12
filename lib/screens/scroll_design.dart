import 'package:flutter/material.dart';

class ScrollDesignScreen extends StatelessWidget {
   
  final boxDecoration = const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.5, 0.5],
      colors: [
        Color(0xff5EE8C5),
        Color(0xff30BAD6)
      ]
    ),
  );

  const ScrollDesignScreen({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          children: const [
            Page1(),
            Page2()
          ],
        ),
      ),
    );
  }

}

class Page1 extends StatelessWidget {

  const Page1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        _Background(),
        _MainContent()
      ],
    );
  }

}

class Page2 extends StatelessWidget {
  
  const Page2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: () { },
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text('Welcome to Flutter', style: TextStyle(color: Colors.white, fontSize: 30)),
          ),
          style: TextButton.styleFrom(
            backgroundColor: const Color(0Xff0098FA),
            shape: const StadiumBorder()
          ),
        ),
      ),
    );
  }
}

class _Background extends StatelessWidget {

  const _Background({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      color: const Color(0xff30BAD6),
      child: const Image(image: AssetImage('assets/scroll-1.png')),
      height: double.infinity
    );
  }

}

class _MainContent extends StatelessWidget {

  const _MainContent({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(color: Colors.white, fontSize: 60, fontWeight: FontWeight.bold);

    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          const Text('11°', style: textStyle),
          const Text('Miércoles', style: textStyle),
          Expanded(child: Container()),
          const Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 100)
        ],
      ),
    );
  }

}
