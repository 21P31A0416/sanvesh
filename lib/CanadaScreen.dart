import 'package:flutter/material.dart';

class Canada extends StatefulWidget {
  const Canada({super.key});

  @override
  State<Canada> createState() => _CanadaState();
}

class _CanadaState extends State<Canada> {
  int i = 0;
  var l = [
    FF(image: "https://cdn.pixabay.com/photo/2017/09/01/13/56/university-2704306_1280.jpg", Text: "Colleges", text: "/CanadaColleges"),
    FF(image: "https://media.istockphoto.com/id/1278630367/photo/grow-green-trees-on-money-in-energy-saving-light-bulbs-including-graduation-hats-with-ideas.webp?b=1&s=612x612&w=0&k=20&c=UTp8mUy55MyDTnvU31XndWI2l2Yjppz1QlY82EvOEjY=", Text: "Scholarships", text: "/CanadaScholarships"),
    FF(image: "https://cdn.pixabay.com/photo/2016/01/16/14/56/buffer-1143485_640.jpg", Text: "Documents Required", text: "/CanadaDocuments"),
    FF(image: "https://cdn.pixabay.com/photo/2018/09/04/10/06/man-3653346_640.jpg", Text: "Entrance Exams", text: "/CanadaExams"),];
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        title: Text("Canada",
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

class CanadaColleges extends StatefulWidget {
  const CanadaColleges({super.key});

  @override
  State<CanadaColleges> createState() => _CanadaCollegesState();
}

class _CanadaCollegesState extends State<CanadaColleges> {
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

class CanadaDocuments extends StatefulWidget {
  const CanadaDocuments({super.key});

  @override
  State<CanadaDocuments> createState() => _CanadaDocumentsState();
}

class _CanadaDocumentsState extends State<CanadaDocuments> {
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.blueAccent,
    );
  }
}

class CanadaExams extends StatefulWidget {
  const CanadaExams({super.key});

  @override
  State<CanadaExams> createState() => _CanadaExamsState();
}

class _CanadaExamsState extends State<CanadaExams> {
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.deepPurple,
    );
  }
}


class CanadaScholarships extends StatefulWidget {
  const CanadaScholarships({super.key});

  @override
  State<CanadaScholarships> createState() => _CanadaScholarshipsState();
}

class _CanadaScholarshipsState extends State<CanadaScholarships> {
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.red,
    );
  }
}
