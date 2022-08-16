import 'package:flutter/material.dart';

class CollectedCard extends StatelessWidget {
  final String? profilePhoto;
  final String userName;
  final double scrapWeight;

  const CollectedCard({
    Key? key,
    required this.scrapWeight,
    this.profilePhoto,
    required this.userName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18.0),
      margin: const EdgeInsets.only(top: 16.0),
      decoration: BoxDecoration(
        color: const Color(0xff6FCF97),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 9,
            offset: Offset(0, 14), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: 65.0,
              height: 65.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(
                        '${profilePhoto == null ? 'https://i.pinimg.com/564x/dc/30/96/dc3096a7ad1a80df59268d4377d85741.jpg' : profilePhoto}'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      userName,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Text(
                    '$scrapWeight kg',
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.justify,
                    maxLines: 3,
                    style: const TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
