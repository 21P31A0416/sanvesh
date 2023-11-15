import 'package:flutter/material.dart';
import 'dart:math';
class Japan extends StatefulWidget {
  const Japan({super.key});

  @override
  State<Japan> createState() => _JapanState();
}

class _JapanState extends State<Japan> {
  int i = 0;
  var l = [
    FF(image: "https://cdn.pixabay.com/photo/2017/09/01/13/56/university-2704306_1280.jpg", Text: "Colleges", text: "/JapanCollege"),
    FF(image: "https://media.istockphoto.com/id/1278630367/photo/grow-green-trees-on-money-in-energy-saving-light-bulbs-including-graduation-hats-with-ideas.webp?b=1&s=612x612&w=0&k=20&c=UTp8mUy55MyDTnvU31XndWI2l2Yjppz1QlY82EvOEjY=", Text: "Scholarships", text: "/JapanScholarships"),
    FF(image: "https://cdn.pixabay.com/photo/2016/01/16/14/56/buffer-1143485_640.jpg", Text: "Documents Required", text: "/JapanDocuments"),
    FF(image: "https://cdn.pixabay.com/photo/2018/09/04/10/06/man-3653346_640.jpg", Text: "Entrance Exams", text: "/JapanExams"),];
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        title: Text("Japan",
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
          child:  InkWell(
            onTap: (){
              Navigator.push(context,
              PageRouteBuilder(
                transitionsBuilder: (context, animation, animationTime, child){
                  return ScaleTransition(scale: animation,child: child,
                  alignment: Alignment.center,);
                },
                pageBuilder: (context, animation, animationTime){
                  if (l[i].text == "/JapanCollege") {
                    return JapanColleges();
                  } else if (l[i].text == "/JapanDocuments") {
                    return JapanDocuments();
                  } else if (l[i].text == "/JapanScholarships") {
                    return JapanScholarships();
                  } else if (l[i].text == "/JapanExams") {
                    return JapanExam();
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
                    title: Center(
                      child: Text(l[i].Text,
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                    ),
                ),
              ),
            ),
          ),
        );
      }),
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

class JapanColleges extends StatefulWidget {
  const JapanColleges({super.key});

  @override
  State<JapanColleges> createState() => _JapanCollegesState();
}

class _JapanCollegesState extends State<JapanColleges> {
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
                                                "Top Colleges in Japan",
                                                style: TextStyle(
                                                    fontSize: 30,
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
                                              0: FixedColumnWidth(150),
                                              1: FixedColumnWidth(200),
                                            },
                                            children: [
                                              TableRow(
                                                  children: [
                                                    Center(child: Text("QS Ranking 2024", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),),
                                                    Center(child: Text("University", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),),)
                                                  ]
                                              ),
                                              makerow("28", "The University of Tokyo",),
                                              makerow("46", "Kyoto University",),
                                              makerow("80", "Osaka University",),
                                              makerow("91", "Tokyo Institute of Technology (Tokyo Tech)	91",),
                                              makerow("113", "Tohoku University",),
                                              makerow("164", "Kyushu University",),
                                              makerow("176", "Nagoya University",),
                                              makerow("196", "Hokkaido University",),
                                              makerow("199", "Waseda University",),
                                              makerow("214", "Kyushu University"),
                                              makerow("355", "Nagoya University")
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
  TableRow makerow(british, university){
    return TableRow(
        children: [
          Center(child: Text("$british", style: TextStyle(fontSize: 20, color: Colors.white),),),
          Center(child: Text("$university", style: TextStyle(fontSize: 20, color: Colors.white),),)
        ]
    );
  }
}

class JapanDocuments extends StatefulWidget {
  const JapanDocuments({super.key});

  @override
  State<JapanDocuments> createState() => _JapanDocumentsState();
}

class _JapanDocumentsState extends State<JapanDocuments> {
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
        backgroundColor: Colors.red,
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
                                                "Documents Required to study in Japan",
                                                style: TextStyle(
                                                    fontSize: 30,
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
                                              0: FixedColumnWidth(50),
                                              1: FixedColumnWidth(300),
                                            },
                                            children: [
                                              TableRow(
                                                  children: [
                                                    Center(child: Text("S.no", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),),
                                                    Center(child: Text("Documents", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),),)
                                                  ]
                                              ),
                                              makerow("1", "•	Completed student visa application form",),
                                              makerow("2", "•	Valid passport.",),
                                              makerow("3", "Passport-size photos",),
                                              makerow("4", "Letter of sponsorship.",),
                                              makerow("5", "Letter of admission from an educational institution in Japan with details of the study program the student will be studying and its duration.",),
                                              makerow("6", "Proof of academic qualifications.",),
                                              makerow("7", "Proof of having enough funds for studies.",),
                                              makerow("8", "A letter of motivation from the student with a reason for travelling to Japan.",),
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
  TableRow makerow(british, university){
    return TableRow(
        children: [
          Center(child: Text("$british", style: TextStyle(fontSize: 20, color: Colors.white),),),
          Center(child: Text("$university", style: TextStyle(fontSize: 20, color: Colors.white),),)
        ]
    );
  }
}

class JapanExam extends StatefulWidget {
  const JapanExam({super.key});

  @override
  State<JapanExam> createState() => _JapanExamState();
}

class _JapanExamState extends State<JapanExam> {
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
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10,
              bottom: 10,
              right: 10,
              left: 10),
              child: Text("International students who wish to study in Japan must take the EJU which is required for admission to undergraduate programs at Japanese universities. The EJU is held in June and November every year in Japan and other countries. The exam has four subjects:",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black),
              ),
            ),
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
                                                  "Entrance Exams for Japan",
                                                  style: TextStyle(
                                                      fontSize: 30,
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
                                                0: FixedColumnWidth(150),
                                                1: FixedColumnWidth(200),
                                              },
                                              children: [
                                                TableRow(
                                                    children: [
                                                      Center(child: Text("S.no", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),),
                                                      Center(child: Text("Exams", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),),)
                                                    ]
                                                ),
                                                makerow("1", "Japanese as a foreign language",),
                                                makerow("2", "Science",),
                                                makerow("3", "Japan and the world",),
                                                makerow("4", "Mathematics",),
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
      ),
    );
  }
  TableRow makerow(british, university){
    return TableRow(
        children: [
          Center(child: Text("$british", style: TextStyle(fontSize: 20, color: Colors.white),),),
          Center(child: Text("$university", style: TextStyle(fontSize: 20, color: Colors.white),),)
        ]
    );
  }
}


class JapanScholarships extends StatefulWidget {
  const JapanScholarships({super.key});

  @override
  State<JapanScholarships> createState() => _JapanScholarshipsState();
}

class _JapanScholarshipsState extends State<JapanScholarships> {
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
        backgroundColor: Colors.cyan,
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
                                                "Scholarships in Japan",
                                                style: TextStyle(
                                                    fontSize: 30,
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
                                              0: FixedColumnWidth(50),
                                              1: FixedColumnWidth(300),
                                            },
                                            children: [
                                              TableRow(
                                                  children: [
                                                    Center(child: Text("S.no", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),),
                                                    Center(child: Text("Scholarships", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),),)
                                                  ]
                                              ),
                                              makerow("1", "Asian Development Bank-Japan Scholarship Programme.",),
                                              makerow("2", "Scholarships provided by JASSO.",),
                                              makerow("3", "Japanese Government Postgraduate Scholarships - MEXT Scholarship Japan",),
                                              makerow("4", "The Monbukagakusho Honors Scholarship for Privately-Financed International Students.",),
                                              makerow("5", "Japanese Grant Aid for Human Resource Development Scholarship.",),

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
  TableRow makerow(british, university){
    return TableRow(
        children: [
          Center(child: Text("$british", style: TextStyle(fontSize: 20, color: Colors.white),),),
          Center(child: Text("$university", style: TextStyle(fontSize: 20, color: Colors.white),),)
        ]
    );
  }
}
