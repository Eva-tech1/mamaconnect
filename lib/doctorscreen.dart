import 'package:flutter/material.dart';
import 'package:flutter_mamaconnect/appointmentscreen.dart';

class DoctorScreen extends StatelessWidget {
  List img = [
  "images/doctor 1.jpg",
  "images/doctor 2.jpg",
  "images/doctor 3.jpg",
  "images/doctor 4.jpg"
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 101, 150, 191).withOpacity(0.8),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {Navigator.pop(context);},
                      child: Icon(Icons.arrow_back_ios_new,
                      size: 24, color: Colors.white,),
                    ),
                    InkWell(
                      onTap: () {Navigator.pop(context);},
                      child: Icon(Icons.more_vert_rounded,
                      size: 24, color: Colors.white,),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 10,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("images/doctor 1.jpg"),
                    ),
                    SizedBox(
                      height: 10, ),
                      Text("Dr.Smith",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w500
                      ),),
                    SizedBox(
                      height: 5, ),
                      Text("Gynaecologist",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center, 
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle
                            ),
                            child: Icon(Icons.call,color: Color.fromARGB(255, 101, 150, 191) , size: 30,),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle
                            ),
                            child: Icon(Icons.video_call_sharp,color: Color.fromARGB(255, 101, 150, 191) , size: 30,),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle
                            ),
                            child: Icon(Icons.chat_bubble,color: Color.fromARGB(255, 101, 150, 191) , size: 30,),
                          ),
                        ],
                      ),
                  ],

                ),
                ),
              ],
              ),
              ),
              SizedBox(height: 20),
              Container(
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                padding: EdgeInsets.only(top: 20, left: 15,),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),

                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text("About the doctor",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.7),

                    ),
                    ),
                    SizedBox(height: 6,),
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black38,
                    ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text("Commentary",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black.withOpacity(0.7),
                          fontWeight: FontWeight.w500,
                        ),
                        ),
                        SizedBox(width: 15,),
                        Icon(Icons.star, color: Colors.amber),
                        Text("5.0",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,

                        ),
                        ),
                        SizedBox(width: 5,),
                        Text("(90)",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 101, 150, 191),
                          fontWeight: FontWeight.w500,
                        ),
                        ),
                        Spacer(),
                        TextButton(onPressed: (){},
                        child: Text("See More",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 101, 150, 191),

                        ),
                        ),
                        ),


                      ],
                    ),
                    SizedBox(
                      height: 150,
                      child: ListView.builder(scrollDirection: Axis.horizontal,
                      itemCount: 4,itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 2,
                                blurRadius: 4,
                              ),
                            ],
                          ),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width/1.5,
                                child: Column(
                                  children: [
                                    ListTile(
                                      leading: CircleAvatar(
                                        radius: 25,
                                        backgroundImage: AssetImage(
                                          img[index],
                                        ),
                                      ),
                                      title: Text("Dr. Smith",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                      ),
                                      subtitle: Text("1 hour ago"
                                      ),
                                      trailing: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                        Icon(Icons.star,color: Colors.amber,
                                        ),
                                        Text("5.0",
                                        style: TextStyle(color: Colors.black26),
                                        ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                                    child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                                    style: TextStyle(color: Colors.black38),
                                    ),
                                    ),
                                   
                                  ],
                                ),
                          ),
                        );
                      },
                      ),

                    ),
                    SizedBox(height: 10,),
                    Text("Location",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.5),

                    ),
                    ),
                    ListTile(
                      leading: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 232, 229, 229),
                        ),
                        child: Icon(Icons.location_pin,
                        color: Color.fromARGB(255, 101, 150, 191), size: 35,),
                      ),
                      title: Text("Happy Valley Hospital, Kenya",
                      style: TextStyle(
                        fontWeight: FontWeight.w500, color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.7)),
                      ),
                    ),

                  ],
                ),

              ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(20),
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 4,
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Consultation Fee",
                style: TextStyle(
                  color: Colors.black45.withOpacity(0.5),
                  fontWeight: FontWeight.w500,
                ),
                ),
                Text("200 Ksh",
                style: TextStyle(
                  color: Color.fromARGB(255, 101, 150, 191).withOpacity(0.7),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AppointmentScreen(),));
              },
              child: Container(
                width: MediaQuery.of(context).size.height,
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 101, 150, 191),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text("Book Here",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}