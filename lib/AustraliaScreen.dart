import 'package:flutter/material.dart';
import 'dart:math';

class Australia extends StatefulWidget {
  const Australia({super.key});

  @override
  State<Australia> createState() => _AustraliaState();
}

class _AustraliaState extends State<Australia> {
  int i = 0;
  var l = [
    FF(image: "https://cdn.pixabay.com/photo/2017/09/01/13/56/university-2704306_1280.jpg", Text: "Colleges", text: "/AustraliaColleges"),
    FF(image: "https://media.istockphoto.com/id/1278630367/photo/grow-green-trees-on-money-in-energy-saving-light-bulbs-including-graduation-hats-with-ideas.webp?b=1&s=612x612&w=0&k=20&c=UTp8mUy55MyDTnvU31XndWI2l2Yjppz1QlY82EvOEjY=", Text: "Scholarships", text: "/AustraliaScholarships"),
    FF(image: "https://cdn.pixabay.com/photo/2016/01/16/14/56/buffer-1143485_640.jpg", Text: "Documents Required", text: "/AustraliaDocuments"),
    FF(image: "https://cdn.pixabay.com/photo/2018/09/04/10/06/man-3653346_640.jpg", Text: "Entrance Exams", text: "/AustraliaExam"),];
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        title: Text("Australia",
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
    required this.text,
  });
}

class AustraliaColleges extends StatefulWidget {
  const AustraliaColleges({super.key});

  @override
  State<AustraliaColleges> createState() => _AustraliaCollegesState();
}

class _AustraliaCollegesState extends State<AustraliaColleges> {
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

class AustraliaDocuments extends StatefulWidget {
  const AustraliaDocuments({super.key});

  @override
  State<AustraliaDocuments> createState() => _AustraliaDocumentsState();
}

class _AustraliaDocumentsState extends State<AustraliaDocuments> {
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

class AustraliaExam extends StatefulWidget {
  const AustraliaExam({super.key});

  @override
  State<AustraliaExam> createState() => _AustraliaExamState();
}

class _AustraliaExamState extends State<AustraliaExam> {
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
      ),
    );
  }
}

class AustraliaScholarships extends StatefulWidget {
  const AustraliaScholarships({super.key});

  @override
  State<AustraliaScholarships> createState() => _AustraliaScholarshipsState();
}

class _AustraliaScholarshipsState extends State<AustraliaScholarships> {
  bool isBack = true;
  double angle = 0;
  void _flip() {
    setState(() {
      angle = (angle + pi) % (2 * pi);
    });
  }
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
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
              child: Text("",
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
                                                padding: const EdgeInsets.only(top: 20),
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
                                                      Center(child: Text("Scholarshpis", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),),)
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

