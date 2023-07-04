import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40.0,
                ),
                customRowItem(
                    text: 'classes', image: 'assets/images/icon_home.png'),
                customRowItem(
                    text: 'calendar', image: 'assets/images/icon_calendar.png'),
                customRowItem(
                    text: 'notification', image: 'assets/images/icon_bell.png'),
                customRowItem(
                    text: 'to do', image: 'assets/images/icon_double_check.png'),
                const Divider(
                  color: Colors.grey,
                ),
                const Text(
                  'Enrolled',
                  style: TextStyle(
                    fontSize: 19.0,
                    color: Color(0xff808080),
                  ),
                ),
                const SizedBox(height: 10.0,),
                enrolledItems(color: const Color(0xfff68714), char: 'M', text: 'Mathematics'),
                enrolledItems(color: const Color(0xffb71d2d), char: 'S', text: 'Science'),
                enrolledItems(color: const Color(0xff3fb5a0), char: 'E', text: 'English'),
                enrolledItems(color: const Color(0xff34345d), char: 'A', text: 'Art'),
                enrolledItems(color: const Color(0xff64ae70), char: 'S', text: 'Social'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget customRowItem({required String text, required String image}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          SizedBox(
              width: 28.0,
              height: 27.0,
              child: Image(image: AssetImage(image))),
          const SizedBox(
            width: 15.0,
          ),
          Text(
            text,
            style: const TextStyle(
                color: Color(0xff34345d),
                fontSize: 22.0,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }

  Widget enrolledItems({required Color color,required String char,required String text}){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 22.5,
            child: Text(char,style: const TextStyle(color: Colors.white,fontSize: 19.0),),
          ),
          const SizedBox(width: 10.0,),
          Text(
            text,
            style: TextStyle(color: color,fontSize: 19.0),
          )
        ],
      ),
    );
  }
}
