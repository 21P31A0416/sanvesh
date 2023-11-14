import 'package:flutter/material.dart';
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

class FranceDocuments extends StatefulWidget {
  const FranceDocuments({super.key});

  @override
  State<FranceDocuments> createState() => _FranceDocumentsState();
}

class _FranceDocumentsState extends State<FranceDocuments> {
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
    );
  }
}

class FranceExams extends StatefulWidget {
  const FranceExams({super.key});

  @override
  State<FranceExams> createState() => _FranceExamsState();
}

class _FranceExamsState extends State<FranceExams> {
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
      ),
    );
  }
}


class FranceScholarships extends StatefulWidget {
  const FranceScholarships({super.key});

  @override
  State<FranceScholarships> createState() => _FranceScholarshipsState();
}

class _FranceScholarshipsState extends State<FranceScholarships> {
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
      ),
    );
  }
}
