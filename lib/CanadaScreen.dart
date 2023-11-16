import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Canada extends StatefulWidget {
  const Canada({super.key});

  @override
  State<Canada> createState() => _CanadaState();
}

class _CanadaState extends State<Canada> {
  int i = 0;
  var l = [
    FF(image: "https://cdn.pixabay.com/photo/2017/09/01/13/56/university-2704306_1280.jpg", Text: "Colleges", text: "/CanadaColleges"),
    FF(image: "https://media.istockphoto.com/id/1278630367/photo/grow-green-trees-on-money-in-energy-saving-light-bulbs-including-graduation-hats-with-ideas.webp?b=1&s=612x612&w=0&k=20&c=UTp8mUy55MyDTnvU31XndWI2l2Yjppz1QlY82EvOEjY=", Text: "Scholarships", text: "/CanadaScholarships"),
    FF(image: "https://cdn.pixabay.com/photo/2016/01/16/14/56/buffer-1143485_640.jpg", Text: "Documents Required", text: "/CanadaDocuments"),
    FF(image: "https://cdn.pixabay.com/photo/2018/09/04/10/06/man-3653346_640.jpg", Text: "Entrance Exams", text: "/CanadaExams"),];
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        title: Text("Canada",
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

class CanadaColleges extends StatefulWidget {
  const CanadaColleges({super.key});

  @override
  State<CanadaColleges> createState() => _CanadaCollegesState();
}

class _CanadaCollegesState extends State<CanadaColleges> {

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
                                                "Top Colleges in Canada",
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
                                              0: FixedColumnWidth(65),
                                              1: FixedColumnWidth(75),
                                              2: FixedColumnWidth(120),
                                            },
                                            children: [
                                              TableRow(
                                                  children: [
                                                    Center(child: Text("S.No",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),),
                                                    Center(child: Text("QS World Ranking", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),),
                                                    Center(child: Text("University Name", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),)
                                                  ]
                                              ),
                                              makerow("1", "34", "University of Toronto"),
                                              makerow("2",  "31","McGill University"),
                                              makerow("3",  "47","University of British Columbia"),
                                              makerow("4", "110", "University of Alberta"),
                                              makerow("5" , "116","University of Montreal"),
                                              makerow("6",  "152","McMaster University"),
                                              makerow("7",  "154","University of Waterloo"),
                                              makerow("8",  "172","Western University"),
                                              makerow("9", "237","University of Ottawa"),
                                              makerow("10", "242", "University of Calgary")
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
  TableRow makerow(Number,Ranks, university){
    return TableRow(
        children: [
          Center(child: Text("$Number",style: TextStyle(fontSize: 18, color: Colors.white),),),
          Center(child: Text("$Ranks",style:  TextStyle(fontSize: 18, color: Colors.white),),),
          Center(child: Text("$university", style: TextStyle(fontSize: 18, color: Colors.white),),)
        ]
    );
  }
}

class CanadaDocuments extends StatefulWidget {
  const CanadaDocuments({super.key});

  @override
  State<CanadaDocuments> createState() => _CanadaDocumentsState();
}

class _CanadaDocumentsState extends State<CanadaDocuments> {
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
                          makerow( "1", "•	Proof of student loan or education loan from a bank"),
                          makerow( "2", "Proof of scholarships or other funding awards received from Canada university "),
                          makerow( "3", "•	Tuition fee payment receipts and receipts of housing deposits "),
                          makerow( "4", "•	Bank statements of the last 4 months that prove the minimum bank balance for Canada student visa "),
                          makerow( "5", "•	Having a Canadian bank account with sufficient funds."),
                          makerow( "6", "•	A Guaranteed Investment Certificate (GIC) from a Canadian bank"),
                          makerow( "7", "English Language Certificate"),
                          makerow( "8", "Curriculum Vitae/Resume"),
                          makerow( "9", "Evidence of Financial Capacity"),
                          makerow( "10", "•	A bank draft convertible to Canadian dollar"),
                          makerow("11", " Graduation Certificate")
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


class CanadaExams extends StatefulWidget {
  const CanadaExams({super.key});

  @override
  State<CanadaExams> createState() => _CanadaExamsState();
}

class _CanadaExamsState extends State<CanadaExams> {
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
                    child: Text("Exams that are required to study in Canada",
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
                        makerow( " Graduate Record Examination GRE ","Masters in Canada"),
                        makerow( "Scholastic Aptitude Test (SAT) ", "Masters in Canada"),
                        makerow( "PTE Person of English Test", "Graduation"),
                        makerow( "TOEFL Test of English as a Foreign Language", "Humanities and Sciences"),
                        makerow( "Canadian Academic English Language(CAEL)", "PostGraduation Programmes"),
                        makerow( "Law School Admission (LSA)", "LAW"),
                        makerow("Graduate Management Admission Council (GMAC)", "MBA"),
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


class CanadaScholarships extends StatefulWidget {
  const CanadaScholarships({super.key});

  @override
  State<CanadaScholarships> createState() => _CanadaScholarshipsState();
}

class _CanadaScholarshipsState extends State<CanadaScholarships> {
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
                          makerow( "1", "Lester B. Pearson Intl. Scholarship"),
                          makerow( "2", "Trudeau Foundation Scholarships"),
                          makerow( "3", "Vanier Canada Graduate Scholarship"),
                          makerow( "4", "Contario Graduate Scholarship (OGS)"),
                          makerow( "5", "Queen Elizabeth II Diamond Jubilee Scholarship"),
                          makerow( "6", " UAlberta International Scholarships"),
                          makerow( "7", "Humber College International Entrance Scholarships "),
                          makerow( "8", "University of Manitoba Graduate Fellowships (UMGF)"),
                          makerow( "9","Carleton University Entrance Scholarships"),
                          makerow( "10", "University of Calgary International Entrance Scholarships"),



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