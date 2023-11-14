import 'package:flutter/material.dart';
import 'dart:math';

class Germany extends StatefulWidget {
  const Germany({super.key});

  @override
  State<Germany> createState() => _GermanyState();
}

class _GermanyState extends State<Germany> {
  int i = 0;
  var l = [
    FF(image: "https://cdn.pixabay.com/photo/2017/09/01/13/56/university-2704306_1280.jpg", Text: "Colleges", text: "/GermanyColleges"),
    FF(image: "https://media.istockphoto.com/id/1278630367/photo/grow-green-trees-on-money-in-energy-saving-light-bulbs-including-graduation-hats-with-ideas.webp?b=1&s=612x612&w=0&k=20&c=UTp8mUy55MyDTnvU31XndWI2l2Yjppz1QlY82EvOEjY=", Text: "Scholarships", text: "/GermanyScholarships"),
    FF(image: "https://cdn.pixabay.com/photo/2016/01/16/14/56/buffer-1143485_640.jpg", Text: "Documents Required", text: "/GermanyDocuments"),
    FF(image: "https://cdn.pixabay.com/photo/2018/09/04/10/06/man-3653346_640.jpg", Text: "Entrance Exams", text: "/GermanyExams"),];
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        title: Text("Germany",
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

class GermanyColleges extends StatefulWidget {
  const GermanyColleges({super.key});

  @override
  State<GermanyColleges> createState() => _GermanyCollegesState();
}

class _GermanyCollegesState extends State<GermanyColleges> {
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
        backgroundColor: Colors.black,
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
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Column(
                                        children: [
                                          Container(
                                            height: hi/10,
                                            child: Padding(
                                              padding: const EdgeInsets.only(top: 10),
                                              child: Text(
                                                "Top Colleges in Germany",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 10,
                                            right: 10,),
                                            child: Table(
                                              border: TableBorder.all(color: Colors.black),
                                              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                                              columnWidths: {
                                                0: FixedColumnWidth(100),
                                                1: FixedColumnWidth(100),
                                                2: FixedColumnWidth(155),
                                              },
                                              children: [
                                                TableRow(
                                                    children: [
                                                      Center(child: Text("QS World University Rankings", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Colors.black),),),
                                                      Center(child: Text("Times Higher Education World University Ranking", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),),
                                                      Center(child: Text("University", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),),)
                                                    ]
                                                ),
                                                makerow("49", "30", "Technical University of Munich"),
                                                makerow("59", "33", "Ludwig Maximilians University Munich"),
                                                makerow("65", "43", "Heidelberg University"),
                                                makerow("118", "91", "Free University of Berlin"),
                                                makerow("131", "86", "Humboldt University of Berlin"),
                                                makerow("141", "189", "KIT, Karlsruhe Institute of Technology"),
                                                makerow("147", "99", "RWTH Aachen University"),
                                                makerow("158", "156", "Technical University of Berlin (TU Berlin)"),
                                                makerow("169", "86", "Eberhard Karls Universität Tübingen"),
                                                makerow("189", "113", "Albert Ludwigs University of Freiburg"),
                                              ],
                                            ),
                                          )
                                        ]
                                    ),
                                  )
                              ),
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
  TableRow makerow(british, global, university){
    return TableRow(
        children: [
          Center(child: Text("$british", style: TextStyle(fontSize: 18, color: Colors.black),),),
          Center(child: Text("$global",style: TextStyle(fontSize: 18, color: Colors.black),),),
          Center(child: Text("$university", style: TextStyle(fontSize: 18, color: Colors.black),),)
        ]
    );
  }
}

class GermanyDocuments extends StatefulWidget {
  const GermanyDocuments({super.key});

  @override
  State<GermanyDocuments> createState() => _GermanyDocumentsState();
}

class _GermanyDocumentsState extends State<GermanyDocuments> {
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10,
                right: 10,
                left: 10,
                bottom: 10),
            child: Container(
              height: hi/1.5,
              width: wi,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                  color: Colors.tealAccent),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text("Document that are required", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10,
                          left: 10,
                          top: 10,
                      bottom: 10),
                      child: Table(
                        border: TableBorder.all(color: Colors.black),
                        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                        columnWidths: {
                          0: FixedColumnWidth(50),
                          1: FixedColumnWidth(300),
                        },
                        children: [
                          TableRow(
                              children: [
                                Center(child: Text("S.no", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),),
                                Center(child: Text("Required Documents", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),),)
                              ]
                          ),
                          makerow( "1", "Valid passport"),
                          makerow( "2", "Copy of your passport’s information page (A4 size copy)"),
                          makerow( "3", "Application form "),
                          makerow( "4", "A declaration stating the information provided is true and complete information"),
                          makerow( "5", "APS Certificate: Mandatory component November 2022 onwards"),
                          makerow( "6", "Cover Letter explaining the reason for your visa application. You may be required to submit a German translation of this document."),
                          makerow( "7", "Letter of Admission from a German University"),
                          makerow( "8", "University Certificates and transcripts - Degree certificates and mark sheets"),
                          makerow( "9", "Proof of Language Proficiency (German language test scores). Applicants for PhD studies and Erasmus Mundus Scholarship holders are exempt from this rule"),
                          makerow( "10", "Proof of funds"),
                          makerow("11", "3 passport pictures according to biometric specifications, not older than 6 months"),
                          makerow( "12", "Demand Draft for the Student Visa Fee"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
  TableRow makerow( Num, Documents){
    return TableRow(
        children: [
          Center(child: Text("$Num",style: TextStyle(fontSize: 18, color: Colors.black),),),
          Center(child: Text("$Documents", style: TextStyle(fontSize: 18, color: Colors.black),
            textAlign: TextAlign.left,),)
        ]
    );
  }
}

class GermanyExams extends StatefulWidget {
  const GermanyExams({super.key});

  @override
  State<GermanyExams> createState() => _GermanyExamsState();
}

class _GermanyExamsState extends State<GermanyExams> {
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
      ),
    );
  }
}


class GermanyScholarships extends StatefulWidget {
  const GermanyScholarships({super.key});

  @override
  State<GermanyScholarships> createState() => _GermanyScholarshipsState();
}

class _GermanyScholarshipsState extends State<GermanyScholarships> {
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.limeAccent,
      ),

    );
  }
}
