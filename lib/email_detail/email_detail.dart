import 'package:flutter/material.dart';
import '../model/email.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../util/constants.dart';
import '../util/responsive.dart';

class EmailDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _headerIcons(context),
          Divider(
            thickness: 1.0,
            height: 5,
          ),
          _customListTile(),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 88.0),
              child: _emailBody(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _emailBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Hello my love,',
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[700],
          ),
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        Text(
          'Sunt architecto voluptatum esse empora sint nihil minus incidunt nlsi. Perspiciatis natus quo unde magnam numquam pariatur amet ut. Perspiciatis ab tota. Ut labore maxime provident. Voluptate ea omnis et ipsum asperiores laborum repellat explicabo fuga. Dolore voluptatem praesentium quis eos laborum dolores cupiditate nemo labore.',
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[700],
          ),
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        Text(
          'Love you,',
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[700],
          ),
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        Text(
          'Elvia',
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[700],
          ),
        ),
        Row(
          children: [
            Text(
              '6 attachments',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            Spacer(),
            Text(
              'Download All',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            Icon(
              Icons.file_download,
              color: Colors.grey,
              size: 25,
            ),
          ],
        ),
        Divider(
          thickness: 1.0,
        ),
        SingleChildScrollView(
          child: SizedBox(
            height: 200,
            child: StaggeredGridView.countBuilder(
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 4,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) => ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  "assets/images/Img_$index.png",
                  fit: BoxFit.cover,
                ),
              ),
              staggeredTileBuilder: (int index) => StaggeredTile.count(
                2,
                index.isOdd ? 2 : 1,
              ),
              mainAxisSpacing: kDefaultPadding,
              crossAxisSpacing: kDefaultPadding,
            ),
          ),
        ),
      ],
    );
  }

  Widget _customListTile() {
    Email email = Email.emails[1];
    return ListTile(
      leading: CircleAvatar(
        maxRadius: 30,
        backgroundImage: AssetImage(
          email.image,
        ),
      ),
      title: Row(
        children: [
          Text(
            email.name,
            style: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Flexible(
            child: Text(
              '  <${email.name}@gmail.com> to Jerry Torp',
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
      subtitle: Text(
        email.subject,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      trailing: Text(
        email.time,
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    );
  }

  Widget _headerIcons(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 15.0,
      ),
      child: Row(
        children: [
          Responsive.isDesktop(context) ? Container() : BackButton(),
          _customIcons(Icons.delete_outline),
          _customIcons(Icons.reply_outlined),
          _customIcons(Icons.reply_all_outlined),
          _customIcons(Icons.arrow_forward_outlined),
          Spacer(),
          _customIcons(Icons.print_outlined),
          _customIcons(Icons.bookmark_outline),
          _customIcons(Icons.more_vert),
        ],
      ),
    );
  }

  Widget _customIcons(IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 2.0,
      ),
      child: GestureDetector(
        child: Icon(
          icon,
        ),
      ),
    );
  }
}
