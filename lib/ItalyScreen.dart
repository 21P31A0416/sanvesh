import 'package:flutter/material.dart';
import 'dart:math';

class ItalyScreen extends StatefulWidget {
  const ItalyScreen({super.key});

  @override
  State<ItalyScreen> createState() => _ItalyScreenState();
}

class _ItalyScreenState extends State<ItalyScreen> {
  int i = 0;
  var l = [
    FF(image: "https://cdn.pixabay.com/photo/2017/09/01/13/56/university-2704306_1280.jpg", Text: "Colleges", text: "/ItalyColleges"),
    FF(image: "https://media.istockphoto.com/id/1278630367/photo/grow-green-trees-on-money-in-energy-saving-light-bulbs-including-graduation-hats-with-ideas.webp?b=1&s=612x612&w=0&k=20&c=UTp8mUy55MyDTnvU31XndWI2l2Yjppz1QlY82EvOEjY=", Text: "Scholarships", text: "/ItalyScholarships"),
    FF(image: "https://cdn.pixabay.com/photo/2016/01/16/14/56/buffer-1143485_640.jpg", Text: "Documents Required", text: "/ItalyDocuments"),
    FF(image: "https://cdn.pixabay.com/photo/2018/09/04/10/06/man-3653346_640.jpg", Text: "Entrance Exams", text: "/ItalyExams"),];
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        title: Text("Italy",
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
              child: InkWell(onTap: (){
              Navigator.push(context,
                PageRouteBuilder(
                    transitionsBuilder: (context, animation, animationTime, child){
                      return ScaleTransition(scale: animation,child: child,
                        alignment: Alignment.center,);
                    },
                    pageBuilder: (context, animation, animationTime){
                      if (l[i].text == "/ItalyColleges") {
                        return ItalyColleges();
                      } else if (l[i].text == "/ItalyDocuments") {
                        return ItalyDocuments();
                      } else if (l[i].text == "/ItalyScholarships") {
                        return ItalyScholarships();
                      } else if (l[i].text == "/ItalyExams") {
                        return ItalyExams();
                      }
                      return Container();
                    }
                ),
              );
            },
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

class ItalyColleges extends StatefulWidget {
  const ItalyColleges({super.key});

  @override
  State<ItalyColleges> createState() => _ItalyCollegesState();
}

class _ItalyCollegesState extends State<ItalyColleges> {

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
                                                "Top Colleges in Italy",
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
                                              makerow("1",  "University of Bologna"),
                                              makerow("2",  "Sapienza University of Rome"),
                                              makerow("3",  " University of padua"),
                                              makerow("4",  "Politenico di milano university"),
                                              makerow("5" , "University of Trento"),
                                              makerow("6",  "University of Naples Federico"),
                                              makerow("7",  "University of Rome Tor Vergata"),
                                              makerow("8",  "University of Messina"),
                                              makerow("9", "University of Tuscia"),
                                              makerow("10",  "University of Macerata (Unimc)")
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


class ItalyDocuments extends StatefulWidget {
  const ItalyDocuments({super.key});

  @override
  State<ItalyDocuments> createState() => _ItalyDocumentsState();
}

class _ItalyDocumentsState extends State<ItalyDocuments> {
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
                      child: Text("Document that are required", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),),
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
                          makerow( "1", "Language Proficiency proof"),
                          makerow( "2", "Academic Refrence"),
                          makerow( "3", "Statement of Purpose(SOP)"),
                          makerow( "4", "An acceptance of Letter From education institute"),
                          makerow( "5", "Health Insurence"),
                          makerow( "6", "Study prmit And Visa"),
                          makerow( "7", "Participation Certificates & Work Experience Letters"),
                          makerow( "8", "Curriculum Vitae/Resume"),
                          makerow( "9", "Evidence of Financial Capacity"),
                          makerow( "10", "Proposal for Research"),
                          makerow("11", " English Proficiency ")
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

class ItalyExams extends StatefulWidget {
  const ItalyExams({super.key});

  @override
  State<ItalyExams> createState() => _ItalyExamsState();
}

class _ItalyExamsState extends State<ItalyExams> {
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
                    child: Text("Exams that are required to study in Italy",
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
                        makerow( "GMAT ","ManageMent of business"),
                        makerow( "SAT Scholastic Aptitude test", "Humanities and Sciences"),
                        makerow( "PTE Person of English Test", "Graduation"),
                        makerow( "TOEFL Test of English as a Foreign Language", "Humanities and Sciences"),
                        makerow( "Graduate Record Examination (GRE)", "PostGraduation Programmes"),
                        makerow( "IET Ittalian Enterence Test", "BLanguage Proficiency proof"),
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

class ItalyScholarships extends StatefulWidget {
  const ItalyScholarships({super.key});

  @override
  State<ItalyScholarships> createState() => _ItalyScholarshipsState();
}

class _ItalyScholarshipsState extends State<ItalyScholarships> {
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
                          makerow( "1", "Bocconi Merit and International Award Scholar"),
                          makerow( "2", "Padua International Excellence Scholarship Progarm"),
                          makerow( "3", "University of Bologna Study Grants for International Students"),
                          makerow( "4", "Politecnico di Milano Mirit Based Scholarship"),
                          makerow( "5", "University of padua scholarship"),
                          makerow( "6", " University of Tuscia Scholarship"),
                          makerow( "7", "University of Bologna Scholarship"),
                          makerow( "8", "The Italy Government Scholarships"),
                          makerow( "9", "PhD Scholarships At CIBS an Italy"),
                          makerow( "10", "Cattolica University Scholarship"),
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