import 'package:flutter/material.dart';

class UserProductItem extends StatelessWidget {
  final String title;
  final String imgUrl;

  UserProductItem({@required this.title, @required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imgUrl),
      ),
      trailing: Container(
        width: 100,
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.edit),
              color: Theme.of(context).primaryColor,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.delete),
              color: Theme.of(context).errorColor,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
