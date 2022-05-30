import 'package:figma/widgets/brandColors.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BrandColors.colorPrimaryDark,
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: BrandColors.colorPrimaryDark,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: CircleAvatar(
              backgroundImage: AssetImage("images/rifat.png"),
              backgroundColor: BrandColors.colorPrimaryDark,
              maxRadius: 100,
          //   child: Image.asset("images/rifat.png"),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(child: Text('Tanvir Hasan Rifat',style: TextStyle(color:Colors.white,fontSize: 20, fontWeight: FontWeight.bold,letterSpacing: 2,wordSpacing: 1),))
        ],
      ),

    );
  }
}
