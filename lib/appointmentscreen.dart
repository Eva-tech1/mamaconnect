import 'package:flutter/material.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        
        child: Column(
          children: [
            SizedBox(height: 35),
            Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child:Icon(Icons.arrow_back_ios_new, size: 25, color: Colors.black),
                ),
                 InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child:Icon(Icons.more_vert, size: 25, color: Colors.black),
                ),
               
              ],
            ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
              CircleAvatar(
                radius: 65,
                backgroundImage: AssetImage("images/doctor 1.jpg"
                ),
              ),
              SizedBox(height: 15),
              Column(
                children: [
                  Text("Dr. Smith",
              style: TextStyle(fontSize: 20, 
              fontWeight: FontWeight.bold,
              color: Colors.black),
              ),
              SizedBox(height: 5),
              Text("Gynae/Obstrecian",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        
                      ),),

                ],
              ),
              
                   
                      SizedBox(height: 15),
                      //call to action
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center, 
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 4,
                                  spreadRadius: 2,
                                ),
                              ],
                            ),
                            child: Icon(Icons.call,color: Color.fromARGB(255, 101, 150, 191) , size: 20,),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                               boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 4,
                                  spreadRadius: 2,
                                ),
                              ],
                            ),
                            child: Icon(Icons.video_call_sharp,color: Color.fromARGB(255, 101, 150, 191) , size: 20,),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                               boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 4,
                                  spreadRadius: 2,
                                ),
                              ],
                            ),
                            child: Icon(Icons.chat_bubble,color: Color.fromARGB(255, 101, 150, 191) , size: 20,),
                          ),
                        ],
                      ),
             ],
             
            ),
            ),
            SizedBox(height: 10,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 8 ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.justify,
                ),
                SizedBox(height: 30,),
                Text("Find Availability:",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(0.6),

                ),
                ),
                SizedBox(height: 8),
                Container(
                  height: 70,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return InkWell (
                        onTap: (){},
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 8.0,
                          horizontal: 5.0),
                          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 25
                          ),
                          decoration: BoxDecoration(
                            color: index == 1?Color.fromARGB(255, 101, 150, 191): Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                blurRadius: 4,
                                spreadRadius: 2,
                              ),
                            ],


                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("${index +10}",
                              style: TextStyle(
                                fontSize: 18,
                                color: index ==1? Colors.white: Colors.black.withOpacity(0.7),

                              ),
                              ),
                              Text("May",
                              style: TextStyle(
                                fontSize: 18,
                                color: index ==1? Colors.white: Colors.black.withOpacity(0.7),

                              ),
                              ),
                              
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                
              ],
            ),),
          ],
        ),
      ),
    );
  }
}