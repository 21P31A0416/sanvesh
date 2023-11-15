import 'dart:math';

import 'package:flutter/material.dart';

class China extends StatefulWidget {
  const China({super.key});

  @override
  State<China> createState() => _ChinaState();
}

class _ChinaState extends State<China> {
  int i = 0;
  var l = [
    FF(image: "https://cdn.pixabay.com/photo/2017/09/01/13/56/university-2704306_1280.jpg", Text: "Colleges", text: "/ChinaColleges"),
    FF(image: "https://media.istockphoto.com/id/1278630367/photo/grow-green-trees-on-money-in-energy-saving-light-bulbs-including-graduation-hats-with-ideas.webp?b=1&s=612x612&w=0&k=20&c=UTp8mUy55MyDTnvU31XndWI2l2Yjppz1QlY82EvOEjY=", Text: "Scholarships", text: "/ChinaScholarships"),
    FF(image: "https://cdn.pixabay.com/photo/2016/01/16/14/56/buffer-1143485_640.jpg", Text: "Documents Required", text: "/ChinaDocuments"),
    FF(image: "https://cdn.pixabay.com/photo/2018/09/04/10/06/man-3653346_640.jpg", Text: "Entrance Exams", text: "/ChinaExams"),];
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        title: Text("China",
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
    required this.text
  }
      );
}

class ChinaColleges extends StatefulWidget {
  const ChinaColleges({super.key});

  @override
  State<ChinaColleges> createState() => _ChinaCollegesState();
}

class _ChinaCollegesState extends State<ChinaColleges> {

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
        backgroundColor: Colors.amberAccent,

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
                                      color: Colors.black
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
                                                "Top Colleges in China",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white
                                                ),
                                              ),
                                            ),
                                          ),
                                          Table(
                                            border: TableBorder.all(color: Colors.white),
                                            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                                            columnWidths: {
                                              // 0: FixedColumnWidth(100),
                                              1: FixedColumnWidth(170),
                                              2: FixedColumnWidth(110),
                                            },
                                            children: [
                                              TableRow(
                                                  children: [
                                                    Center(child: Text("S.No", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),),
                                                    Center(child: Text("University", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),)
                                                  ]
                                              ),
                                              makerow("1",  "Tsinghua University"),
                                              makerow("2",  "Peking University of China"),
                                              makerow("3",  "Aarhus University"),
                                              makerow("4",  "Zhejiang University of china"),
                                              makerow("5" , "Shanghia jiao tong University in Shanghai"),
                                              makerow("6",  "Fudan University of china"),
                                              makerow("7",  "Wuhan University of china top"),
                                              makerow("8",  "Ninjing University of china Top"),
                                              makerow("9", "Sun yat-sen  Universitet of china"),
                                              makerow("10",  "Harbin Institute of Technology")
                                            ],
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
  TableRow makerow(Number, university){
    return TableRow(
        children: [
          Center(child: Text("$Number",style: TextStyle(fontSize: 18, color: Colors.white),),),
          Center(child: Text("$university", style: TextStyle(fontSize: 18, color: Colors.white),),)
        ]
    );
  }
}


class ChinaDocuments extends StatefulWidget {
  const ChinaDocuments({super.key});

  @override
  State<ChinaDocuments> createState() => _ChinaDocumentsState();
}

class _ChinaDocumentsState extends State<ChinaDocuments> {
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
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
              child: SingleChildScrollView(scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text("Document that are required ", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10,
                          left: 10,
                          top: 10),
                      child: Table(
                        border: TableBorder.all(color: Colors.black),
                        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                        columnWidths: {
                          1: FixedColumnWidth(200),
                          2: FixedColumnWidth(50),
                        },
                        children: [
                          TableRow(
                              children: [
                                Center(child: Text("S.no", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),),
                                Center(child: Text("Required Documents", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),),)
                              ]
                          ),
                          makerow( "1", "Graduation Certificate"),
                          makerow( "2", "Academic Refrence"),
                          makerow( "3", "Personal  Statement "),
                          makerow( "4", "An acceptance of Letter From education institute"),
                          makerow( "5", "Health Insurence"),
                          makerow( "6", "Study prmit And Visa"),
                          makerow( "7", "English Language Certificate"),
                          makerow( "8", "Curriculum Vitae/Resume"),
                          makerow( "9", "Evidence of Financial Capacity"),
                          makerow( "10", "Non-Ceiminal Record Certificate"),
                          makerow("11", " Recommendation Letter")
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

class ChinaExams extends StatefulWidget {
  const ChinaExams({super.key});

  @override
  State<ChinaExams> createState() => _ChinaExamsState();
}

class _ChinaExamsState extends State<ChinaExams> {
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height ;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,
                right: 10,
                top: 10),
            child: Container(
              height: hi/1.5,
              width: wi,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text("Exams that are required to study in China",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,
                        right: 10,
                        top: 10),
                    child: Table(
                      border: TableBorder.all(color: Colors.black),
                      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                      columnWidths: {
                        1: FixedColumnWidth(150),
                        2: FixedColumnWidth(150),
                      },
                      children: [
                        TableRow(
                            children: [
                              Center(child: Text("Exam", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),),
                              Center(child: Text("Course", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),),)
                            ]
                        ),
                        makerow( "Chinese National student Must take the Gaokao ","Masters in china"),
                        makerow( "SAT Scholastic Aptitude test", "Humanities and Sciences"),
                        makerow( "PTE Person of English Test", "Graduation"),
                        makerow( "TOEFL Test of English as a Foreign Language", "Humanities and Sciences"),
                        makerow( "Graduate Record Examination (GRE)", "PostGraduation Programmes"),
                        makerow( "GMAT management enterenc Test", "Business"),
                        makerow("HSK Hanyu Shuiping Kaoshi", "Master's Program"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  TableRow makerow( Exam, Course){
    return TableRow(
        children: [
          Center(child: Text("$Exam",style: TextStyle(fontSize: 18, color: Colors.black),
            textAlign: TextAlign.left,),),
          Center(child: Text("$Course", style: TextStyle(fontSize: 18, color: Colors.black),
            textAlign: TextAlign.left,),)
        ]
    );
  }
}


class ChinaScholarships extends StatefulWidget {
  const ChinaScholarships({super.key});

  @override
  State<ChinaScholarships> createState() => _ChinaScholarshipsState();
}

class _ChinaScholarshipsState extends State<ChinaScholarships> {
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10,
                right: 10,
                left: 10),
            child: Container(
              height: hi/1.5,
              width: wi,
              child:  SingleChildScrollView(scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text("Scholarships",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,
                          right: 10,
                          top: 10),
                      child: Table(
                        border: TableBorder.all(color: Colors.black),
                        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                        columnWidths: {
                          1: FixedColumnWidth(200),
                          2: FixedColumnWidth(20),
                        },
                        children: [
                          TableRow(
                              children: [
                                Center(child: Text("S.no", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),),
                                Center(child: Text("Scholarships", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),),)
                              ]
                          ),
                          makerow( "1", "Fullly Funded hong kong PHD Fellowship"),
                          makerow( "2", "Tsinghua University Schwarzman Scholarship"),
                          makerow( "3", "Centeral South University Scholarship"),
                          makerow( "4", "Chinese government Inernational Scholarship"),
                          makerow( "5", "University of Nottingham Ningbo Internatinal UG scholarship"),
                          makerow( "6", " Postgraduates Studies at hohai University Scholarship"),
                          makerow( "7", "Shanghai Government Scholarship at Donghua University "),
                          makerow( "8", "SWUFE Chinese Government Fully Funded Scholarships"),
                          makerow( "9", "Marine Scholarship for International Students"),
                          makerow( "10", "Asian Development Bank Scholarships"),



                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
  TableRow makerow(Num, Scholarships){
    return TableRow(
        children: [
          Center(child: Text("$Num",style: TextStyle(fontSize: 18, color: Colors.black),
            textAlign: TextAlign.left,),),
          Center(child: Text("$Scholarships", style: TextStyle(fontSize: 18, color: Colors.black),
            textAlign: TextAlign.left,),)
        ]
    );
  }
}