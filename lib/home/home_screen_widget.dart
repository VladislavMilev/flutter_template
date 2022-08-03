import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies/theme/application_colors.dart';
import 'package:remixicon/remixicon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var _currentIndex = 0;

  void _setIndex(int index){
    if (index == _currentIndex) return;
    setState((){
      _currentIndex = index;
    });
  }

  static const List _widgets = [
    Text('Новости'),
    Text('Фильмы'),
    Text('Сериалы'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Remix.logout_circle_line,
              color: AppColor.error,
            ),
            onPressed: () {
              HapticFeedback.lightImpact();
              Navigator.pushReplacementNamed(context, '/login');
            },
          ), // SizedBox(width: 7)
        ],
      ),
      body: SafeArea(
        child: Center(child: _widgets[_currentIndex],),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _setIndex,
        elevation: 0,
        unselectedItemColor: AppColor.grayDisabled,
        selectedItemColor: AppColor.primary,
        unselectedLabelStyle: GoogleFonts.poppins(textStyle: const TextStyle(color: AppColor.grayDisabled, fontSize: 13)),
        selectedLabelStyle: GoogleFonts.poppins(textStyle: const TextStyle(color: AppColor.grayDisabled, fontSize: 13)),
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(icon: Icon(Remix.home_line), label: '', activeIcon: Icon(Remix.home_fill)),
          BottomNavigationBarItem(icon: Icon(Remix.movie_2_line), label: '', activeIcon: Icon(Remix.movie_2_fill)),
          BottomNavigationBarItem(icon: Icon(Remix.tv_line), label: '', activeIcon: Icon(Remix.tv_fill)),
        ],
      ),
    );
  }
}
