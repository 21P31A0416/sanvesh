import 'package:flutter/material.dart';
class RussiaScreen extends StatefulWidget {
  const RussiaScreen({super.key});

  @override
  State<RussiaScreen> createState() => _RussiaScreenState();
}

class _RussiaScreenState extends State<RussiaScreen> {
  int i = 0;
  var l = [
    FF(image: "https://cdn.pixabay.com/photo/2017/09/01/13/56/university-2704306_1280.jpg", Text: "Colleges", text: "/RussiaColleges"),
    FF(image: "https://media.istockphoto.com/id/1278630367/photo/grow-green-trees-on-money-in-energy-saving-light-bulbs-including-graduation-hats-with-ideas.webp?b=1&s=612x612&w=0&k=20&c=UTp8mUy55MyDTnvU31XndWI2l2Yjppz1QlY82EvOEjY=", Text: "Scholarships", text: "/RussiaScholarships"),
    FF(image: "https://cdn.pixabay.com/photo/2016/01/16/14/56/buffer-1143485_640.jpg", Text: "Documents Required", text: "/RussiaDocuments"),
    FF(image: "https://cdn.pixabay.com/photo/2018/09/04/10/06/man-3653346_640.jpg", Text: "Entrance Exams", text: "/RussiaExams"),];

  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        title: Text("Russia",
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
  }
      );
}

class RussiaColleges extends StatefulWidget {
  const RussiaColleges({super.key});

  @override
  State<RussiaColleges> createState() => _RussiaCollegesState();
}

class _RussiaCollegesState extends State<RussiaColleges> {
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(

  );
  }
}


class RussiaScholarships extends StatefulWidget {
  const RussiaScholarships({super.key});

  @override
  State<RussiaScholarships> createState() => _RussiaScholarshipsState();
}

class _RussiaScholarshipsState extends State<RussiaScholarships> {
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
      ),
    );
  }
}

class RussiaDocuments extends StatefulWidget {
  const RussiaDocuments({super.key});

  @override
  State<RussiaDocuments> createState() => _RussiaDocumentsState();
}

class _RussiaDocumentsState extends State<RussiaDocuments> {
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
      ),
    );
  }
}

class RussiaExams extends StatefulWidget {
  const RussiaExams({super.key});

  @override
  State<RussiaExams> createState() => _RussiaExamsState();
}

class _RussiaExamsState extends State<RussiaExams> {
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
    );
  }
}