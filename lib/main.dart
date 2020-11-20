import 'package:flutter/material.dart';
import 'package:task_3_3/imageFile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      backgroundColor: Colors.black,
    body:

    SingleChildScrollView(

    child: SafeArea(
     child: Container(
        child: Column(
          children: [


                 Homepagescroll(),

            SizedBox(height: 50,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Recommended"  , style: TextStyle(color: Colors.white, fontSize: 30),),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 10,
                    top:5
                  ),
                  child:Column(
                    children: [
                      Row(
                        children: [
                          Expanded(child: Image.asset("img/lm.jpg") ,),
                          SizedBox(width: 10,),
                          Expanded(child: Text(" Spenco Footwear now \n sold under Waco Shoes" , style: TextStyle(color: Colors.white,),)),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Expanded(child: Image.asset("img/lm.jpg") ,),
                          SizedBox(width: 10,),
                          Expanded(child: Text(" Spenco Footwear now \n sold under Waco Shoes" , style: TextStyle(color: Colors.white,),)),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Expanded(   child: Image.asset("img/lm.jpg") ,),
                          SizedBox(width: 10,),
                          Expanded(child: Text(" Spenco Footwear now \n sold under Waco Shoes" , style: TextStyle(color: Colors.white,),)),
                        ],
                      ),

                    ],
                  )
                ),
              ],
            )
          ],
        ),
      )

    ),
    ),
    ),
    );
  }
}
class Homeimageclassname extends StatelessWidget {
  Homeimageclassname({this.course});
  HomePageImage course;
  @override
  Widget build(BuildContext context) {
    return
      Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(

               height: 200,
            child: Image.asset(course.image ,),),
          SizedBox(height: 5,),
          Expanded(
            child: Container(
              child: Text(course.title , style: TextStyle(color: Colors.white , fontSize: 20 , fontWeight: FontWeight.bold),),
            ),
          )
        ],
      );

  }
}
class Homepagescroll extends StatefulWidget {
  @override
  _HomepagescrollState createState() => _HomepagescrollState();
}

class _HomepagescrollState extends State<Homepagescroll> {
  List<Container> indicators = [];
  int currentPage = 0;
  Widget updateIndicators(){
    return Container();

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 250,
          width: 380,
           child: PageView.builder(itemBuilder: (context,index){

            return Homeimageclassname(course: recentCourse[index],);
          },
            itemCount: recentCourse.length ,
            controller: PageController(initialPage: 0, viewportFraction: 1),

          ),

        ),
        updateIndicators(),
      ],
    );


  }


}

