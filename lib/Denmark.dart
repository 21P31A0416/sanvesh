import 'package:flutter/material.dart';
import 'dart:math';
class Denmark extends StatefulWidget {
  const Denmark({super.key});

  @override
  State<Denmark> createState() => _DenmarkState();
}

class _DenmarkState extends State<Denmark> {
  int i = 0;
  var l = [
    FF(image: "https://cdn.pixabay.com/photo/2017/09/01/13/56/university-2704306_1280.jpg", Text: "Colleges", text: "/DenmarkColleges"),
    FF(image: "https://media.istockphoto.com/id/1278630367/photo/grow-green-trees-on-money-in-energy-saving-light-bulbs-including-graduation-hats-with-ideas.webp?b=1&s=612x612&w=0&k=20&c=UTp8mUy55MyDTnvU31XndWI2l2Yjppz1QlY82EvOEjY=", Text: "Scholarships", text: "/DenmarkScholarships"),
    FF(image: "https://cdn.pixabay.com/photo/2016/01/16/14/56/buffer-1143485_640.jpg", Text: "Documents Required", text: "/DenmarkDocuments"),
    FF(image: "https://cdn.pixabay.com/photo/2018/09/04/10/06/man-3653346_640.jpg", Text: "Entrance Exams", text: "/DenmarkExams"),];
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        title: Text("Denmark",
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
  });
}

class DenmarkColleges extends StatefulWidget {
  const DenmarkColleges({super.key});
  @override
  State<DenmarkColleges> createState() => _DenmarkCollegesState();
}

class _DenmarkCollegesState extends State<DenmarkColleges> {

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
                                                "Top Colleges in Denmark",
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
                                              makerow("1",  "Aalborg University"),
                                              makerow("2",  "Technical University of Denmark"),
                                              makerow("3",  "Aarhus University"),
                                              makerow("4",  "Technical University of Denmark"),
                                              makerow("5" , "University of Copenhagen"),
                                              makerow("6",  "University of Southern Denmark"),
                                              makerow("7",  "Roskilde University"),
                                              makerow("8",  "Kobenhavans University Faculty of Theology"),
                                              makerow("9", "Syddansk Universitet slagelse"),
                                              makerow("10",  "Royal Danish Academy of fine Art's")
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


class DenmarkDocuments extends StatefulWidget {
  const DenmarkDocuments({super.key});

  @override
  State<DenmarkDocuments> createState() => _DenmarkDocumentsState();
}

class _DenmarkDocumentsState extends State<DenmarkDocuments> {
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
                          makerow( "1", "Fully completed and signed Visa application Form"),
                          makerow( "2", "Academic Refrence"),
                          makerow( "3", "Statement of Purpose(SOP)"),
                          makerow( "4", "An acceptance of Letter From education institute"),
                          makerow( "5", "Proof od Payments And Financial Funds"),
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


class DenmarkExams extends StatefulWidget {
  const DenmarkExams({super.key});

  @override
  State<DenmarkExams> createState() => _DenmarkExamsState();
}

class _DenmarkExamsState extends State<DenmarkExams> {

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
                    child: Text("Exams that are required to study in Denmark",
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
                        makerow( "HKADC Overseas Arts Administration Test","Masters in Denmark"),
                        makerow( "Ritchie-Jennings Memorial Exam","Arts And sciences"),
                        makerow( "PTE Person of English Test", "Graduation"),
                        makerow( "TOEFL Test of English as a Foreign Language", "Humanities and Sciences"),
                        makerow( "Graduate Record Examination (GRE)", "PostGraduation Programmes"),
                        makerow( "ERCIM Alain Bensoussan Fellowship in Europe", "Management of Business"),
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

class DenmarkScholarships extends StatefulWidget {
  const DenmarkScholarships({super.key});

  @override
  State<DenmarkScholarships> createState() => _DenmarkScholarshipsState();
}

class _DenmarkScholarshipsState extends State<DenmarkScholarships> {
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
                          makerow( "1", "Erasmus Mundus Scholarship Programs in Denmark"),
                          makerow( "2", "The Danish Government Scholarships under the Cultural Agreements"),
                          makerow( "3", "ERCIM Alain Bensoussan Fellowship in Europe"),
                          makerow( "4", " HKADC Overseas Arts Administration Scholarships"),
                          makerow( "5", "Ritchie-Jennings Memorial Scholarship Program"),
                          makerow( "6", " Royal Society International Exchange Programme"),
                          makerow( "7", "AIRC International Cancer Research Fellowships (iCARE)"),
                          makerow( "8", "The Danish Government Scholarships"),
                          makerow( "9", "PhD Scholarships At CIBS"),
                          makerow( "10", "Aarhus University Scholarship"),



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