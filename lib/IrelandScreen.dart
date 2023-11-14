import 'package:flutter/material.dart';
import 'dart:math';
class Ireland extends StatefulWidget {
  const Ireland({super.key});

  @override
  State<Ireland> createState() => _IrelandState();
}

class _IrelandState extends State<Ireland> {

  int i = 0;
  var l = [
    FF(image: "https://cdn.pixabay.com/photo/2017/09/01/13/56/university-2704306_1280.jpg", Text: "Colleges", text: "/IrelandColleges"),
    FF(image: "https://media.istockphoto.com/id/1278630367/photo/grow-green-trees-on-money-in-energy-saving-light-bulbs-including-graduation-hats-with-ideas.webp?b=1&s=612x612&w=0&k=20&c=UTp8mUy55MyDTnvU31XndWI2l2Yjppz1QlY82EvOEjY=", Text: "Scholarships", text: "/IrelandScholarships"),
    FF(image: "https://cdn.pixabay.com/photo/2016/01/16/14/56/buffer-1143485_640.jpg", Text: "Documents Required", text: "/IrelandDocuments"),
    FF(image: "https://cdn.pixabay.com/photo/2018/09/04/10/06/man-3653346_640.jpg", Text: "Entrance Exams", text: "/IrelandExams"),
  ];
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        title: Text("Ireland",
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
  });
}

class IrelandColleges extends StatefulWidget {
  const IrelandColleges({super.key});

  @override
  State<IrelandColleges> createState() => _IrelandCollegesState();
}

class _IrelandCollegesState extends State<IrelandColleges> {
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
                                      children: [Text("Top Colleges In Norway",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
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
                                                    Center(child: Text("Name of the Colleges", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),),)
                                                  ]
                                              ),
                                              makerow( "1", "Trinity College Dublin The University of Dublin"),
                                              makerow( "2", "University College Dublin"),
                                              makerow( "3", "Royal College of Surgeons in Ireland (RCSI)"),
                                              makerow( "4", "University College Cork"),
                                              makerow( "5", "National University of Ireland, Galway"),
                                              makerow( "6", "Dublin City University"),
                                              makerow( "7", "Maynooth University"),
                                              makerow( "8", "University of Limerick"),
                                              makerow( "9", "Technological University of Dublin"),],
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

class IrelandDocuments extends StatefulWidget {
  const IrelandDocuments({super.key});

  @override
  State<IrelandDocuments> createState() => _IrelandDocumentsState();
}

class _IrelandDocumentsState extends State<IrelandDocuments> {
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
                                child:Container(
                                    child: SingleChildScrollView(scrollDirection: Axis.vertical,
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
                                                      Center(child: Text("Documents", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),),)
                                                    ]
                                                ),
                                                makerow( "1", "Visa Application Form"),
                                                makerow( "2", "Passport"),
                                                makerow( "3", " Letter of Acceptance"),
                                                makerow( "4", "Proof of Sufficient Funds"),
                                                makerow( "5", "Medical Insurance"),
                                                makerow( "6", " English Language Proficiency"),
                                                makerow( "7", " Academic Documents"),
                                                makerow( "8", " Passport-sized Photographs"),
                                                makerow( "9", " Statement of Purpose"),
                                                makerow( "10", " Police Clearance Certificate"),
                                                makerow( "11", " Proof of Tuition Fees Payment"),
                                                makerow( "12", " Proof of Accommodation"),],
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

class IrelandExams extends StatefulWidget {
  const IrelandExams({super.key});

  @override
  State<IrelandExams> createState() => _IrelandExamsState();
}

class _IrelandExamsState extends State<IrelandExams> {
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
        backgroundColor: Colors.brown,
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
                                        children: [Text("Entrance Exams For Norway",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
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
                                                makerow( "1", "PTE Academic"),
                                                makerow( "2", "IELTS Academic"),
                                                makerow( "3", "TOEFL iBT"),
                                                makerow( "4", "CAE"),
                                                makerow( "5", "GRE"),
                                                makerow( "6", "GMAT"),



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
class irelandScholarships extends StatefulWidget {
  const irelandScholarships({super.key});

  @override
  State<irelandScholarships> createState() => _irelandScholarshipsState();
}

class _irelandScholarshipsState extends State<irelandScholarships> {
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
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(
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
                                        children: [Text("Scholarships In Ireland",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
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
                                                      Center(child: Text("Scholarships", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),),)
                                                    ]
                                                ),
                                                makerow( "1", "Government of Ireland (GOI) Scholarships"),
                                                makerow( "2", "Ireland Fellows Program"),
                                                makerow( "3", "Trinity College Dublin Scholarships"),
                                                makerow( "4", "University College Dublin Global Excellence Graduate Scholarship"),
                                                makerow( "5", "National College of Ireland Scholarships"),
                                                makerow( "6", "Dublin City University International Merit Scholarships"),
                                                makerow( "7", "Maynooth University International Scholarship"),
                                                makerow( "8", "Cork Institute of Technology International Student Scholarships"),],
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