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
            width: size.width * 0.6,
            height: size.width * 0.4,
            margin: EdgeInsets.all(size.width * 0.02),
            child: Card(
              child: InkWell(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                onTap: () => {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.location_on, size: size.width * 0.2),
                    const Text("Locate Nearby Disposal Centers")
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
