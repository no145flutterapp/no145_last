import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMeScreen extends StatefulWidget {
  const AboutMeScreen({Key? key}) : super(key: key);

  @override
  State<AboutMeScreen> createState() => _AboutMeScreenState();
}

class _AboutMeScreenState extends State<AboutMeScreen> {
  void _launchURL(String _url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFe7f5f5),
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Color(0xFF22577A)),
        title: Text(
          "Hakkımda",
          style: TextStyle(
            color: Color(0xFF22577A),
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Image.asset(
                  "images/10.png",
                  width: 250,
                  height: 250,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 72,
                width: MediaQuery.of(context).size.width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
                decoration: BoxDecoration(
                  color: Color(0xFF22577A),
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: const Offset(0, 3),
                      color: Colors.black.withOpacity(0.16),
                    ),
                  ],
                ),
                child: Stack(
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Merhaba",
                          style: TextStyle(
                            color: Color(0xFF38A3A5),
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Kullanıcı İsmi",
                          style: TextStyle(
                            color: Color(0xFF80ED99),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 0.0,
                      top: 0.0,
                      right: 0.0,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              _launchURL("");
                            },
                            child: Image.asset("assets/insta.png"),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          GestureDetector(
                            onTap: () {
                              _launchURL("");
                            },
                            child: Image.asset("assets/web.png"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 72,
                width: MediaQuery.of(context).size.width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFF22577A),
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: const Offset(0, 3),
                      color: Colors.black.withOpacity(0.16),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Kısaca ben:",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color(0xFF38A3A5),
                        fontSize: 16,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _launchURL("");
                      },
                      child: Icon(
                        Icons.person,
                        size: 25,
                        color: Color(0xFF80ED99),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 72,
                width: MediaQuery.of(context).size.width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xFF22577A),
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: const Offset(0, 3),
                      color: Colors.black.withOpacity(0.16),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Kitap Önerisi",
                      style: TextStyle(
                        color: Color(0xFF38A3A5),
                        fontSize: 16,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _launchURL(" ");
                      },
                      child: Icon(
                        Icons.book,
                        size: 25,
                        color: Color(0xFF80ED99),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
