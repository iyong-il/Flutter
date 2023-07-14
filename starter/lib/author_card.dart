import 'package:flutter/material.dart';

import 'circle_image.dart';

class AuthorCard extends StatefulWidget {
  const AuthorCard(
      {super.key,
      required this.authorName,
      required this.title,
      required this.imageProvider});

  final String authorName;
  final String title;
  final ImageProvider imageProvider;

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool iconClicked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          CircleImage(
            imageProvider: widget.imageProvider,
          ),
          const SizedBox(
            width: 10.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.authorName,
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                widget.title,
                style: Theme.of(context).textTheme.headline3,
              ),
            ],
          ),
        ]),
        IconButton(
          icon:
              iconClicked ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
          onPressed: () {
            setState(() {
              iconClicked = !iconClicked;
            });
            const snackBar = SnackBar(content: Text('Favorite clicked!'));
            if (iconClicked) {
              print('icon clicked : true!');
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            } else {
              print('icon clicked : false');
            }
          },
        )
      ],
    );
  }
}
