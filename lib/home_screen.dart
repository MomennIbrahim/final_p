import 'package:final_project/notification_screen.dart';
import 'package:final_project/student_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<StudentModel> studentModel = [
      StudentModel('Hoda',
          'https://monteluke.com.au/wp-content/gallery/linkedin-profile-pictures/9.JPG'),
      StudentModel('Nada',
          'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80'),
      StudentModel('Ahmed',
          'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Volodymyr_Zelensky_Official_portrait_%28cropped%29.jpg/360px-Volodymyr_Zelensky_Official_portrait_%28cropped%29.jpg'),
      StudentModel('Tarek',
          'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFjZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80'),
      StudentModel('Mohamed',
          'https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg'),
    ];
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120.0,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        )),
        backgroundColor: Colors.grey[400],
        centerTitle: true,
        title: const Text(
          'Hi, Mr.Ahmed',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28.0),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              mainAxisSpacing: 20,
            ),
            itemCount: studentModel.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const DetailsScreen()));
                    },
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              NetworkImage('${studentModel[index].image}'),
                          radius: 27.5,
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          '${studentModel[index].name}',
                          style: const TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
