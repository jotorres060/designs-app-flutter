import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
   
  const BasicDesignScreen({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Image(image: AssetImage('assets/landscape.jpg')),
          const _Title(),
          const _Button(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
            child: Column(
              children: const [
                Text('Elit anim laborum labore incididunt ut occaecat nulla aliqua. Qui id amet pariatur incididunt occaecat non nulla culpa ad. Laboris laboris veniam consectetur consectetur irure enim ipsum qui reprehenderit ipsum adipisicing officia. Ut dolor tempor proident in sunt magna est proident commodo esse.'),
                SizedBox(height: 20),
                Text('Elit anim laborum labore incididunt ut occaecat nulla aliqua. Qui id amet pariatur incididunt occaecat non nulla culpa ad. Laboris laboris veniam consectetur consectetur irure enim ipsum qui reprehenderit ipsum adipisicing officia. Ut dolor tempor proident in sunt magna est proident commodo esse.'),
              ],
            ),
          )
        ],
      ),
    );
  }

}

class _Title extends StatelessWidget {

  const _Title({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Oeschinen Lake Campground', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Kandersteg, Switzerland', style: TextStyle(color: Colors.black45))
            ],
          ),
          Expanded(child: Container()),
          Row(
            children: const [
              Icon(Icons.star, color: Colors.red),
              Text('41')
            ],
          ),
        ],
      ),
    );
  }

}

class _Button extends StatelessWidget {

  const _Button({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        _CustomButton(icon: Icons.call, color: Colors.blue, title: 'CALL'),
        _CustomButton(icon: Icons.send, color: Colors.blue, title: 'ROUTE'),
        _CustomButton(icon: Icons.share, color: Colors.blue, title: 'SHARE'),
      ],
    );
  }

}

class _CustomButton extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String title;

  const _CustomButton({
    Key? key,
    required this.icon,
    required this.color,
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: color),
        Text(title, style: TextStyle(color: color))
      ],
    );
  }
}
