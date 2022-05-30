import 'package:figma/widgets/brandColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../model/myList.dart';

class MyTaskPage extends StatelessWidget {
  const MyTaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BrandColors.colorPrimaryDark,
      /* appBar: AppBar(
        backgroundColor: BrandColors.colorPrimaryDark,
      ),*/
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16,top: 25,bottom: 16),
                    child: Text('Project Task',style: myStyle(16,shadaColor),),
                  )),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                height: 70,
                padding: EdgeInsets.symmetric(vertical: 10),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: demoMyFiles.length,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                          color: BrandColors.colorPrimary,
                          borderRadius: BorderRadius.circular(8)),
                      width: 100,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 8),
                              decoration: BoxDecoration(
                                  color: demoMyFiles[index].color,
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                          ),
                          Expanded(
                            flex: 35,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "${demoMyFiles[index].value}", style: myStyle(20, shadaColor),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "${demoMyFiles[index].situation}", style: myStyle(12, shadaColor),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(left: 16,top: 32,
                        bottom: 16),
                    child: Text('My Task',style: myStyle(16,shadaColor),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16,top: 32,
                        bottom: 16),
                    child: Text("See More",style: myStyle(16,Color(0xffE9E9EB).withOpacity(0.7)),),
                  )
                ],
              ),

              Container(

                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: demoMyFiles.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        var color = clrList[index % clrList.length];
                        return Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: BrandColors.colorPrimary,),
                          margin: EdgeInsets.symmetric(vertical: 5),

                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Icon(
                                  Icons.check_box_outlined,
                                  color: shadaColor,
                                ),
                              ),
                              Expanded(
                                  flex: 11,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "${demoMyFiles[index].taskName}",
                                            style: myStyle(14, shadaColor),
                                          ),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 16, vertical: 8),
                                            decoration: BoxDecoration(
                                              color: color.withOpacity(0.2),
                                              borderRadius: BorderRadius.circular(14),
                                            ),
                                            child: Text(
                                              "${demoMyFiles[index].type}",
                                              style: myStyle(14, color),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            flex: 8,
                                            child: Stack(
                                              children: [
                                                Container(
                                                  height: 8,
                                                  // width: double.infinity,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius.circular(10.0),
                                                      color: demoMyFiles[index]
                                                          .color
                                                          .withOpacity(0.1)),
                                                ),
                                                LayoutBuilder(
                                                    builder: (context, constaints) {
                                                      return Container(
                                                        height: 10,
                                                        width: constaints.maxWidth *
                                                            (demoMyFiles[index]
                                                                .id /
                                                                100),
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                            BorderRadius.circular(
                                                                10.0),
                                                            color:
                                                            demoMyFiles[index].color),
                                                        child: Center(
                                                            child: Text(
                                                              "${demoMyFiles[index].percentage}",style: myStyle(10,shadaColor),)),
                                                      );
                                                    })
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 16,),
                                          Expanded(
                                              flex: 2,
                                              child: Text(
                                                "${demoMyFiles[index].devide}",style: myStyle(10,shadaColor),))
                                        ],
                                      ),

                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Color(0xff76BBAA),
                                            minRadius: 5,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text("2 Days Left",style: myStyle(12,shadaColor),),
                                          )
                                        ],
                                      ),



                                    ],

                                  )
                              )
                            ],
                          ),
                        );
                      },
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
