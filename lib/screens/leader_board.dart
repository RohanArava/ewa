import 'package:flutter/material.dart';

class leaderboard extends StatelessWidget {
  const leaderboard({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
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
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
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
                borderRadius: const BorderRadius.all(Radius.circular(12)),
              ),
              color: Theme.of(context).primaryColor,
              child: Padding(
                padding:
                    EdgeInsets.only(top: 10, right: 12, left: 12, bottom: 10),
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
        SingleChildScrollView(
          child: Column(
            children: [
              Card(
                child: ListTile(
                  leading: Text(
                    '1',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    'Markzuckenberg',
                    style: TextStyle(fontSize: 20),
                  ),
                  trailing: Text(
                    '20000',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Text(
                    '2',
                    style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    'Sanath',
                    style: TextStyle(fontSize: 20),
                  ),
                  trailing: Text(
                    '₹ 18000',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Text(
                    '3',
                    style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    'Sofia',
                    style: TextStyle(fontSize: 20),
                  ),
                  trailing: Text(
                    '₹ 15000',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Text(
                    '4',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    'Senju',
                    style: TextStyle(fontSize: 20),
                  ),
                  trailing: Text(
                    '₹ 12000',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Text(
                    '5',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    'steve jobs',
                    style: TextStyle(fontSize: 20),
                  ),
                  trailing: Text(
                    '₹ 2000',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
