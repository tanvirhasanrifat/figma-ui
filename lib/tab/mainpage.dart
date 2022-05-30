import 'package:figma/tab/calendar.dart';
import 'package:figma/tab/mytask.dart';
import 'package:figma/tab/profile.dart';
import 'package:figma/tab/project.dart';
import 'package:figma/widgets/brandColors.dart';
import 'package:flutter/material.dart';
class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  List<Widget> _pages = [
    MyTaskPage(),
    CalenderPage(),
    ProjectPage(),
    ProfilePage()
  ];

  PageController pageController = PageController();

  void pageChange(index) {
    setState(() {
      return _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Color(0xff191A22),
        leading: Padding(
          padding:  EdgeInsets.only(left: 16),
          child: CircleAvatar(
            backgroundColor: Color(0xff8E8E93),
            maxRadius: 2,
            backgroundImage: AssetImage("images/rifat.png"), ),
        ),
        title: Row(
          children: [
            Text("Rifat"),
            IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down_outlined))
          ],

        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 17.79,),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.search,size: 28,),),
          ),
        ],
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: BrandColors.colorPrimaryDark,
      floatingActionButton: FloatingActionButton(
        splashColor: Colors.red,
        child: Icon(Icons.add,size: 25,),
        onPressed: () {},
      ),
      body: PageView(
        children: _pages,
        controller: pageController,
        onPageChanged: pageChange,
      ),
      bottomNavigationBar: BottomAppBar(
        color: BrandColors.colorPrimary,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          height: 75,
          child: Column(
            children:
            [Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                navigationIcon(Icons.auto_awesome_mosaic_outlined, "My Task", 0),
                navigationIcon(Icons.calendar_today_outlined, "Calender", 1),
                SizedBox(width: 15,),
                navigationIcon(Icons.list_alt_sharp,"Project", 2),
                navigationIcon(Icons.account_circle_outlined, "Profile", 3),

              ],
            ),

            ],
          ),
        ),
      ),
    );
  }

  navigationIcon(IconData icon, String name, int value) {
    return InkWell(
      onTap: () {
        _selectedIndex = value;
        pageController.jumpToPage(_selectedIndex);
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 9),
            child: Icon(
              icon,
              size: value == _selectedIndex ? 25 : 20,
              color: value == _selectedIndex ? shadaColor : Colors.grey,
            ),
          ),
          SizedBox(height: 13,),
          Text(
            name,
            style:
            myStyle(12, value == _selectedIndex ? shadaColor : Colors.grey),
          )
        ],
      ),
    );
  }
}
