import 'package:figma/widgets/brandColors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://github.com/tanvirhasanrifat');


class ProjectPage extends StatelessWidget {
  const ProjectPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BrandColors.colorPrimaryDark,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Text("Some projects that are completed and have uploaded on github",style: TextStyle(letterSpacing: 2,wordSpacing: 1,fontWeight: FontWeight.bold,color: Colors.white),),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(top: 10,left: 15),
              child: Row(
                children: [
                  Text("* ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                  Center(
                    child: MaterialButton(
                      onPressed: _launchUrl,
                      child: Text('github.com/tanvirhasanrifat',style: TextStyle(fontSize:20, letterSpacing: 2,wordSpacing: 1,fontWeight: FontWeight.bold,color: Colors.blue),
                    ),
                  ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}

void _launchUrl() async {
  if (!await launchUrl(_url)) throw 'Could not launch $_url';
}