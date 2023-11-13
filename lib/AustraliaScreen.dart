import 'package:flutter/material.dart';

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
    FF(image: "https://media.istockphoto.com/id/675281706/photo/speaking-on-different-lenguages.webp?b=1&s=612x612&w=0&k=20&c=hzGrK9n_ac7b4gFV19iTGpTKoqkoREryGgBLDn5al6M=", Text: "Languages to be Known", text: "/AustraliaLanguages"),
    FF(image: "https://cdn.pixabay.com/photo/2018/09/04/10/06/man-3653346_640.jpg", Text: "Entrance Exams", text: "/AustraliaExam"),
    FF(image: "https://cdn.pixabay.com/photo/2014/02/13/07/28/security-265130_640.jpg", Text: "How safe is the country for the students ?", text: "/AustraliaSafty"),];
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

class AustraliaLanguages extends StatefulWidget {
  const AustraliaLanguages({super.key});

  @override
  State<AustraliaLanguages> createState() => _AustraliaLanguagesState();
}

class _AustraliaLanguagesState extends State<AustraliaLanguages> {
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
      ),
    );
  }
}

class AustraliaSafty extends StatefulWidget {
  const AustraliaSafty({super.key});

  @override
  State<AustraliaSafty> createState() => _AustraliaSaftyState();
}

class _AustraliaSaftyState extends State<AustraliaSafty> {
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
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

