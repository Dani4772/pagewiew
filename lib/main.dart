import 'package:flutter/material.dart';

void main() {
  runApp(app());
}

class app extends StatelessWidget {
  const app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Example',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
     home: Pageview_Assignment(),
    );
  }
}


class MyApp extends StatelessWidget {
  final String image;
  final String heading;
  final String subHeading;
  const MyApp({Key? key,required this.image,required this.heading,required this.subHeading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(image),
          Padding(
            padding: const EdgeInsets.only(left: 5,right: 5,bottom: 20),
            child: Text(heading,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
            child: Text(subHeading,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
              ),),
          ),
        ],
      ),
    );
  }
}


void adnan(){
  int r=12;
  if(r%2==0){
    print('even');
  }
  else {
    print('odd');
  }
}


class Pageview_Assignment extends StatefulWidget {
  const Pageview_Assignment({Key? key}) : super(key: key);



  @override
  _Pageview_AssignmentState createState() => _Pageview_AssignmentState();
}

class _Pageview_AssignmentState extends State<Pageview_Assignment> {
  final PageController _pageController = PageController();
  @override

  int index=0;
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  List<Widget> page=[
  MyApp(
    image:  'images/flutter.png',
    heading: ' Ist Browse Popular Podcaster',
    subHeading: 'Simple explanation to the audience regarding headline',
  ),
    MyApp(
      image:  'images/flutter.png',
      heading: '2nd Browse Popular Podcaster',
      subHeading: 'Simple explanation to the audience regarding headline',
    ),MyApp(
      image:  'images/flutter.png',
      heading: '3rd Browse Popular Podcaster',
      subHeading: 'Simple explanation to the audience regarding headline',
    ),
    MyApp(
      image:  'images/flutter.png',
      heading: '4th Browse Popular Podcaster',
      subHeading: 'Simple explanation to the audience regarding headline',
    ),
    MyApp(
      image:  'images/flutter.png',
      heading: '4th Browse Popular Podcaster',
      subHeading: 'Simple explanation to the audience regarding headline',
    ),
    MyApp(
      image:  'images/flutter.png',
      heading: '4th Browse Popular Podcaster',
      subHeading: 'Simple explanation to the audience regarding headline',
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: PageView(
    controller: _pageController,
      onPageChanged: (int abc){
        index = abc;
        setState(() {});
      },
    children: page,
    ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
           children: [

             for(int i=0;i<page.length;i++)
             Padding(
               padding: const EdgeInsets.only(right: 8.0),
               child: CircleAvatar(
                 backgroundColor: index==i?Colors.red:Colors.grey,
                 radius: 8,
               ),
             ),

           ],
            ),

      index==5?     Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: Center(child: Text('Get Started',style: TextStyle(
              color: Colors.white
          ),),),
          height: 50,
          width: 100,
          decoration: BoxDecoration(
              color: Color(0xFFf68322),
              borderRadius: BorderRadius.circular(30)
          ),
        ),
      ):

      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: (){
               if(_pageController.hasClients){
                 _pageController.animateToPage(
                   index++,
                   duration:const Duration(microseconds: 400),
                   curve: Curves.easeInOut,
                 );
               }
               setState(() {});
              },
              child: Container(
                child: Center(child: Text('Skip',style: TextStyle(
                    color: Colors.white
                ),),),
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                    color: Color(0xFFf68322),
                    borderRadius: BorderRadius.circular(30)
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                if(_pageController.hasClients){
                  _pageController.animateToPage(
                    index++,
                    duration:const Duration(microseconds: 400),
                    curve: Curves.easeInOut,
                  );
                }
                setState(() {});
              },
              child: Container(
                child: Center(child: Text('Next',style: TextStyle(
                    color: Colors.white
                ),),),
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                    color: Color(0xFFf68322),
                    borderRadius: BorderRadius.circular(30)
                ),
              ),
            ),

          ],
        ),
      ),

          ],
        ),
      ),


    );
  }
}
