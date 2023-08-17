import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
            child: Container(
          height: 160,
          width: 400,
          decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(12),
              ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  if( num > 0 ){
                    setState(() {
                    num--;
                  });
                  }
                },
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(500)),
                      child: Icon(Icons.minimize),
                ),
              ),
              Text("$num",style: TextStyle(fontSize: 20),),
              InkWell(
                onTap: () {
                  setState(() {
                    num++;
                  });
                },
                child: Container(
                  height: 100,
                  width: 100,
                   margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(500)),
                      child: Icon(Icons.add),
                ),
              ),
            ],
          ),
        ),
        ),
      ),
    );
  }
}
