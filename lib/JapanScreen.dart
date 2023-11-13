import 'package:flutter/material.dart';
class Japan extends StatefulWidget {
  const Japan({super.key});

  @override
  State<Japan> createState() => _JapanState();
}

class _JapanState extends State<Japan> {
  int i = 0;
  var l = [
    FF(image: "https://cdn.pixabay.com/photo/2017/09/01/13/56/university-2704306_1280.jpg", Text: "Colleges", text: "/JapanCollege"),
    FF(image: "https://media.istockphoto.com/id/1278630367/photo/grow-green-trees-on-money-in-energy-saving-light-bulbs-including-graduation-hats-with-ideas.webp?b=1&s=612x612&w=0&k=20&c=UTp8mUy55MyDTnvU31XndWI2l2Yjppz1QlY82EvOEjY=", Text: "Scholarships", text: "/JapanScholarships"),
    FF(image: "https://cdn.pixabay.com/photo/2016/01/16/14/56/buffer-1143485_640.jpg", Text: "Documents Required", text: "/JapanDocuments"),
    FF(image: "https://media.istockphoto.com/id/675281706/photo/speaking-on-different-lenguages.webp?b=1&s=612x612&w=0&k=20&c=hzGrK9n_ac7b4gFV19iTGpTKoqkoREryGgBLDn5al6M=", Text: "Languages to be Known", text: "/JapanLanguages"),
    FF(image: "https://cdn.pixabay.com/photo/2018/09/04/10/06/man-3653346_640.jpg", Text: "Entrance Exams", text: "/JapanExams"),
    FF(image: "https://cdn.pixabay.com/photo/2014/02/13/07/28/security-265130_640.jpg", Text: "How safe is the country for the students ?", text: "/JapanSafty"),];
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        title: Text("Japan",
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
          child:  Container(
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
      }),
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

class JapanColleges extends StatefulWidget {
  const JapanColleges({super.key});

  @override
  State<JapanColleges> createState() => _JapanCollegesState();
}

class _JapanCollegesState extends State<JapanColleges> {
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
    );
  }
}

class JapanDocuments extends StatefulWidget {
  const JapanDocuments({super.key});

  @override
  State<JapanDocuments> createState() => _JapanDocumentsState();
}

class _JapanDocumentsState extends State<JapanDocuments> {
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

class JapanExam extends StatefulWidget {
  const JapanExam({super.key});

  @override
  State<JapanExam> createState() => _JapanExamState();
}

class _JapanExamState extends State<JapanExam> {
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

class JapanLanguages extends StatefulWidget {
  const JapanLanguages({super.key});

  @override
  State<JapanLanguages> createState() => _JapanLanguagesState();
}

class _JapanLanguagesState extends State<JapanLanguages> {
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

class JapanSafty extends StatefulWidget {
  const JapanSafty({super.key});

  @override
  State<JapanSafty> createState() => _JapanSaftyState();
}

class _JapanSaftyState extends State<JapanSafty> {
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

class JapanScholarships extends StatefulWidget {
  const JapanScholarships({super.key});

  @override
  State<JapanScholarships> createState() => _JapanScholarshipsState();
}

class _JapanScholarshipsState extends State<JapanScholarships> {
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
