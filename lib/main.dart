import 'package:flutter_web/material.dart';
import 'package:single_page_portfolio/responsiveLayout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: ResponsiveLayout(
          largeScreen: Row(
            children: <Widget>[
              buildMyProfilePicAndUrl(context),
              SizedBox(
                width: 40,
              ),
              Flexible(child: MyInfo()),
            ],
          ),
          smallScreen: Column(
            children: <Widget>[
              buildMyProfilePicAndUrl(context),
              SizedBox(
                height: 40,
              ),
              Flexible(child: MyInfo()),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildMyProfilePicAndUrl(BuildContext context) {
  return Container(
    color: Colors.white,
    child: ResponsiveLayout(
      largeScreen: Container(
        width: MediaQuery.of(context).size.width / 2,
        height: MediaQuery.of(context).size.height,
        child: Flex(
          crossAxisAlignment: CrossAxisAlignment.start,
          direction: Axis.vertical,
          children: <Widget>[
            Expanded(
              child: Image.asset(
                'images/dummy_avatar.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'I\'m a passionate Android developer with 2+ Years of experience in my field. I am currently working for a startup '
                'in Gurgaon, India. I love coding and exploring new tech. I have experience in both Java & Kotlin for App development.',
                style: TextStyle(
                    fontFamily: ('Lato'),
                    color: Colors.black,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold),
                softWrap: true,
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                onPressed: () {},
                color: Colors.blue,
                child: Text(
                  'RESUME',
                  style: TextStyle(
                      fontFamily: ('Lato'),
                      color: Colors.white,
                      fontSize:
                          ResponsiveLayout.isLargeScreen(context) ? 12.0 : 10.0,
                      fontWeight: FontWeight.bold),
                  softWrap: true,
                  textAlign: TextAlign.start,
                ),
              ),
            )
          ],
        ),
      ),
      smallScreen: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 2,
        child: Flex(
          direction: Axis.vertical,
          children: <Widget>[
            Expanded(
              child: Image.asset(
                'images/dummy_avatar.jpg',
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'I am a passionate Android Developer with 2+ Years of experience in my field. Iam currently working for a startup '
                'in Gurgaon, India. I love coding and exploring new tech. I have experience using in both Java & Kotlin for App development.',
                style: TextStyle(
                    fontFamily: ('Lato'),
                    color: Colors.black,
                    fontSize:
                        ResponsiveLayout.isLargeScreen(context) ? 14.0 : 11.0,
                    fontWeight: FontWeight.bold),
                softWrap: true,
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                onPressed: () {},
                color: Colors.blue,
                child: Text(
                  'RESUME',
                  style: TextStyle(
                      fontFamily: ('Lato'),
                      color: Colors.white,
                      fontSize:
                          ResponsiveLayout.isLargeScreen(context) ? 12.0 : 10.0,
                      fontWeight: FontWeight.bold),
                  softWrap: true,
                  textAlign: TextAlign.start,
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}

class MyInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Hello',
          style: TextStyle(
              letterSpacing: 5.0,
              fontFamily: ('Lato'),
              color: Colors.white,
              fontSize: ResponsiveLayout.isLargeScreen(context) ? 16.0 : 12.0,
              fontWeight: FontWeight.bold),
          softWrap: true,
          textAlign: TextAlign.start,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'I\'m Baljeet Singh',
          style: TextStyle(
              letterSpacing: 5.0,
              fontFamily: ('Lato'),
              color: Colors.white,
              fontSize: ResponsiveLayout.isLargeScreen(context) ? 28.0 : 20.0,
              fontWeight: FontWeight.bold),
          softWrap: true,
          textAlign: TextAlign.start,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'A Android Developer from Gurgaon, India.',
          style: TextStyle(
              fontFamily: ('Lato'),
              color: Colors.white,
              fontSize: ResponsiveLayout.isLargeScreen(context) ? 18.0 : 15.0,
              fontWeight: FontWeight.w100),
          softWrap: true,
          textAlign: TextAlign.start,
        ),
        SizedBox(
          height: 20,
        ),
        OutlineButton(
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
            child: Text(
              'HIRE ME',
              style: TextStyle(
                  fontFamily: ('Lato'),
                  color: Colors.white,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w100),
            ),
          ),
          borderSide: BorderSide(color: Colors.white, width: 2),
        ),
      ],
    );
  }
}
