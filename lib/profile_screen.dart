import 'package:final_project/personal_info.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Account',
              style: TextStyle(fontSize: 32.5, fontWeight: FontWeight.bold),
            ),
          ),
        ],
        leading: IconButton(
          iconSize: 32.5,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                 backgroundColor: Colors.black,
                  radius: 85.0,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFjZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80'),
                  radius: 80.0,
                ),
              ],
            ),
            const SizedBox(height: 15.0,),
            const Text('Ahmed Sayed',style: TextStyle(fontSize: 28.0,fontWeight: FontWeight.bold),),
            const Text('third_year',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
            const SizedBox(height: 25.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  const Text('Personal info',style: TextStyle(fontSize: 22)),
                  const Spacer(),
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const PersonalInfo()));
                  }, icon: const Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,size: 20.0,))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  const Text('Edit Account',style: TextStyle(fontSize: 22)),
                  const Spacer(),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,size: 20.0,))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  const Text('Settings and Privacy',style: TextStyle(fontSize: 22,)),
                  const Spacer(),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,size: 20.0,))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  const Text('Help',style: TextStyle(fontSize: 22,)),
                  const Spacer(),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,size: 20.0,))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
