import 'package:flutter/material.dart';
class Netherlands extends StatefulWidget {
  const Netherlands({super.key});

  @override
  State<Netherlands> createState() => _NetherlandsState();
}

class _NetherlandsState extends State<Netherlands> {
  int i = 0;
  var l = [
    FF(image: "https://cdn.pixabay.com/photo/2017/09/01/13/56/university-2704306_1280.jpg", Text: "Colleges", text: "/NetherlandsColleges"),
    FF(image: "https://media.istockphoto.com/id/1278630367/photo/grow-green-trees-on-money-in-energy-saving-light-bulbs-including-graduation-hats-with-ideas.webp?b=1&s=612x612&w=0&k=20&c=UTp8mUy55MyDTnvU31XndWI2l2Yjppz1QlY82EvOEjY=", Text: "Scholarships", text: "/NetherlandsScholarships"),
    FF(image: "https://cdn.pixabay.com/photo/2016/01/16/14/56/buffer-1143485_640.jpg", Text: "Documents Required", text: "/NetherlandsDocuments"),
    FF(image: "https://media.istockphoto.com/id/675281706/photo/speaking-on-different-lenguages.webp?b=1&s=612x612&w=0&k=20&c=hzGrK9n_ac7b4gFV19iTGpTKoqkoREryGgBLDn5al6M=", Text: "Languages to be Known", text: "/NetherlandsLanguages"),
    FF(image: "https://cdn.pixabay.com/photo/2018/09/04/10/06/man-3653346_640.jpg", Text: "Entrance Exams", text: "/NetherlandsExams"),
    FF(image: "https://cdn.pixabay.com/photo/2014/02/13/07/28/security-265130_640.jpg", Text: "How safe is the country for the students ?", text: "/NetherlandsSafty"),];
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

class NetherlandsColleges extends StatefulWidget {
  const NetherlandsColleges({super.key});

  @override
  State<NetherlandsColleges> createState() => _NetherlandsCollegesState();
}

class _NetherlandsCollegesState extends State<NetherlandsColleges> {
  @override
  Widget build(BuildContext context) {
    double wi = MediaQuery.of(context).size.width;
    double hi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}


class NetherlandsScholarships extends StatefulWidget {
  const NetherlandsScholarships({super.key});

  @override
  State<NetherlandsScholarships> createState() => _NetherlandsScholarshipsState();
}

class _NetherlandsScholarshipsState extends State<NetherlandsScholarships> {
  @override
  Widget build(BuildContext context) {
    double wi = MediaQuery.of(context).size.width;
    double hi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
    );
  }
}

class NetherlandsDocuments extends StatefulWidget {
  const NetherlandsDocuments({super.key});

  @override
  State<NetherlandsDocuments> createState() => _NetherlandsDocumentsState();
}

class _NetherlandsDocumentsState extends State<NetherlandsDocuments> {
  @override
  Widget build(BuildContext context) {
    double wi = MediaQuery.of(context).size.width;
    double hi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
    );
  }
}

class NetherlandsExams extends StatefulWidget {
  const NetherlandsExams({super.key});

  @override
  State<NetherlandsExams> createState() => _NetherlandsExamsState();
}

class _NetherlandsExamsState extends State<NetherlandsExams> {
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

class NetherlandsLanguages extends StatefulWidget {
  const NetherlandsLanguages({super.key});

  @override
  State<NetherlandsLanguages> createState() => _NetherlandsLanguagesState();
}

class _NetherlandsLanguagesState extends State<NetherlandsLanguages> {
  @override
  Widget build(BuildContext context) {
    double wi = MediaQuery.of(context).size.width;
    double hi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
      ),
    );
  }
}

class NetherlandsSafty extends StatefulWidget {
  const NetherlandsSafty({super.key});

  @override
  State<NetherlandsSafty> createState() => _NetherlandsSaftyState();
}

class _NetherlandsSaftyState extends State<NetherlandsSafty> {
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
