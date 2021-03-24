import 'package:flutter/material.dart';

class Support extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Support',
              style: TextStyle(fontWeight: FontWeight.w900, color: Colors.deepOrange, letterSpacing: 10),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Email:',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.deepOrange, letterSpacing: 5
                  ),
                ),
                Text('support@nearestcity.com',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.deepOrange, letterSpacing: 5
                  ),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Phone:',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.deepOrange, letterSpacing: 5
                  ),
                ),
                Text('07051350795',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.deepOrange, letterSpacing: 5
                  ),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Address:',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.deepOrange, letterSpacing: 5
                  ),
                ),
                Text('45, Hughes Street, Yaba. Lagos State.',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.deepOrange, letterSpacing: 5
                  ),
                )
              ],
            )
          ],
        ));
  }
}
