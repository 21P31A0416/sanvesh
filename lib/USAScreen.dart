import 'package:flutter/material.dart';
import 'dart:math';

class USA extends StatefulWidget {
  const USA({super.key});

  @override
  State<USA> createState() => _USAState();
}

class _USAState extends State<USA> {
  int i = 0;
  var l = [
    FF(image: "https://cdn.pixabay.com/photo/2017/09/01/13/56/university-2704306_1280.jpg", Text: "Colleges", text: "/USAColleges"),
    FF(image: "https://media.istockphoto.com/id/1278630367/photo/grow-green-trees-on-money-in-energy-saving-light-bulbs-including-graduation-hats-with-ideas.webp?b=1&s=612x612&w=0&k=20&c=UTp8mUy55MyDTnvU31XndWI2l2Yjppz1QlY82EvOEjY=", Text: "Scholarships", text: "/USAScholarships"),
    FF(image: "https://cdn.pixabay.com/photo/2016/01/16/14/56/buffer-1143485_640.jpg", Text: "Documents Required", text: "/USADocuments"),
    FF(image: "https://cdn.pixabay.com/photo/2018/09/04/10/06/man-3653346_640.jpg", Text: "Exams", text: "/USAExams"),];
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        title: Text("USA",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.white
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(itemCount: l.length,
          itemBuilder: (context, i){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,
                  vertical: 15),
              child: Container(
                height: hi/4,
                width: wi,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amber,
                    image: DecorationImage(
                        image: NetworkImage(l[i].image),
                        fit: BoxFit.fill
                    )
                ),
                child: Center(
                  child: ListTile(
                      title: TextButton(
                        onPressed: (){
                          Navigator.pushNamed(context, l[i].text);
                        },
                        child: Text(l[i].Text,
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ),
                      )
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
}
class FF{
  final String image;
  final String Text;
  final String text;
  FF({
    required this.image,
    required this.Text,
    required this.text,
  }
      );
}

class USAColleges extends StatefulWidget {
  const USAColleges({super.key});

  @override
  State<USAColleges> createState() => _USACollegesState();
}

class _USACollegesState extends State<USAColleges> {
  bool isBack = true;
  double angle = 0;
  void _flip(){
    setState(() {
      angle = (angle + pi)%(2 * pi);
    });
  }
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        flexibleSpace: FlexibleSpaceBar(

        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,
                  horizontal: 20),
              child: GestureDetector(
                onTap: _flip,
                child: TweenAnimationBuilder(tween: Tween<double>(begin: 0,end: angle), duration: Duration(seconds: 1), builder: (BuildContext context, double val, __){
                  if(val >= (pi/2)){
                    isBack = false;
                  }else{
                    isBack = true;
                  }
                  return(
                      Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.identity()
                          ..setEntry(3, 2, 0.001)
                          ..rotateY(val),
                        child: Container(
                            height: hi/1.3,
                            width: wi,
                            child: isBack?
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image:  DecorationImage(
                                      image: AssetImage("assets/Colleges.png"),
                                      fit: BoxFit.fill
                                  )
                              ),
                            )
                                :Transform(
                                alignment: Alignment.center,
                                transform: Matrix4.identity()..rotateY(pi),
                                child:Container(
                                    child: Column(
                                      children: [Text("Top Colleges In USA",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20),
                                          child: Table(
                                            border: TableBorder.all(color: Colors.black),
                                            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                                            columnWidths: {
                                              0: FixedColumnWidth(70),
                                              1: FixedColumnWidth(250),
                                            },
                                            children: [
                                              TableRow(
                                                  children: [
                                                    Center(child: Text("S.no", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),),
                                                    Center(child: Text("Name of the Colleges", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),),)
                                                  ]
                                              ),
                                              makerow( "1", " Cornell University"),
                                              makerow( "2", "Yale University"),
                                              makerow( "3", " Princeton University"),
                                              makerow( "4", " University of California Los Angeles"),
                                              makerow( "5", "University of Harvard"),
                                              makerow( "6", "Stanford University"),
                                              makerow( "7", " Arizona State University"),
                                              makerow( "8", " Northeastern University"),

                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                )
                            )

                        ),
                      )
                  );
                }),
              )
          )
        ],
      ),
    );
  }
  TableRow makerow( Num, Documents){
    return TableRow(
        children: [
          Center(child: Text("$Num",style: TextStyle(fontSize: 25, color: Colors.black),),),
          Center(child: Text("$Documents", style: TextStyle(fontSize: 25, color: Colors.black),
            textAlign: TextAlign.left,),)
        ]
    );
  }
}

class USADocuments extends StatefulWidget {
  const USADocuments({super.key});

  @override
  State<USADocuments> createState() => _USADocumentsState();
}

class _USADocumentsState extends State<USADocuments> {
  bool isBack = true;
  double angle = 0;

  void _flip() {
    setState(() {
      angle = (angle + pi) % (2 * pi);
    });
  }

  @override
  Widget build(BuildContext context) {
    double wi = MediaQuery
        .of(context)
        .size
        .width;
    double hi = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      backgroundColor: Colors.grey, appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,
                  horizontal: 20),
              child: GestureDetector(
                onTap: _flip,
                child: TweenAnimationBuilder(
                    tween: Tween<double>(begin: 0, end: angle),
                    duration: Duration(seconds: 1),
                    builder: (BuildContext context, double val, __) {
                      if (val >= (pi / 2)) {
                        isBack = false;
                      } else {
                        isBack = true;
                      }
                      return (
                          Transform(
                            alignment: Alignment.center,
                            transform: Matrix4.identity()
                              ..setEntry(3, 2, 0.001)
                              ..rotateY(val),
                            child: Container(
                                height: hi / 1.3,
                                width: wi,
                                child: isBack ?
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/Colleges.png"),
                                          fit: BoxFit.fill
                                      )
                                  ),
                                )
                                    : Transform(
                                    alignment: Alignment.center,
                                    transform: Matrix4.identity()
                                      ..rotateY(pi),
                                    child: Container(
                                        child: Column(
                                          children: [
                                            Text("Required Documents",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25),),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 20),
                                              child: Table(
                                                border: TableBorder.all(
                                                    color: Colors.black),
                                                defaultVerticalAlignment: TableCellVerticalAlignment
                                                    .middle,
                                                columnWidths: {
                                                  0: FixedColumnWidth(70),
                                                  1: FixedColumnWidth(250),
                                                },
                                                children: [
                                                  TableRow(
                                                      children: [
                                                        Center(child: Text(
                                                          "S.no",
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              fontWeight: FontWeight
                                                                  .bold,
                                                              color: Colors
                                                                  .black),),),
                                                        Center(child: Text(
                                                          "List Of Documents",
                                                          style: TextStyle(
                                                              fontWeight: FontWeight
                                                                  .bold,
                                                              fontSize: 18,
                                                              color: Colors
                                                                  .black),),)
                                                      ]
                                                  ),
                                                  makerow("1",
                                                      " A Passport that has a validity of minimum 6 months after your stay in the US"),
                                                  makerow(
                                                      "2", "Print out of the online application form DS -160"),
                                                  makerow("3",
                                                      " Original and copy of the appointment letter for the interview"),
                                                  makerow("4",
                                                      " Form I – 20 sent by the US University/College where you will study"),
                                                  makerow("5",
                                                      "A confirmation receipt for payment of Visa fees"),
                                                  makerow("6",
                                                      "Bank statement for a minimum of 3 years that show adequate funds for paying for the first year (can be of parent/guardian)"),
                                                  makerow("7",
                                                      " Original Marks sheet or Provisional certificates"),
                                                  makerow("8",
                                                      " Score sheet of exams like IELTS, GMAT, TOEFL, etc"),

                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                    )
                                )

                            ),
                          )
                      );
                    }),
              )
          )
        ],
      ),
    );
  }

  TableRow makerow(Exam, Course) {
    return TableRow(
        children: [
          Center(child: Text(
            "$Exam", style: TextStyle(fontSize: 18, color: Colors.black),
            textAlign: TextAlign.left,),),
          Center(child: Text(
            "$Course", style: TextStyle(fontSize: 18, color: Colors.black),
            textAlign: TextAlign.left,),)
        ]
    );
  }
}
class USAExams extends StatefulWidget {
  const USAExams({super.key});

  @override
  State<USAExams> createState() => _USAExamsState();
}

class _USAExamsState extends State<USAExams> {
  bool isBack = true;
  double angle = 0;
  void _flip(){
    setState(() {
      angle = (angle + pi)%(2 * pi);
    });
  }
  @override
  Widget build(BuildContext context) {
    double wi = MediaQuery.of(context).size.width;
    double hi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,
                  horizontal: 20),
              child: GestureDetector(
                onTap: _flip,
                child: TweenAnimationBuilder(tween: Tween<double>(begin: 0,end: angle), duration: Duration(seconds: 1), builder: (BuildContext context, double val, __){
                  if(val >= (pi/2)){
                    isBack = false;
                  }else{
                    isBack = true;
                  }
                  return(
                      Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.identity()
                          ..setEntry(3, 2, 0.001)
                          ..rotateY(val),
                        child: Container(
                            height: hi/1.3,
                            width: wi,
                            child: isBack?
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image:  DecorationImage(
                                      image: AssetImage("assets/Colleges.png"),
                                      fit: BoxFit.fill
                                  )
                              ),
                            )
                                :Transform(
                                alignment: Alignment.center,
                                transform: Matrix4.identity()..rotateY(pi),
                                child:Container(
                                    child: Column(
                                      children: [Text("EXAMS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20),
                                          child: Table(
                                            border: TableBorder.all(color: Colors.black),
                                            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                                            columnWidths: {
                                              0: FixedColumnWidth(80),
                                              1: FixedColumnWidth(300),
                                            },
                                            children: [
                                              TableRow(
                                                  children: [
                                                    Center(child: Text("S.no", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),),
                                                    Center(child: Text("Exam", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),),)
                                                  ]
                                              ),
                                              makerow( "1", "IELTS"),
                                              makerow( "2", "GMAT"),
                                              makerow( "3", "TOEFL"),


                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                )
                            )

                        ),
                      )
                  );
                }),
              )
          )
        ],
      ),
    );
  }
  TableRow makerow( Num, Documents){
    return TableRow(
        children: [
          Center(child: Text("$Num",style: TextStyle(fontSize: 25, color: Colors.black),),),
          Center(child: Text("$Documents", style: TextStyle(fontSize: 25, color: Colors.black),
            textAlign: TextAlign.left,),)
        ]
    );
  }
}

class USAScholarships extends StatefulWidget {
  const USAScholarships({super.key});

  @override
  State<USAScholarships> createState() => _USAScholarshipsState();
}

class _USAScholarshipsState extends State<USAScholarships> {
  bool isBack = true;
  double angle = 0;
  void _flip(){
    setState(() {
      angle = (angle + pi)%(2 * pi);
    });
  }
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,
                  horizontal: 20),
              child: GestureDetector(
                onTap: _flip,
                child: TweenAnimationBuilder(tween: Tween<double>(begin: 0,end: angle), duration: Duration(seconds: 1), builder: (BuildContext context, double val, __){
                  if(val >= (pi/2)){
                    isBack = false;
                  }else{
                    isBack = true;
                  }
                  return(
                      Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.identity()
                          ..setEntry(3, 2, 0.001)
                          ..rotateY(val),
                        child: Container(
                            height: hi/1.3,
                            width: wi,
                            child: isBack?
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image:  DecorationImage(
                                      image: AssetImage("assets/Colleges.png"),
                                      fit: BoxFit.fill
                                  )
                              ),
                            )
                                :Transform(
                                alignment: Alignment.center,
                                transform: Matrix4.identity()..rotateY(pi),
                                child:Container(
                                    child: Column(
                                      children: [Text("Scholarships In USA",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20),
                                          child: Table(
                                            border: TableBorder.all(color: Colors.black),
                                            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                                            columnWidths: {
                                              0: FixedColumnWidth(70),
                                              1: FixedColumnWidth(250),
                                            },
                                            children: [
                                              TableRow(
                                                  children: [
                                                    Center(child: Text("S.no", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),),
                                                    Center(child: Text("Scholarships List", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),),)
                                                  ]
                                              ),
                                              makerow( "1", " Tata Scholarship"),
                                              makerow( "2", "AAUW International Fellowships"),
                                              makerow( "3", " Hubert Humphrey Fellowship Program"),
                                              makerow( "4", " Fulbright Foreign Student Program"),
                                              makerow( "5", "Stanford Reliance Dhirubhai Fellowship"),
                                              makerow( "6", "Rotary Foundation Ambassadorial Scholarship"),
                                              makerow( "7", " Inlaks Shivdasani Foundation scholarship"),
                                              makerow( "8", " American University Emerging Global Leader Scholarship"),
                                              makerow( "9", " AEF Scholarship"),

                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                )
                            )

                        ),
                      )
                  );
                }),
              )
          )
        ],
      ),
    );
  }
  TableRow makerow( Num, Documents){
    return TableRow(
        children: [
          Center(child: Text("$Num",style: TextStyle(fontSize: 25, color: Colors.black),),),
          Center(child: Text("$Documents", style: TextStyle(fontSize: 25, color: Colors.black),
            textAlign: TextAlign.left,),)
        ]
    );
  }
}