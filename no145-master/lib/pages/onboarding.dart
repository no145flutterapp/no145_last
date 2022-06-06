import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:no145/pages/login.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 4;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.blueGrey : Colors.black12,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.4, 0.7, 0.9],
              colors: [
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 13.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginPage()));
                    },
                    child: Text(
                      'Geç',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 600.0,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/onBoarding_0.png',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/onBoarding_1.jpeg',
                                ),
                                height: 400.0,
                                width: 300.0,
                              ),
                            ),
                            SizedBox(height: 20.0),
                            Text(
                              '     Çalışma sürelerini belirle.',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.blueGrey, fontSize: 28, fontStyle: FontStyle.italic),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/onBoarding_2.jpeg',
                                ),
                                height: 400.0,
                                width: 300.0,
                              ),
                            ),
                            SizedBox(height: 20.0),
                            Text(
                              '    Yapılacaklar listeni oluştur.',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.blueGrey, fontSize: 28, fontStyle: FontStyle.italic),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/onBoarding_3.jpeg',
                                ),
                                height: 400.0,
                                width: 300.0,
                              ),
                            ),
                            SizedBox(height: 20.0),
                            Text(
                              'Artık verimli bir şekilde çalışmaya başlayabilirsin.',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.blueGrey, fontSize: 28, fontStyle: FontStyle.italic),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Container(
              height: 95.0,
              width: double.infinity,
              color: Colors.white,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LoginPage()));
                },
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      'Başla',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            )
          : Text(''),
    );
  }
}
