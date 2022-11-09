import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  String title;
  String img;
  String subtitle;
  String trailing;
  InfoCard({
    Key? key,
    required this.trailing,
    required this.title,
    required this.img,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 55,
      height: 142,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 14,
                ),
                Container(
                  width: 50,
                  height: 50,
                  child: Image.asset(img),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: 64,
                ),
                Text(
                  trailing,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                )
              ],
            ),
            Container(
                width: MediaQuery.of(context).size.width - 86,
                child: Divider()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                subtitle,
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }
}
