import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class UK extends StatefulWidget {
  const UK({super.key});

  @override
  State<UK> createState() => _UKState();
}

class _UKState extends State<UK> {
  int i = 0;
  var l = [
    FF(image: "https://cdn.pixabay.com/photo/2017/09/01/13/56/university-2704306_1280.jpg", Text: "Colleges", text: "/UKColleges"),
    FF(image: "https://media.istockphoto.com/id/1278630367/photo/grow-green-trees-on-money-in-energy-saving-light-bulbs-including-graduation-hats-with-ideas.webp?b=1&s=612x612&w=0&k=20&c=UTp8mUy55MyDTnvU31XndWI2l2Yjppz1QlY82EvOEjY=", Text: "Scholarships", text: "/UKScholarships"),
    FF(image: "https://cdn.pixabay.com/photo/2016/01/16/14/56/buffer-1143485_640.jpg", Text: "Documents Required", text: "/UKDocuments"),
    FF(image: "https://media.istockphoto.com/id/675281706/photo/speaking-on-different-lenguages.webp?b=1&s=612x612&w=0&k=20&c=hzGrK9n_ac7b4gFV19iTGpTKoqkoREryGgBLDn5al6M=", Text: "Languages to be Known", text: "/UKLanguages"),
    FF(image: "https://cdn.pixabay.com/photo/2018/09/04/10/06/man-3653346_640.jpg", Text: "Entrance Exams", text: "/UKExams"),
  ];
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        title: Text("UK",
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

class UKColleges extends StatefulWidget {
  const UKColleges({super.key});

  @override
  State<UKColleges> createState() => _UKCollegesState();
}

class _UKCollegesState extends State<UKColleges> {
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
        backgroundColor: Colors.green,
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
                              scrollDirection: Axis.horizontal,
                              child: Column(
                                  children: [
                                    Container(
                                      height: hi/10,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Text(
                                          "Top Colleges in London",
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
                                        0: FixedColumnWidth(100),
                                        1: FixedColumnWidth(100),
                                        2: FixedColumnWidth(155),
                                      },
                                      children: [
                                        TableRow(
                                            children: [
                                              Center(child: Text("British Rank", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Colors.white),),),
                                              Center(child: Text("Global Rank", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),),
                                              Center(child: Text("University", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),)
                                            ]
                                        ),
                                        makerow("1", "2", "Cambridge"),
                                        makerow("2", "3", "Oxford University"),
                                        makerow("3", "6", "Imperial College London"),
                                        makerow("4", "9", "University College London (UCL)"),
                                        makerow("5", "22", "The University of Edinburgh"),
                                        makerow("6", "32", "The University of Manchester"),
                                        makerow("7", "40", "King's College London"),
                                        makerow("8", "45", "London School of Economics and Political Science (LSE)"),
                                        makerow("9", "55", "University of Bristol"),
                                        makerow("10", "67", "The University of Warwick")
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
  TableRow makerow(british, global, university){
    return TableRow(
      children: [
        Center(child: Text("$british", style: TextStyle(fontSize: 18, color: Colors.white),),),
        Center(child: Text("$global",style: TextStyle(fontSize: 18, color: Colors.white),),),
        Center(child: Text("$university", style: TextStyle(fontSize: 18, color: Colors.white),),)
      ]
    );
  }
}
class UKDocuments extends StatefulWidget {
  const UKDocuments({super.key});

  @override
  State<UKDocuments> createState() => _UKDocumentsState();
}

class _UKDocumentsState extends State<UKDocuments> {
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
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
                        makerow( "1", "Passport"),
                        makerow( "2", "Marksheets and Certificates of Graduation"),
                        makerow( "3", "Letters of Recommendation (LOR)"),
                        makerow( "4", "Statement of Purpose (SOP)"),
                        makerow( "5", "Scores on the English Proficiency Test"),
                        makerow( "6", "Scorecards for Entrance Exams"),
                        makerow( "7", "Participation Certificates & Work Experience Letters"),
                        makerow( "8", "Curriculum Vitae/Resume"),
                        makerow( "9", "Evidence of Financial Capacity"),
                        makerow( "10", "Proposal for Research"),
                        makerow("11", "Portfolio")
                      ],
                    ),
                  )
                ],
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

class UKExams extends StatefulWidget {
  const UKExams({super.key});

  @override
  State<UKExams> createState() => _UKExamsState();
}

class _UKExamsState extends State<UKExams> {
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
      ),
    );
  }
}

class UKLanguages extends StatefulWidget {
  const UKLanguages({super.key});

  @override
  State<UKLanguages> createState() => _UKLanguagesState();
}

class _UKLanguagesState extends State<UKLanguages> {
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10,
              left: 10,
              right: 10,
              bottom: 10),
              child: Container(
                height: hi,
                width: wi,
                child: Column(
                  children: [
                    AnimatedTextKit(animatedTexts: [
                      TyperAnimatedText("English",
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.purple,
                      ),
                      textAlign: TextAlign.center,
                      speed: Duration(milliseconds: 500))
                    ],),
                    Text("English is spoken by over 95 per cent of the population in the UK, so you'll be surrounded by the language here, learning faster and using your language skills in real-life settings. When you learn English in the UK, you will learn about all the different accents, phrases and vocabulary.English Proficiency Tests Required to Study in UK for Indian Students. The UK has excellent standards for the English language. If you wish to study there, you need good English proficiency to understand and respond to advanced-level courses.",style: TextStyle(fontSize: 25,),
                    textAlign: TextAlign.justify,),
                  ],
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}


class UKScholarships extends StatefulWidget {
  const UKScholarships({super.key});

  @override
  State<UKScholarships> createState() => _UKScholarshipsState();
}

class _UKScholarshipsState extends State<UKScholarships> {
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),

    );
  }
}
