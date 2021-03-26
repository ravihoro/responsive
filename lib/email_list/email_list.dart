import 'package:flutter/material.dart';
import 'package:responsive/email_detail/email_detail.dart';
import '../model/email.dart';
import 'package:responsive/util/constants.dart';
import '../util/responsive.dart';
import '../drawer/custom_drawer.dart';

class EmailList extends StatefulWidget {
  @override
  _EmailListState createState() => _EmailListState();
}

class _EmailListState extends State<EmailList> {
  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: ConstrainedBox(
        child: CustomDrawer(),
        constraints: BoxConstraints(
          maxWidth: 250,
        ),
      ),
      key: key,
      body: Container(
        child: Column(
          children: [
            _customSearch(),
            Expanded(
              child: ListView.builder(
                itemCount: Email.emails.length,
                itemBuilder: (context, index) {
                  return _emailCard(Email.emails[index], context);
                },
              ),
            ),
          ],
        ),
        color: kBgDarkColor,
      ),
    );
  }

  Widget _customSearch() {
    return Row(
      children: [
        Responsive.isDesktop(context)
            ? Container()
            : IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  key.currentState.openDrawer();
                },
              ),
        SizedBox(
          width: 5,
        ),
        Expanded(
          child: Container(
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
          ),
        ),
      ],
    );
  }

  Widget _emailCard(Email email, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: Responsive.isDesktop(context)
            ? () {}
            : () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => EmailDetail()));
              },
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
      ),
    );
  }
}
