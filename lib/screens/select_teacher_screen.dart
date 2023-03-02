// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_select_area_button.dart';
import '../widgets/custom_text_button.dart';

class SelectTeacherScreen extends StatefulWidget {
  const SelectTeacherScreen({Key? key}) : super(key: key);

  @override
  State<SelectTeacherScreen> createState() => _SelectTeacherScreenState();
}

class _SelectTeacherScreenState extends State<SelectTeacherScreen> {
  int _page = 0;

  onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  final List area = [
    'ঢাকা',
    'বরিশাল',
    'চট্রগ্রাম',
    'গাজীপুর',
    'কুমিল্লা',
    'খুলনা',
    'ময়মনসিংহ',
    'নারায়নগঞ্জ',
    'রাজশাহী',
    'রংপুর',
    'সাভার',
    'সিলেট',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 140,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Color.fromRGBO(62, 73, 88, 1),
            ),
          ),
          title: const Text(
            'কি ধরনের শিক্ষক \nখুজছেন?',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: Color.fromRGBO(62, 73, 88, 1),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            // shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomButton(
                      onPressed: () {},
                      text: 'Home',
                    ),
                    CustomButton(
                      onPressed: () {},
                      text: 'Online',
                    ),
                    CustomButton(
                      onPressed: () {},
                      text: 'Group',
                    ),
                    CustomButton(
                      onPressed: () {},
                      text: 'Commercial',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Text(
                'এলাকা বাছাই করুন ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: Color.fromRGBO(62, 73, 88, 1),
                ),
              ),
              SizedBox(height: 30),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 3 / 2,
                  mainAxisExtent: 80,
                ),
                itemCount: area.length,
                itemBuilder: (context, index) => SelectAreaButton(
                  area: area[index],
                ),
              ),
              SizedBox(height: 30),
              CustomTextButton(text: 'পরবর্তী ধাপ'),
              SizedBox(height: 30),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Color.fromRGBO(62, 73, 88, 1),
          unselectedItemColor: Color.fromRGBO(151, 173, 182, 1),
          iconSize: 24,
          onTap: onPageChanged,
          currentIndex: _page,
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/icons/home.png'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/icons/favorite.png'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/icons/cart.png'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/icons/profile.png'),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
