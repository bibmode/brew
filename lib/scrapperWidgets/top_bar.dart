import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final String? profilePhoto;
  final String userName;
  final String address;

  const TopBar({
    Key? key,
    required this.address,
    this.profilePhoto,
    required this.userName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18.0),
      decoration: BoxDecoration(
        color: const Color(0xff27AE60),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 9,
            offset: const Offset(0, 14), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                        '${profilePhoto != null ? profilePhoto : 'https://i.pinimg.com/564x/dc/30/96/dc3096a7ad1a80df59268d4377d85741.jpg'}'),
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
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      userName,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, bottom: 8.0),
                    child: Text(
                      address,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.justify,
                      maxLines: 3,
                      style: const TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
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
