import 'package:flutter/material.dart';
import 'dart:math';
class France extends StatefulWidget {
  const France({super.key});

  @override
  State<France> createState() => _FranceState();
}

class _FranceState extends State<France> {
  int i = 0;
  var l = [
    FF(image: "https://cdn.pixabay.com/photo/2017/09/01/13/56/university-2704306_1280.jpg", Text: "Colleges", text: "/FranceColleges"),
    FF(image: "https://media.istockphoto.com/id/1278630367/photo/grow-green-trees-on-money-in-energy-saving-light-bulbs-including-graduation-hats-with-ideas.webp?b=1&s=612x612&w=0&k=20&c=UTp8mUy55MyDTnvU31XndWI2l2Yjppz1QlY82EvOEjY=", Text: "Scholarships", text: "/FranceScholarships"),
    FF(image: "https://cdn.pixabay.com/photo/2016/01/16/14/56/buffer-1143485_640.jpg", Text: "Documents Required", text: "/FranceDocuments"),
    FF(image: "https://cdn.pixabay.com/photo/2018/09/04/10/06/man-3653346_640.jpg", Text: "Entrance Exams",text: "/FranceExams"),];
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        title: Text("Netherlands",
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
                    title:TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, l[i].text);
                      },
                      child:  Text(l[i].Text,
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
  });
}

class FranceColleges extends StatefulWidget {
  const FranceColleges({super.key});

  @override
  State<FranceColleges> createState() => _FranceCollegesState();
}

class _FranceCollegesState extends State<FranceColleges> {
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
        backgroundColor: Colors.teal,
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
                                                "Top Colleges in France",
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
                                                    Center(child: Text("Global Rank", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),),
                                                    Center(child: Text("University", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),),)
                                                  ]
                                              ),
                                              makerow("44", "Universite PSL ",),
                                              makerow("49", "Polytechnique Institute of Paris",),
                                              makerow("72", "Sorbonne University",),
                                              makerow("86", "Paris-Saclay University",),
                                              makerow("130", "École Normale Supe rieure de Lyon",),
                                              makerow("245", "École Des Ponts ParisTech",),
                                              makerow("261", "Sciences Po",),
                                              makerow("262", "University of Paris",),
                                              makerow("290", "University of Paris 1 Panthe on-Sorbonne",),
                                              makerow("314", "Universite Grenoble Alpes")
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

class FranceDocuments extends StatefulWidget {
  const FranceDocuments({super.key});

  @override
  State<FranceDocuments> createState() => _FranceDocumentsState();
}

class _FranceDocumentsState extends State<FranceDocuments> {
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
                                                "Documents Required for Student Visa in France",
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
                                              makerow("1", "You have to fill the France Visa Application form after downloading it from Campus France website and take a printout of the form",),
                                              makerow("2", "2 photographs must be connected; the photograph ought to be of international ID design – a current entire face catch with a light foundation",),
                                              makerow("3", "Passport having at least 2 blank pages which is legitimate for no less than 3 months beyond return date and copies of your past visas are required.",),
                                              makerow("4", "They also ask for the Xerox of return ticket reservation and travel visa insurance affirmation of least 30,000 € scope inside France and the whole Schengen region",),
                                              makerow("5", "Health/Medical Insurance of €30,000 minimum",),
                                              makerow("6", "There is also a requirement of a cover letter expressing the reason for a visit to France and agenda, confirmation of convenience for your stay in France.",),
                                              makerow("7", "Evidence of your status i.e. marriage certificate, birth certificate etc.",),
                                              makerow("8", " Proof of adequate money related means for the time to remain.",),
                                              makerow("9", " Proof of adequate money related means for the time to remain. According to the European Commission determines you must be capable of bearing witness to the French Embassy or Consulate having the day by day cash measure of 120€ if you don’t have any proof of your accommodation. And if you have proof of your accommodation then this sum decreases to 65€/day",),
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

class FranceExams extends StatefulWidget {
  const FranceExams({super.key});

  @override
  State<FranceExams> createState() => _FranceExamsState();
}

class _FranceExamsState extends State<FranceExams> {
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
        backgroundColor: Colors.cyanAccent,
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
                                        children: [Text("Entrance Exams For France",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 20),
                                            child: Table(
                                              border: TableBorder.all(color: Colors.black),
                                              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                                              columnWidths: {
                                                0: FixedColumnWidth(100),
                                                1: FixedColumnWidth(250),
                                              },
                                              children: [
                                                TableRow(
                                                    children: [
                                                      Center(child: Text("S.no", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),),),
                                                      Center(child: Text("Exams", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),),)
                                                    ]
                                                ),
                                                makerow( "1", "IELTS"),
                                                makerow( "2", "TOEFL"),
                                                makerow( "3", "PTE"),
                                                makerow( "4", "TOEIC"),
                                                makerow( "5", "TOEIC"),
                                                makerow("6", "DALF"),
                                                makerow("7", "TCF"),
                                                makerow("8", "TEF"),
                                                makerow("9", " GMAT"),
                                                makerow("10", "GRE"),
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


class FranceScholarships extends StatefulWidget {
  const FranceScholarships({super.key});

  @override
  State<FranceScholarships> createState() => _FranceScholarshipsState();
}

class _FranceScholarshipsState extends State<FranceScholarships> {
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
        backgroundColor: Colors.yellow,
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
                                        children: [Text("Scholarships in France",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 20),
                                            child: Table(
                                              border: TableBorder.all(color: Colors.black),
                                              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                                              columnWidths: {
                                                0: FixedColumnWidth(150),
                                                1: FixedColumnWidth(250),
                                              },
                                              children: [
                                                TableRow(
                                                    children: [
                                                      Center(child: Text("S.no", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),),),
                                                      Center(child: Text("Exams", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),),)
                                                    ]
                                                ),
                                                makerow( "French Government Scholarships", "Charpak Scholarship Program"
                                                "Raman Charpak Fellowship"
                                                "Eiffel Scholarship"),
                                                makerow( "nstitutional Scholarships", "Emile-Boutmy Scholarship - Sciences Po"
                                                "EDHEC Business Schoo"
                                                "ISAE – MBDA Scholarship"
                                                "Rennes School of Business"
                                                "ENS Paris Saclay"
                                                "Universite Paris Saclay IDEX Scholarship"),
                                                makerow( "Co-financed/JointScholarships", " French Embassy – Neemrana Music Foundation Co-financed Scholarships for Music"
                                                "French Embassy – Krishna Kriti Foundation Co-financed Scholarships for Fine Arts"
                                                "Institut Mines-Telecom – French Embassy in India Scholarship"),
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
