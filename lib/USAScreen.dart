import 'package:flutter/material.dart';

class USA extends StatefulWidget {
  const USA({super.key});

  @override
  State<USA> createState() => _USAState();
}

class _USAState extends State<USA> {
  int i = 0;
  var l = [
    FF(image: "https://cdn.pixabay.com/photo/2017/09/01/13/56/university-2704306_1280.jpg", Text: "Colleges", text: "/USAColleges"),
    FF(image: "https://media.istockphoto.com/id/1278630367/photo/grow-green-trees-on-money-in-energy-saving-light-bulbs-including-graduation-hats-with-ideas.webp?b=1&s=612x612&w=0&k=20&c=UTp8mUy55MyDTnvU31XndWI2l2Yjppz1QlY82EvOEjY=", Text: "Scholarships", text: "/USAScholarships"),
    FF(image: "https://cdn.pixabay.com/photo/2016/01/16/14/56/buffer-1143485_640.jpg", Text: "Documents Required", text: "/USADocuments"),
    FF(image: "https://cdn.pixabay.com/photo/2018/09/04/10/06/man-3653346_640.jpg", Text: "Entrance Exams", text: "/USAExams"),];
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        title: Text("USA",
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

class USAColleges extends StatefulWidget {
  const USAColleges({super.key});

  @override
  State<USAColleges> createState() => _USACollegesState();
}

class _USACollegesState extends State<USAColleges> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        flexibleSpace: FlexibleSpaceBar(

        ),
      ),
    );
  }
}

class USADocuments extends StatefulWidget {
  const USADocuments({super.key});

  @override
  State<USADocuments> createState() => _USADocumentsState();
}

class _USADocumentsState extends State<USADocuments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
    );
  }
}

class USAExams extends StatefulWidget {
  const USAExams({super.key});

  @override
  State<USAExams> createState() => _USAExamsState();
}

class _USAExamsState extends State<USAExams> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
    );
  }
}

class USAScholarships extends StatefulWidget {
  const USAScholarships({super.key});

  @override
  State<USAScholarships> createState() => _USAScholarshipsState();
}

class _USAScholarshipsState extends State<USAScholarships> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
    );
  }
}
