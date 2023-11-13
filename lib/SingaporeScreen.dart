import 'package:flutter/material.dart';

class Singapore extends StatefulWidget {
  const Singapore({super.key});

  @override
  State<Singapore> createState() => _SingaporeState();
}

class _SingaporeState extends State<Singapore> {
  int i = 0;
  var l = [
    FF(image: "https://cdn.pixabay.com/photo/2017/09/01/13/56/university-2704306_1280.jpg", Text: "Colleges", text: "/SingaporeColleges"),
    FF(image: "https://media.istockphoto.com/id/1278630367/photo/grow-green-trees-on-money-in-energy-saving-light-bulbs-including-graduation-hats-with-ideas.webp?b=1&s=612x612&w=0&k=20&c=UTp8mUy55MyDTnvU31XndWI2l2Yjppz1QlY82EvOEjY=", Text: "Scholarships", text: "/SingaporeScholarships"),
    FF(image: "https://cdn.pixabay.com/photo/2016/01/16/14/56/buffer-1143485_640.jpg", Text: "Documents Required", text: "/SingaporeDocuments"),
    FF(image: "https://media.istockphoto.com/id/675281706/photo/speaking-on-different-lenguages.webp?b=1&s=612x612&w=0&k=20&c=hzGrK9n_ac7b4gFV19iTGpTKoqkoREryGgBLDn5al6M=", Text: "Languages to be Known", text: "/SingaporeLanguages"),
    FF(image: "https://cdn.pixabay.com/photo/2018/09/04/10/06/man-3653346_640.jpg", Text: "Entrance Exams", text: "/SIngaporeExams"),
    FF(image: "https://cdn.pixabay.com/photo/2014/02/13/07/28/security-265130_640.jpg", Text: "How safe is the country for the students ?", text: "/SIngaporeSafty"),];
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green.shade900,
        title: Text("Singapore",
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

class SingaporeColleges extends StatefulWidget {
  const SingaporeColleges({super.key});

  @override
  State<SingaporeColleges> createState() => _SingaporeCollegesState();
}

class _SingaporeCollegesState extends State<SingaporeColleges> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
      ),
    );
  }
}

class SingaporeDocuments extends StatefulWidget {
  const SingaporeDocuments({super.key});

  @override
  State<SingaporeDocuments> createState() => _SingaporeDocumentsState();
}

class _SingaporeDocumentsState extends State<SingaporeDocuments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}

class SingaporeExams extends StatefulWidget {
  const SingaporeExams({super.key});

  @override
  State<SingaporeExams> createState() => _SingaporeExamsState();
}

class _SingaporeExamsState extends State<SingaporeExams> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
    );
  }
}

class SingaporeLanguages extends StatefulWidget {
  const SingaporeLanguages({super.key});

  @override
  State<SingaporeLanguages> createState() => _SingaporeLanguagesState();
}

class _SingaporeLanguagesState extends State<SingaporeLanguages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
    );
  }
}

class SingaporeSafty extends StatefulWidget {
  const SingaporeSafty({super.key});

  @override
  State<SingaporeSafty> createState() => _SingaporeSaftyState();
}

class _SingaporeSaftyState extends State<SingaporeSafty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),
    );
  }
}

class SingaporeScholarships extends StatefulWidget {
  const SingaporeScholarships({super.key});

  @override
  State<SingaporeScholarships> createState() => _SingaporeScholarshipsState();
}

class _SingaporeScholarshipsState extends State<SingaporeScholarships> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
    );
  }
}
