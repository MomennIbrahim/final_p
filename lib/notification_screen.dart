import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 0.0,
          leading: IconButton(
            iconSize: 32.5,
            onPressed: (){
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          toolbarHeight: 120.0,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              )),
          backgroundColor: Colors.grey[400],
          title: const Text(
            'Tarek',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32.5),
          ),
        ),
      body: ListView.builder(
          itemBuilder:(context,index){
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Card(
                elevation: 2.0,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0,vertical: 6.0),
                      child: Row(
                        children: [
                          Text('Classroom',style: TextStyle(fontSize: 22.0),),
                          Spacer(),
                          Text('15 Apr'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 6.0),
                      child: Text('Mr.Ahmed Mabrouk posted new Assignment on mathematics',style: TextStyle(fontSize: 16.0),),
                    )
                  ],
                ),
              ),
            );
          },
        itemCount: 4,
      ),
    );
  }
}
