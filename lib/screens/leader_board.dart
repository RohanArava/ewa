import 'package:flutter/material.dart';

class leaderboard extends StatelessWidget {
  const leaderboard({
    super.key,
    required this.size,
  });

  final Size size;
  Widget Cards(String s1, String s2, String s3) {
    return Card(
      child: ListTile(
        leading: Text(
          s1,
          style: TextStyle(
              fontSize: size.width * 0.05,
              color: Colors.green,
              fontWeight: FontWeight.bold),
        ),
        title: Text(
          s2,
          style: TextStyle(fontSize: size.width * 0.05),
        ),
        trailing: Text(
          s3,
          style: TextStyle(
              fontSize: size.width * 0.05, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(size.width * 0.009),
      child: Column(children: [
        Card(
          color: Colors.white,
          elevation: 1.5,
          child: Center(
            child: Text(
              'LeaderBoard',
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: size.width * 0.1),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Container(
          height: size.height * 0.09,
          width: size.width,
          padding: EdgeInsets.all(size.height * 0.003),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(size.width * 0.06),
            // gradient: LinearGradient(colors: [
            //   Colors.yellow.shade600,
            //   Colors.orange,
            //   Colors.red
            // ])
          ),
          child: ListTile(
            leading: Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Theme.of(context).colorScheme.outline,
                ),
                borderRadius:
                    BorderRadius.all(Radius.circular(size.width * 0.04)),
              ),
              color: Theme.of(context).primaryColor,
              child: Padding(
                padding: EdgeInsets.only(
                    top: size.height * 0.01,
                    right: size.width * 0.024,
                    left: size.width * 0.024,
                    bottom: size.width * 0.018),
                child: InkWell(
                  onTap: () {},
                  child: Text('7 days',
                      style: TextStyle(
                          fontSize: size.width * 0.06, color: Colors.white)),
                ),
              ),
            ),
            title: InkWell(
              onTap: () {},
              child: Text(
                '10 days',
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontSize: size.width * 0.06, color: Colors.black),
              ),
            ),
            trailing: InkWell(
              onTap: () {},
              child: Text(
                'all-time',
                style:
                    TextStyle(fontSize: size.width * 0.06, color: Colors.black),
              ),
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Cards('1', 'Markzukenberg', '₹ 20000'),
                Cards('2', 'Julia', '₹ 18000'),
                Cards('3', 'Sofia', '₹ 12000'),
                Cards('4', 'Senju', '₹ 10000'),
                Cards('5', 'Steve Jobs', '₹ 1000'),
                Cards('5', 'Steve Jobs', '₹ 1000'),
                Cards('5', 'Steve Jobs', '₹ 1000'),
                Cards('5', 'Steve Jobs', '₹ 1000'),
                Cards('5', 'Steve Jobs', '₹ 1000'),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
