import 'package:flutter/material.dart';
import 'dart:math';

class NewZealand extends StatefulWidget {
  const NewZealand({super.key});

  @override
  State<NewZealand> createState() => _NewZealandState();
}

class _NewZealandState extends State<NewZealand> {
  int i = 0;
  var l = [
    FF(image: "https://cdn.pixabay.com/photo/2017/09/01/13/56/university-2704306_1280.jpg", Text: "Colleges", text: "/NewzealandColleges"),
    FF(image: "https://media.istockphoto.com/id/1278630367/photo/grow-green-trees-on-money-in-energy-saving-light-bulbs-including-graduation-hats-with-ideas.webp?b=1&s=612x612&w=0&k=20&c=UTp8mUy55MyDTnvU31XndWI2l2Yjppz1QlY82EvOEjY=", Text: "Scholarships",text: "/NewzealandScholarships"),
    FF(image: "https://cdn.pixabay.com/photo/2016/01/16/14/56/buffer-1143485_640.jpg", Text: "Documents Required", text: "/NewzealandDocuments"),
    FF(image: "https://cdn.pixabay.com/photo/2018/09/04/10/06/man-3653346_640.jpg", Text: "Exams", text: "/NewzealandExams"),];
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        title: Text("NewZealand",
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

class NewzealandColleges extends StatefulWidget {
  const NewzealandColleges({super.key});

  @override
  State<NewzealandColleges> createState() => _NewzealandCollegesState();
}

class _NewzealandCollegesState extends State<NewzealandColleges> {
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
                                child:Container(
                                    child: Column(
                                      children: [Text("Top Colleges In NewZealand",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
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
                                              makerow( "1", "Auckland University of Technology"),
                                              makerow( "2", "Massey University"),
                                              makerow( "3", "University of Otago"),
                                              makerow( "4", "Lincoln University"),
                                              makerow( "5", "Victoria University of Wellington"),
                                              makerow( "6", "The University of Auckland"),
                                              makerow( "7", "University of Canterbury"),
                                              makerow( "8", "The University of Waikato"),
                                              makerow( "9", "University of Waikato")

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

class NewzealandDocuments extends StatefulWidget {
  const NewzealandDocuments({super.key});

  @override
  State<NewzealandDocuments> createState() => _NewzealandDocumentsState();
}

class _NewzealandDocumentsState extends State<NewzealandDocuments> {
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
      appBar: AppBar(
        backgroundColor: Colors.purple,
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
                                      children: [Text("Required Documents",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20),
                                          child: Table(
                                            border: TableBorder.all(color: Colors.black),
                                            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                                            columnWidths: {
                                              0: FixedColumnWidth(50),
                                              1: FixedColumnWidth(200),
                                            },
                                            children: [
                                              TableRow(
                                                  children: [
                                                    Center(child: Text("S.no", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),),
                                                    Center(child: Text("List of Documents", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),),)
                                                  ]
                                              ),
                                              makerow( "1", "All official academic Transcripts and diplomas"),
                                              makerow( "2", "Passport"),
                                              makerow( "3", "Visa"),
                                              makerow( "4", "Updated CV/Resume"),
                                              makerow( "5", "English Language Proficiency Test Scores"),
                                              makerow( "6", "Letter of Recommendations"),
                                              makerow( "7", "Statement of Purpose"),
                                              makerow( "8", "Financial Evidence"),
                                              makerow( "9", "Portfolio"),

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

class NewzealandExams extends StatefulWidget {
  const NewzealandExams({super.key});

  @override
  State<NewzealandExams> createState() => _NewzealandExamsState();
}

class _NewzealandExamsState extends State<NewzealandExams> {
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
      appBar: AppBar(
        backgroundColor: Colors.blue,
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
                                      children: [Text("Exams",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20),
                                          child: Table(
                                            border: TableBorder.all(color: Colors.black),
                                            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                                            columnWidths: {
                                              0: FixedColumnWidth(50),
                                              1: FixedColumnWidth(200),
                                            },
                                            children: [
                                              TableRow(
                                                  children: [
                                                    Center(child: Text("S.no", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),),
                                                    Center(child: Text("Exam", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),),)
                                                  ]
                                              ),
                                              makerow( "1", "TOEFL"),
                                              makerow( "2", "IELTS"),
                                              makerow( "3", "PTE"),
                                              makerow( "4", "GRE"),
                                              makerow( "5", "GMAT"),
                                              makerow( "6", "UCAT")


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


class NewzealandScholarships extends StatefulWidget {
  const NewzealandScholarships({super.key});

  @override
  State<NewzealandScholarships> createState() => _NewzealandScholarshipsState();
}

class _NewzealandScholarshipsState extends State<NewzealandScholarships> {
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
      appBar: AppBar(
        backgroundColor: Colors.blue,
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
                                    child: SingleChildScrollView(scrollDirection: Axis.vertical,
                                      child: Column(
                                        children: [Text("Scholarships In NewZealand",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 20),
                                            child: Table(
                                              border: TableBorder.all(color: Colors.black),
                                              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                                              columnWidths: {
                                                0: FixedColumnWidth(50),
                                                1: FixedColumnWidth(250),
                                              },
                                              children: [
                                                TableRow(
                                                    children: [
                                                      Center(child: Text("S.no", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),),
                                                      Center(child: Text("scholarships", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),),)
                                                    ]
                                                ),
                                                makerow( "1", "New Zealand Excellence Awards (NZEA)"),
                                                makerow( "2", "New Zealand International Doctoral Research Scholarships (NZIDRS)"),
                                                makerow( "3", "Lincoln University Academic Scholarships"),
                                                makerow( "4", "New Zealand International Undergraduate Fees Scholarship"),
                                                makerow( "5", "International Development (MIntDev) at Massey University"),
                                                makerow( "6", "UC International First-Year Scholarships"),
                                                makerow( "7", "Climate Change Science and Policy (MCCSP) at Victoria University Wellington"),
                                                makerow( "8", "ADB Scholarships at University of Auckland"),
                                                makerow( "9", "Public Health (MPH) at the University of Auckland"),
                                                makerow( "10", "University of Otago International Research Masters Scholarships"),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
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