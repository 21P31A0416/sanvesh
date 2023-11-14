import 'package:flutter/material.dart';
class Denmark extends StatefulWidget {
  const Denmark({super.key});

  @override
  State<Denmark> createState() => _DenmarkState();
}

class _DenmarkState extends State<Denmark> {
  int i = 0;
  var l = [
    FF(image: "https://cdn.pixabay.com/photo/2017/09/01/13/56/university-2704306_1280.jpg", Text: "Colleges", text: "/DenmarkColleges"),
    FF(image: "https://media.istockphoto.com/id/1278630367/photo/grow-green-trees-on-money-in-energy-saving-light-bulbs-including-graduation-hats-with-ideas.webp?b=1&s=612x612&w=0&k=20&c=UTp8mUy55MyDTnvU31XndWI2l2Yjppz1QlY82EvOEjY=", Text: "Scholarships", text: "/DenmarkScholarships"),
    FF(image: "https://cdn.pixabay.com/photo/2016/01/16/14/56/buffer-1143485_640.jpg", Text: "Documents Required", text: "/DenmarkDocuments"),
    FF(image: "https://cdn.pixabay.com/photo/2018/09/04/10/06/man-3653346_640.jpg", Text: "Entrance Exams", text: "/DenmarkExams"),];
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        title: Text("Denmark",
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
  });
}

class DenmarkColleges extends StatefulWidget {
  const DenmarkColleges({super.key});

  @override
  State<DenmarkColleges> createState() => _DenmarkCollegesState();
}

class _DenmarkCollegesState extends State<DenmarkColleges> {
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
      ),
    );
  }
}

class DenmarkDocuments extends StatefulWidget {
  const DenmarkDocuments({super.key});

  @override
  State<DenmarkDocuments> createState() => _DenmarkDocumentsState();
}

class _DenmarkDocumentsState extends State<DenmarkDocuments> {
  @override
  Widget build(BuildContext context) {
    double wi = MediaQuery.of(context).size.width;
    double hi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
      ),
    );
  }
}

class DenmarkExams extends StatefulWidget {
  const DenmarkExams({super.key});

  @override
  State<DenmarkExams> createState() => _DenmarkExamsState();
}

class _DenmarkExamsState extends State<DenmarkExams> {
  @override
  Widget build(BuildContext context) {
    double wi = MediaQuery.of(context).size.width;
    double hi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
      ),
    );
  }
}

class DenmarkScholarships extends StatefulWidget {
  const DenmarkScholarships({super.key});

  @override
  State<DenmarkScholarships> createState() => _DenmarkScholarshipsState();
}

class _DenmarkScholarshipsState extends State<DenmarkScholarships> {
  @override
  Widget build(BuildContext context) {
    double wi = MediaQuery.of(context).size.width;
    double hi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
    );
  }
}
