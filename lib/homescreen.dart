import 'package:flutter/material.dart';
import 'package:flutter_mamaconnect/doctorscreen.dart';
class HomeScreen extends StatelessWidget {
 List catNames = [
  "1st Trimester",
  "2nd Trimester",
  "3rd Trimester",
  "Post Pregnancy",
  "Baby Care",
  "Parenting Tips",
  "Health and Wellness",
  "Pregnancy Symptoms",
  "Nutrition",
 ];
 List<Icon> catIcons = [
  Icon(Icons.pregnant_woman,color: const Color.fromARGB(255, 113, 151, 216), size: 30),
  Icon(Icons.pregnant_woman, color: const Color.fromARGB(255, 113, 151, 216), size:30 ),
  Icon(Icons.pregnant_woman_rounded,color: const Color.fromARGB(255, 113, 151, 216), size:30 ),
  Icon(Icons.child_care_outlined, color: const Color.fromARGB(255, 113, 151, 216), size: 30),
  Icon(Icons.child_care_sharp, color: const Color.fromARGB(255, 113, 151, 216), size:30),
  Icon(Icons.info, color: const Color.fromARGB(255, 113, 151, 216), size:30),
  Icon(Icons.health_and_safety, color: const Color.fromARGB(255, 113, 151, 216), size:30),
  Icon(Icons.sick_rounded, color: const Color.fromARGB(255, 113, 151, 216), size:30),
  Icon(Icons.food_bank,color: const Color.fromARGB(255, 113, 151, 216), size:30),
 ];
 List img = [
  "images/doctor 1.jpg",
  "images/doctor 2.jpg",
  "images/doctor 3.jpg",
  "images/doctor 4.jpg"
 ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 15),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                     backgroundImage: AssetImage("images/Waving.jpg"),
                    ),
                    SizedBox( width: 15),
                    Text("Hi, Mama!",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 223, 230, 236),
                        shape: BoxShape.circle,
                        boxShadow: [
                         BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 4,
                          spreadRadius: 2,

                         ),

                        ],
                      ),
                      child: Center(
                        child: Icon(Icons.notifications_outlined, size: 30, color:  const Color.fromARGB(255, 226, 135, 135)),
                      ),
                    ),
                  ],
                ),
                Container(
                 margin: EdgeInsets.only(top: 20, bottom: 20, left: 15,  right: 15 ),
                 width: MediaQuery.of(context).size.width,
                 height: 55,
                 alignment: Alignment.center,
                 decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                    ),
                  ],
                 ),
                 child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search...",
                    hintStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.black26.withOpacity(0.5)
                    
                    ),
                    prefixIcon: Icon(Icons.search, size: 25)
                  ),
                 ),
                ),
                 Padding(padding: EdgeInsets.only(left: 15),
                 child: Text("Need help in:",
                 style: TextStyle(
                  fontSize: 18,
                  color: Colors.black26.withOpacity(0.8),
                  fontWeight: FontWeight.w400,
                 ),),
                 ),
                 SizedBox(height: 15),
                 Container(
                 height:110,
                 child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: catNames.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                              vertical: 5, horizontal: 25
                            ),
                           height: 60, 
                           width: 60,
                           decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 4,
                                spreadRadius: 2,

                              ),
                            ],
                           ),
                           child: Center(
                            child: catIcons[index],
                           ),
                          ),
                          SizedBox(
                            height: 10, width: 10,),
                            Text(catNames[index],
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black26.withOpacity(0.8),
                              fontWeight: FontWeight.w400,
                            
                            ),),
                          Padding(padding: EdgeInsets.only(left: 10))
                        ],
                      ),
                    );
                  },
                 ),
                 ),
                 SizedBox(height: 20),
                 Padding(padding:EdgeInsets.only( left: 15),
                 child: Text("Our Seasoned Doctors",
                 style: TextStyle(
                  fontSize: 18,
                  color: Colors.black26.withOpacity(0.8),
                  fontWeight: FontWeight.w400,
                 ),),
                 ),
              ],

             ), 
             ),
            ],
          ),
          ),
      Container(
        height: 340,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: img.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 300,
                  width: 200,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder:(context) => DoctorScreen(),));
                            },
                           child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),

                            ),
                            child: Image.asset(
                              img[index],
                              height: 200,
                              width: 200,
                              fit: BoxFit.cover,

                            ),
                           ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              margin: EdgeInsets.all(8.0),
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  blurRadius: 4,
                                  spreadRadius: 2,
                                ),],
                              ),
                              child: Center (
                                child: Icon(Icons.favorite_outline, color: Color.fromARGB(255, 226, 135, 135),size: 25,
                                ),
                              ),
                              
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Dr. Doctor Name",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.6)
                          ),
                          ),
                          Text("Gynaecologist",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black.withOpacity(0.6)
                          ),),
                          SizedBox(height: 8),
                          Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber,),
                            SizedBox( width: 5,),
                            Text("5.0",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black.withOpacity(0.6)
                            ),)
                          ],
                          ),
                        ],
                      ),)
                    ],
                  ),
                ),
              ],
            );
          },

        ),
      ),
        ],
      ),
    );
  }
}