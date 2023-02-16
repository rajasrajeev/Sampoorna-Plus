import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  final String label;
  final String image;
  final Function? onClick;

  const Tile({
    super.key,
    required this.label,
    required this.image,
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      child: Container(
        width: size.width * 0.40,
        height: size.height * 0.20,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: Colors.white,
          boxShadow: [
            // BoxShadow(
            //   color: Colors.purple.shade300,
            //   spreadRadius: 1,
            //   blurRadius: 5,
            //   offset: const Offset(0, 5),
            // ),
            // BoxShadow(
            //   color: Colors.purple.shade300,
            //   offset: const Offset(-5, 0),
            // ),
            // BoxShadow(
            //   color: Colors.purple.shade300,
            //   offset: const Offset(5, 0),
            // ),
            BoxShadow(
              color: Colors.purple.shade100,
              spreadRadius: 1,
              blurRadius: 4,
            )
          ],
        ),
        child: Column(
          children: <Widget>[
            const Spacer(),
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                image,
                fit: BoxFit.fill,
                height: size.width * 0.35,
                width: size.width * 0.35,
              ),
            ),
            const Spacer(),
            // ignore: prefer_const_constructors
            Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 17,
                color: Colors.black87,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
      onTap: () => onClick!(),
    );
  }
}
