import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class homeRatingBar extends StatefulWidget {
  const homeRatingBar({super.key});

  @override
  State<homeRatingBar> createState() => _homeRatingBarState();
}

class _homeRatingBarState extends State<homeRatingBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rating Bar Screen"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(children: [
              Text(
                "Constant Rating Bar: ",
                style: TextStyle(fontSize: 35),
              ),
              RatingBarIndicator(
                rating: 2.5,
                itemCount: 5,
                itemSize: 50,
                itemBuilder: (context, _) {
                  return Icon(
                    Icons.star,
                    color: Colors.orange,
                  );
                },
              ),
            ]),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Text(
                  "Rating from User: ",
                  style: TextStyle(fontSize: 35),
                ),
                RatingBar(
                    initialRating: 0,
                    minRating: 0,
                    maxRating: 5,
                    allowHalfRating: true,
                    itemSize: 50,
                    ratingWidget: RatingWidget(
                      full: Icon(Icons.star, color: Colors.blueAccent),
                      half: Icon(Icons.star_half, color: Colors.blueAccent),
                      empty: Icon(Icons.star_border, color: Colors.blueAccent),
                    ),
                    onRatingUpdate: (rating) {})
              ],
            ),
          ],
        ),
      ),
    );
  }
}
