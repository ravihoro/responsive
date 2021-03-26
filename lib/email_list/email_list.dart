import 'package:flutter/material.dart';
import '../model/email.dart';
import 'package:responsive/util/constants.dart';

class EmailList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _customSearch(),
          Expanded(
            child: ListView.builder(
              itemCount: Email.emails.length,
              itemBuilder: (context, index) {
                return _emailCard(Email.emails[index]);
              },
            ),
          ),
        ],
      ),
      color: kBgDarkColor,
    );
  }

  Widget _customSearch() {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      decoration: BoxDecoration(
        color: kBgLightColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                disabledBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  Widget _emailCard(Email email) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: kBgLightColor,
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  maxRadius: 20,
                  backgroundImage: AssetImage(
                    email.image,
                  ),
                ),
                title: Text(
                  email.name,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                subtitle: Text(
                  email.subject,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                trailing: Text(
                  email.time,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  email.body,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                  maxLines: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
