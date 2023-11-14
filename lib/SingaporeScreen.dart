import 'package:flutter/material.dart';
import 'dart:math';


class Singapore extends StatefulWidget {
  const Singapore({super.key});

  @override
  State<Singapore> createState() => _SingaporeState();
}

class _SingaporeState extends State<Singapore> {
  int i = 0;
  var l = [
    FF(image: "https://cdn.pixabay.com/photo/2017/09/01/13/56/university-2704306_1280.jpg", Text: "Colleges", text: "/SingaporeColleges"),
    FF(image: "https://media.istockphoto.com/id/1278630367/photo/grow-green-trees-on-money-in-energy-saving-light-bulbs-including-graduation-hats-with-ideas.webp?b=1&s=612x612&w=0&k=20&c=UTp8mUy55MyDTnvU31XndWI2l2Yjppz1QlY82EvOEjY=", Text: "Scholarships", text: "/SingaporeScholarships"),
    FF(image: "https://cdn.pixabay.com/photo/2016/01/16/14/56/buffer-1143485_640.jpg", Text: "Documents Required", text: "/SingaporeDocuments"),
    FF(image: "https://cdn.pixabay.com/photo/2018/09/04/10/06/man-3653346_640.jpg", Text: "Entrance Exams", text: "/SIngaporeExams"),];
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green.shade900,
        title: Text("Singapore",
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

class SingaporeColleges extends StatefulWidget {
  const SingaporeColleges({super.key});

  @override
  State<SingaporeColleges> createState() => _SingaporeCollegesState();
}

class _SingaporeCollegesState extends State<SingaporeColleges> {
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
                                                "Top Colleges in Singapore",
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
                                                    //    Center(child: Text("British Rank", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Colors.white),),),
                                                    Center(child: Text("S.No", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),),
                                                    Center(child: Text("University", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),)
                                                  ]
                                              ),
                                              makerow("1",  "National university of Singapore"),
                                              makerow("2",  "Nanyang technological university"),
                                              makerow("3",  "Singapore Management university"),
                                              makerow("4",  "James Cook university Singapore"),
                                              makerow("5" , "Singapore university of technology and design"),
                                              makerow("6",  "Technical University of Munich, Asia"),
                                              makerow("7",  "SIM university"),
                                              makerow("8",  "London School of Economics and Political Science (LSE)"),
                                              makerow("9", "NUS- Business school"),
                                              makerow("10",  "Singapore Management of university")
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
          //Center(child: Text("$british", style: TextStyle(fontSize: 18, color: Colors.white),),),
          Center(child: Text("$Number",style: TextStyle(fontSize: 18, color: Colors.white),),),
          Center(child: Text("$university", style: TextStyle(fontSize: 18, color: Colors.white),),)
        ]
    );
  }
}

class SingaporeDocuments extends StatefulWidget {
  const SingaporeDocuments({super.key});

  @override
  State<SingaporeDocuments> createState() => _SingaporeDocumentsState();
}

class _SingaporeDocumentsState extends State<SingaporeDocuments> {
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
                          makerow( "2", "Marksheets and Certificates of Graduation"),
                          makerow( "3", "Letters of Recommendation (LOR)"),
                          makerow( "4", "Bank statement of last 6 months with sufficient balance"),
                          makerow( "5", "Scores on the English Proficiency Test"),
                          makerow( "6", "Scorecards for Entrance Exams"),
                          makerow( "7", "Participation Certificates & Work Experience Letters"),
                          makerow( "8", "Curriculum Vitae/Resume"),
                          makerow( "9", "Evidence of Financial Capacity"),
                          makerow( "10", "Proposal for Research"),
                          makerow("11", " Covering letter from the Indian company ")
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



class SingaporeExams extends StatefulWidget {
  const SingaporeExams({super.key});

  @override
  State<SingaporeExams> createState() => _SingaporeExamsState();
}

class _SingaporeExamsState extends State<SingaporeExams> {
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
                    child: Text("Exams that are required to study in UK",
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
                        makerow( "IELTS", "International English Language testing System"),
                        makerow( "GMAT", "Management of Business"),
                        makerow( "UEE University Enternce Examinations", "Masters in Singapore"),
                        makerow( "MUET Malaysian University Engilish Test", "PostGraduation Programmes"),
                        makerow( "PET Person of English Test", "Graduation"),
                        makerow( "SAT Scholastic Aptitude test", "Humanities and Sciences"),
                        makerow( "Graduate Record Examination (GRE)", "PostGraduation Programmes"),
                        makerow( "University of Singapore (UOF)", "Social Sciences"),
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

class SingaporeScholarships extends StatefulWidget {
  const SingaporeScholarships({super.key});

  @override
  State<SingaporeScholarships> createState() => _SingaporeScholarshipsState();
}

class _SingaporeScholarshipsState extends State<SingaporeScholarships> {

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
              child:  Column(
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
                        makerow( "1", "A*STAR Singapore International Graduate Award"),
                        makerow( "2", "NUS international scholarship"),
                        makerow( "3", "NTU graduate scholarship	"),
                        makerow( "4", "The INSEAD Fellowship"),
                        makerow( "5", "SMU PG ASEAN Scholarship"),
                        makerow( "6", "Lee Kong Chian Scholars' Programme"),

                        // makerow( "7", "Charles Wallace India Trust Scholarships"),
                      ],
                    ),
                  ),
                ],
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