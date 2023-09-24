import 'package:flutter/material.dart';

class Blogs extends StatelessWidget {
  Blogs({
    super.key,
    required this.size,
  });

  final Size size;
  final blogs = [
    {
      "title": "1.The Comprehensive Guide to Data Center Decommissioning",
      "desc":
          "In the ever-evolving landscape of technology, one aspect often overlooked is the graceful exit of the old to make way for the new. We will delve into the intricate world of retiring the old servers to make way for the new age of technology in a process called Data Center Decommissioning. We are going to go over some of the pressing questions regarding data center decommissioning. ",
      "url": "assets/blog_images/b1.jpg"
    },
    {
      "title": "2.The 8 Step Checklist for Data Center Decommissioning",
      "desc":
          "As with any piece of equipment, your technology and IT equipment need to be updated every so often. So, it should be no surprise when your servers reach the end of their lives and need a data center decommissioning. Even if your servers and other IT equipment seem to be operating fine, you could be missing out on opportunities to improve your company’s data security and business processes.",
      "url": "assets/blog_images/b2.jpg"
    },
    {
      "title":
          "3. 4 Simple Green Ideas For The Office to Maximize Sustainability",
      "desc":
          "Lithium-ion batteries (Li-ion) are known for their long battery life. This makes them a popular power source for many different applications and electronics. But, what should you do with Li-ion batteries when they reach the end of their lifecycle? Are lithium batteries recyclable? The quick answer is YES! Lithium-ion batteries are recyclable. However, you should NEVER just throw them into your recycling bin and call it a day. ",
      "url": "assets/blog_images/b3.jpg"
    },
    {
      "title": "4.The Comprehensive Guide to Data Center Decommissioning",
      "desc":
          "In the ever-evolving landscape of technology, one aspect often overlooked is the graceful exit of the old to make way for the new. We will delve into the intricate world of retiring the old servers to make way for the new age of technology in a process called Data Center Decommissioning. We are going to go over some of the pressing questions regarding data center decommissioning. ",
      "url": "assets/blog_images/b4.png"
    },
  ];
  Widget second(String url, String title, String desc) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.all(size.width * 0.03),
      child: Padding(
        padding: EdgeInsets.all(size.width * 0.02),
        child: Column(children: [
          Row(
            children: [
              Container(
                width: size.width * 0.5,
                child: Text(
                  title.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: size.width * 0.04),
                child: Image.asset(
                  url.toString(),
                  width: size.width * 0.4,
                  height: size.height * 0.1,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Text(desc.toString()),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: blogs.length,
      itemBuilder: (context, index) {
        if (index == 0) {
          return second(
              blogs[index]['url'].toString(),
              blogs[index]['title'].toString(),
              blogs[index]['desc'].toString());
        }
        return Card(
          elevation: 2,
          margin: EdgeInsets.all(size.width * 0.03),
          child: Padding(
            padding: EdgeInsets.all(size.width * 0.02),
            child: Column(children: [
              Text(
                blogs[index]['title'].toString(),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Image.asset(
                blogs[index]['url'].toString(),
                width: 600.0,
                height: 240.0,
                fit: BoxFit.cover,
              ),
              Text(blogs[index]['desc'].toString()),
            ]),
          ),
        );
      },
    );
  }
}
