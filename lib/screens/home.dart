import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: size.width * 0.8,
            height: size.width * 0.4,
            margin: EdgeInsets.all(size.width * 0.02),
            child: Card(
              child: InkWell(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                onTap: () => {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Image.asset(
                        "assets/placeholder.png",
                      ),
                      width: size.width * 0.2,
                      height: size.width * 0.2,
                    ),
                    const Flexible(
                        child: Text(
                      "Locate Nearby Disposal Centers",
                      style: TextStyle(fontSize: 24.0),
                    ))
                  ],
                ),
              ),
            ),
          ),
          const Row(),
          const Row(),
          const Row(),
        ],
      ),
    );
  }
}
