import 'package:flutter/material.dart';

class UserModel {
  final int id;
  final String name;
  final String phone;
  UserModel({
    required this.id,
    required this.name,
    required this.phone,
  });
}

class UserSCreen extends StatelessWidget {
  List<UserModel> users = [
    UserModel(id: 1, name: "Hanan", phone: "01280292678"),
    UserModel(id: 2, name: "Eman", phone: "01284582678"),
    UserModel(id: 3, name: "Sarah", phone: "01278785456"),
    UserModel(id: 4, name: "Eman ", phone: "012458458548"),
    UserModel(id: 5, name: "Romisaa", phone: "018892475"),
    UserModel(id: 2, name: "Eman", phone: "01284582678"),
    UserModel(id: 3, name: "Sarah", phone: "01278785456"),
    UserModel(id: 4, name: "Eman ", phone: "012458458548"),
    UserModel(id: 5, name: "Romisaa", phone: "018892475"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "User",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: ListView.separated(
            itemBuilder: (context, Index) => buildUserItem(user: users[Index]),
            separatorBuilder: (context, Index) => Divider(),
            itemCount: users.length));
  }

  Widget buildUserItem({required UserModel user}) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 25,
              child: Text(
                "${user.id}",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${user.name}",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  "${user.phone}",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            )
          ],
        ),
      );
}
