import 'package:flutter/material.dart';
import 'dart:math';

class Norway extends StatefulWidget {
  const Norway({super.key});

  @override
  State<Norway> createState() => _NorwayState();
}

class _NorwayState extends State<Norway> {

  int i = 0;
  var l = [
    FF(image: "https://cdn.pixabay.com/photo/2017/09/01/13/56/university-2704306_1280.jpg", Text: "Colleges", text: "/NorwayColleges"),
    FF(image: "https://media.istockphoto.com/id/1278630367/photo/grow-green-trees-on-money-in-energy-saving-light-bulbs-including-graduation-hats-with-ideas.webp?b=1&s=612x612&w=0&k=20&c=UTp8mUy55MyDTnvU31XndWI2l2Yjppz1QlY82EvOEjY=", Text: "Scholarships", text: "/NorwayScholarships"),
    FF(image: "https://cdn.pixabay.com/photo/2016/01/16/14/56/buffer-1143485_640.jpg", Text: "Documents Required", text: "/NorwayDocuments"),
    FF(image: "https://cdn.pixabay.com/photo/2018/09/04/10/06/man-3653346_640.jpg", Text: "Exams", text: "/NorwayExams"),];
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        title: Text("Norway",
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
  });
}

class NorwayColleges extends StatefulWidget {
  const NorwayColleges({super.key});

  @override
  State<NorwayColleges> createState() => _NorwayCollegesState();
}

class _NorwayCollegesState extends State<NorwayColleges> {
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
                                              makerow( "1", "University of Bergen"),
                                              makerow( "2", "BI Norwegian Business School"),
                                              makerow( "3", "Kristiania University"),
                                              makerow( "4", "Molde University College"),
                                              makerow( "5", "Norwegian University of Science and Technology"),

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

class NorwayDocuments extends StatefulWidget {
  const NorwayDocuments({super.key});

  @override
  State<NorwayDocuments> createState() => _NorwayDocumentsState();
}

class _NorwayDocumentsState extends State<NorwayDocuments> {
  bool isBack = true;
  double angle = 0;
  void _flip() {
    setState(() {
      angle = (angle + pi) % (2 * pi);
    });
  }
  @override
  Widget build(BuildContext context) {
    double wi = MediaQuery.of(context).size.width;
    double hi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
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
                                      children: [Text("Documents Required",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
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
                                                    Center(child: Text("List of documents", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),),)
                                                  ]
                                              ),
                                              makerow( "1", "Health insurance"),
                                              makerow( "2", "Proof of financial ability"),
                                              makerow( "3", "Birth certificate"),
                                              makerow( "4", "Receipt of the fees that you have paid for the admission"),
                                              makerow( "5", "A valid passport"),
                                              makerow( "6", "2 passport-sized photographs"),
                                              makerow( "7", "Statement of purpose"),
                                              makerow( "8", "Any evidence that proves you will leave Norway after course completion"),

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
}

class NorwayExams extends StatefulWidget {
  const NorwayExams({super.key});

  @override
  State<NorwayExams> createState() => _NorwayExamsState();
}

class _NorwayExamsState extends State<NorwayExams> {
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
        backgroundColor: Colors.black,
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
                                                      Center(child: Text("Language Exams", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),),)
                                                    ]
                                                ),
                                                makerow( "1", "PTE Academic"),
                                                makerow( "2", "IELTS Academic"),
                                                makerow( "3", "TOEFL iBT"),
                                                makerow( "4", "Duolingo"),
                                                makerow( "5", "C1 Advanced"),



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
}


class NorwayScholarships extends StatefulWidget {
  const NorwayScholarships({super.key});

  @override
  State<NorwayScholarships> createState() => _NorwayScholarshipsState();
}

class _NorwayScholarshipsState extends State<NorwayScholarships> {
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
                                    child: SingleChildScrollView(scrollDirection: Axis.vertical,
                                      child: Column(
                                        children: [Text("Scholarships In Norway",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
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
                                                      Center(child: Text("Scholarships", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),),)
                                                    ]
                                                ),
                                                makerow( "1", "SCAR Fellowships In Antarctic Research"),
                                                makerow( "2", "Microsoft Research PhD Fellowship"),
                                                makerow( "3", "The ERASMUS+ Grant"),
                                                makerow( "4", "Mobility Grant for Norewgian Language and Literature"),
                                                makerow( "5", "A. Wilhelmsen Foundation Scholarship Programme"),
                                                makerow( "6", "BI Presidential Scholarship"),
                                                makerow( "7", "NTNU Scholarship"),
                                                makerow( "8", "Scholarship Grant for Undergraduate Students"),
                                                makerow( "9", "The \$2000 “Privacy Matter” College Scholarship"),
                                                makerow( "10", "CLIFF-GRAD Scholarship (PhD)")


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