import 'package:flutter/material.dart';

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
    FF(image: "https://cdn.pixabay.com/photo/2018/09/04/10/06/man-3653346_640.jpg", Text: "Entrance Exams", text: "/NewzealandExams"),];
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
  @override
  Widget build(BuildContext context) {
    double wi = MediaQuery.of(context).size.width;
    double hi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
      ),
    );
  }
}

class NewzealandDocuments extends StatefulWidget {
  const NewzealandDocuments({super.key});

  @override
  State<NewzealandDocuments> createState() => _NewzealandDocumentsState();
}

class _NewzealandDocumentsState extends State<NewzealandDocuments> {
  @override
  Widget build(BuildContext context) {
    double wi = MediaQuery.of(context).size.width;
    double hi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
      ),
    );
  }
}

class NewzealandExams extends StatefulWidget {
  const NewzealandExams({super.key});

  @override
  State<NewzealandExams> createState() => _NewzealandExamsState();
}

class _NewzealandExamsState extends State<NewzealandExams> {
  @override
  Widget build(BuildContext context) {
    double wi = MediaQuery.of(context).size.width;
    double hi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
    );
  }
}

class NewzealandScholarships extends StatefulWidget {
  const NewzealandScholarships({super.key});

  @override
  State<NewzealandScholarships> createState() => _NewzealandScholarshipsState();
}

class _NewzealandScholarshipsState extends State<NewzealandScholarships> {
  @override
  Widget build(BuildContext context) {
    double wi = MediaQuery.of(context).size.width;
    double hi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
    );
  }
}
