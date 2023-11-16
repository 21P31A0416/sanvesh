import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:sanvesh/AustraliaScreen.dart';
import 'package:sanvesh/CanadaScreen.dart';
import 'package:sanvesh/ChinaScreen.dart';
import 'package:sanvesh/FranceScreen.dart';
import 'package:sanvesh/GermanyScreen.dart';
import 'package:sanvesh/SplashScreen.dart';
import 'JapanScreen.dart';
import 'package:sanvesh/NewZealandScreen.dart';
import "ItalyScreen.dart";
import 'SingaporeScreen.dart';
import 'package:sanvesh/UKScreen.dart';
import 'package:sanvesh/USAScreen.dart';
import 'NorwayScreen.dart';
import 'IrelandScreen.dart';
import 'NetherlandsScreen.dart';
import 'Denmark.dart';
import 'RussiaScreen.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/":(context)=>SplashScreen(),
        "/JapanScreen":(context)=>Japan(),
        "/RussiaScreen":(context)=>RussiaScreen(),
        "/USAScreen":(context)=>USA(),
        "/GermanyScreen":(context)=>Germany(),
        "/UKScreen":(context)=>UK(),
        "/ItalyScreen":(context)=>ItalyScreen(),
        "/SingaporeScreen":(context)=>Singapore(),
        "/CanadaScreen":(context)=>Canada(),
        "/NewZealandScreen":(context)=>NewZealand(),
        "/ChinaScreen":(context)=>China(),
        "/AustraliaScreen":(context)=>Australia(),
        "/NorwayScreen":(context)=>Norway(),
        "/IrelandScreen":(context)=>Ireland(),
        "/FranceScreen":(context)=>France(),
        "/NetherlandsScreen":(context)=>Netherlands(),
        "/Denmark":(context)=>Denmark(),
        "/JapanCollege":(context)=>JapanColleges(),
        "/JapanDocuments":(context)=>JapanDocuments(),
        "/JapanScholarships":(context)=>JapanScholarships(),
        "/JapanExams":(context)=>JapanExam(),
        "/AustraliaColleges":(context)=>AustraliaColleges(),
        "/AustraliaScholarships":(context)=>AustraliaScholarships(),
        "/AustraliaDocuments":(context)=>AustraliaDocuments(),
        "/AustraliaExam":(context)=>AustraliaExam(),
        "/CanadaColleges":(context)=>CanadaColleges(),
        "/CanadaDocuments":(context)=>CanadaDocuments(),
        "/CanadaExams":(context)=>CanadaExams(),
        "/CanadaScholarships":(context)=>CanadaScholarships(),
        "/USAColleges":(context)=>USAColleges(),
        "/USAScholarships":(context)=>USAScholarships(),
        "/USADocuments":(context)=>USADocuments(),
        "/USAExams":(context)=>USAExams(),
        "/ChinaColleges":(context)=>ChinaColleges(),
        "/ChinaDocuments":(context)=>ChinaDocuments(),
        "/ChinaExams":(context)=>ChinaExams(),
        "/ChinaScholarships":(context)=>ChinaScholarships(),
        "/DenmarkColleges":(context)=>DenmarkColleges(),
        "/DenmarkScholarships":(context)=>DenmarkScholarships(),
        "/DenmarkDocuments":(context)=>DenmarkDocuments(),
        "/DenmarkExams":(context)=>DenmarkExams(),
        "/NetherlandsColleges":(context)=>NetherlandsColleges(),
        "/NetherlandsScholarships":(context)=>NetherlandsScholarships(),
        "/NetherlandsDocuments":(context)=>NetherlandsDocuments(),
        "/NetherlandsExams":(context)=>NetherlandsExams(),
        "/SingaporeColleges":(context)=>SingaporeColleges(),
        "/SingaporeScholarships":(context)=>SingaporeScholarships(),
        "/SingaporeDocuments":(context)=>SingaporeDocuments(),
        "/SIngaporeExams":(context)=>SingaporeExams(),
        "/NorwayColleges":(context)=>NorwayColleges(),
        "/NorwayScholarships":(context)=>NorwayScholarships(),
        "/NorwayDocuments":(context)=>NorwayDocuments(),
        "/NorwayExams":(context)=>NorwayExams(),
        "/UKColleges":(context)=>UKColleges(),
        "/UKScholarships":(context)=>UKScholarships(),
        "/UKDocuments":(context)=>UKDocuments(),
        "/UKExams":(context)=>UKExams(),
        "/NewzealandColleges":(context)=>NewzealandColleges(),
        "/NewzealandScholarships":(context)=>NewzealandScholarships(),
        "/NewzealandDocuments":(context)=>NewzealandDocuments(),
        "/NewzealandExams":(context)=>NewzealandExams(),
        "/FranceColleges":(context)=>FranceColleges(),
        "/FranceScholarships":(context)=>FranceScholarships(),
        "/FranceDocuments":(context)=>FranceDocuments(),
        "/FranceExams":(context)=>FranceExams(),
        "/GermanyColleges":(context)=>GermanyColleges(),
        "/GermanyScholarships":(context)=>GermanyScholarships(),
        "/GermanyDocuments":(context)=>GermanyDocuments(),
        "/GermanyExams":(context)=>GermanyExams(),
        "/IrelandColleges":(context)=>IrelandColleges(),
        "/IrelandScholarships":(context)=>irelandScholarships(),
        "/IrelandDocuments":(context)=>IrelandDocuments(),
        "/IrelandExams":(context)=>IrelandExams(),
        "/ItalyColleges":(context)=>ItalyColleges(),
        "/ItalyScholarships":(context)=>ItalyScholarships(),
        "/ItalyDocuments":(context)=>ItalyDocuments(),
        "/ItalyExams":(context)=>ItalyExams(),
        "/RussiaColleges":(context)=>RussiaColleges(),
        "/RussiaScholarships":(context)=>RussiaScholarships(),
        "/RussiaDocuments":(context)=>RussiaDocuments(),
        "/RussiaExams":(context)=>RussiaExams()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var l = ["https://cdn.pixabay.com/photo/2015/04/20/18/58/student-732012_640.jpg",
    "https://media.istockphoto.com/id/475853577/photo/group-of-graduates-holding-diploma.webp?b=1&s=612x612&w=0&k=20&c=n2Itc_O94FQaXi5pKrMhsY_Iwx43Nn9KXcIDhrzj8v4=",
    "https://cdn.pixabay.com/photo/2015/11/19/21/10/glasses-1052010_640.jpg",
    "https://cdn.pixabay.com/photo/2017/12/22/08/01/school-supplies-3033204_640.jpg",
    "https://cdn.pixabay.com/photo/2016/11/08/05/20/sunset-1807524_1280.jpg"];
  int o = 0;
  var k = [SS(image: "https://cdn.pixabay.com/photo/2013/07/13/14/15/japan-162328_1280.png", Text: "Japan", text: "/JapanScreen"),
    SS(image: "https://cdn.pixabay.com/photo/2012/04/10/16/22/united-26177_1280.png", Text: "USA", text: "/USAScreen"),
    SS(image: "https://cdn.pixabay.com/photo/2012/04/12/23/52/germany-31017_1280.png", Text: "Germany", text: "/GermanyScreen"),
    SS(image: "https://cdn.pixabay.com/photo/2017/10/31/23/52/england-2906827_640.png", Text: "UK", text: "/UKScreen"),
    SS(image: "https://cdn.pixabay.com/photo/2013/07/13/14/15/italy-162326_640.png", Text: "Italy", text: "/ItalyScreen"),
    SS(image: "https://cdn.pixabay.com/photo/2012/04/10/22/58/singapore-26793_1280.png", Text: "Singapore", text: "/SingaporeScreen"),
    SS(image: "https://cdn.pixabay.com/photo/2012/04/10/23/27/canada-27003_640.png", Text: "Canada", text: "/CanadaScreen"),
    SS(image: "https://cdn.pixabay.com/photo/2013/07/13/14/16/new-zealand-162373_1280.png", Text: "New Zealand", text: "/NewZealandScreen"),
    SS(image: "https://cdn.pixabay.com/photo/2020/02/24/01/45/china-4875007_640.png", Text: "China", text: "/ChinaScreen"),
    SS(image: "https://cdn.pixabay.com/photo/2013/07/12/18/42/australia-153732_640.png", Text: "Australia", text: "/AustraliaScreen"),
    SS(image: "https://cdn.pixabay.com/photo/2012/04/11/15/17/norway-28453_1280.png", Text: "Norway", text: "/NorwayScreen"),
    SS(image: "https://cdn.pixabay.com/photo/2013/07/13/14/15/ireland-162323_1280.png", Text: "Ireland", text: "/IrelandScreen"),
    SS(image: "https://cdn.pixabay.com/photo/2013/07/13/14/15/france-162295_640.png", Text: "France", text: "/FranceScreen"),
    SS(image: "https://cdn.pixabay.com/photo/2013/07/13/14/16/netherlands-162372_640.png", Text: "Netherlands", text: "/NetherlandsScreen"),
    SS(image: "https://cdn.pixabay.com/photo/2020/02/26/02/34/denmark-4880481_1280.png", Text: "Denmark", text: "/Denmark"),
  SS(image: "https://cdn.pixabay.com/photo/2013/07/13/14/17/russia-162400_1280.png", Text: "Russia", text: "/RussiaScreen")];
  double scaleFactor = 1;
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text("Eduworld",
        style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white),
      ),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: hi/20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,
                  right: 20),
              child: CarouselSlider(items: l.map((i){
                return Container(
                  height: hi/4,
                  width: wi,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(i),
                        fit: BoxFit.fill),
                  ),
                );
              }).toList(),
                  options: CarouselOptions(
                    height: hi/4,
                    viewportFraction: 2,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    enlargeCenterPage: true,

                  )
              ),
            ),
            Container(
              height: hi/20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,
              bottom: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: InkWell(onTap: (){
                      Navigator.pushNamed(context, k[0].text);
                    },
                      child: SizedBox(
                        height: hi/4,
                        width: wi/2.5,
                        child: Card(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                  height: hi/5,
                                  width: wi/2.5,
                                  child: Image.network(k[0].image, fit: BoxFit.fill,),
                                ),
                              ),
                              Text(k[0].Text)
                            ],
                          ),
                          elevation: 10,
                        )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: InkWell(onTap: (){
                      Navigator.pushNamed(context, k[1].text);
                    },
                      child: SizedBox(
                          height: hi/4,
                          width: wi/2.5,
                          child: Card(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Container(
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                    height: hi/5,
                                    width: wi/2.5,
                                    child: Image.network(k[1].image, fit: BoxFit.fill,),
                                  ),
                                ),
                                Text(k[1].Text)
                              ],
                            ),
                            elevation: 10,
                          )
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,
                  bottom: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: InkWell(onTap: (){
                      Navigator.pushNamed(context, k[2].text);
                    },
                      child: SizedBox(
                          height: hi/4,
                          width: wi/2.5,
                          child: Card(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Container(
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                    height: hi/5,
                                    width: wi/2.5,
                                    child: Image.network(k[2].image, fit: BoxFit.fill,),
                                  ),
                                ),
                                Text(k[2].Text)
                              ],
                            ),
                            elevation: 10,
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: InkWell(onTap: (){
                      Navigator.pushNamed(context, k[3].text);
                    },
                      child: SizedBox(
                          height: hi/4,
                          width: wi/2.5,
                          child: Card(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Container(
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                    height: hi/5,
                                    width: wi/2.5,
                                    child: Image.network(k[3].image, fit: BoxFit.fill,),
                                  ),
                                ),
                                Text(k[3].Text)
                              ],
                            ),
                            elevation: 10,
                          )
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,
                  bottom: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: InkWell(onTap: (){
                      Navigator.pushNamed(context, k[4].text);
                    },
                      child: SizedBox(
                          height: hi/4,
                          width: wi/2.5,
                          child: Card(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Container(
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                    height: hi/5,
                                    width: wi/2.5,
                                    child: Image.network(k[4].image, fit: BoxFit.fill,),
                                  ),
                                ),
                                Text(k[4].Text)
                              ],
                            ),
                            elevation: 10,
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: InkWell(onTap: (){
                      Navigator.pushNamed(context, k[5].text);
                    },
                      child: SizedBox(
                          height: hi/4,
                          width: wi/2.5,
                          child: Card(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Container(
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                    height: hi/5,
                                    width: wi/2.5,
                                    child: Image.network(k[5].image, fit: BoxFit.fill,),
                                  ),
                                ),
                                Text(k[5].Text)
                              ],
                            ),
                            elevation: 10,
                          )
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,
                  bottom: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: InkWell(onTap: (){
                      Navigator.pushNamed(context, k[6].text);
                    },
                      child: SizedBox(
                          height: hi/4,
                          width: wi/2.5,
                          child: Card(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Container(
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                    height: hi/5,
                                    width: wi/2.5,
                                    child: Image.network(k[6].image, fit: BoxFit.fill,),
                                  ),
                                ),
                                Text(k[6].Text)
                              ],
                            ),
                            elevation: 10,
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: InkWell(onTap: (){
                      Navigator.pushNamed(context, k[7].text);
                    },
                      child: SizedBox(
                          height: hi/4,
                          width: wi/2.5,
                          child: Card(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Container(
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                    height: hi/5,
                                    width: wi/2.5,
                                    child: Image.network(k[7].image, fit: BoxFit.fill,),
                                  ),
                                ),
                                Text(k[7].Text)
                              ],
                            ),
                            elevation: 10,
                          )
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,
                  bottom: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: InkWell(onTap: (){
                      Navigator.pushNamed(context, k[8].text);
                    },
                      child: SizedBox(
                          height: hi/4,
                          width: wi/2.5,
                          child: Card(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Container(
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                    height: hi/5,
                                    width: wi/2.5,
                                    child: Image.network(k[8].image, fit: BoxFit.fill,),
                                  ),
                                ),
                                Text(k[8].Text)
                              ],
                            ),
                            elevation: 10,
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: InkWell(onTap: (){
                      Navigator.pushNamed(context, k[9].text);
                    },
                      child: SizedBox(
                          height: hi/4,
                          width: wi/2.5,
                          child: Card(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Container(
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                    height: hi/5,
                                    width: wi/2.5,
                                    child: Image.network(k[9].image, fit: BoxFit.fill,),
                                  ),
                                ),
                                Text(k[9].Text)
                              ],
                            ),
                            elevation: 10,
                          )
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,
                  bottom: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: InkWell(onTap: (){
                      Navigator.pushNamed(context, k[10].text);
                    },
                      child: SizedBox(
                          height: hi/4,
                          width: wi/2.5,
                          child: Card(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Container(
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                    height: hi/5,
                                    width: wi/2.5,
                                    child: Image.network(k[10].image, fit: BoxFit.fill,),
                                  ),
                                ),
                                Text(k[10].Text)
                              ],
                            ),
                            elevation: 10,
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: InkWell(onTap: (){
                      Navigator.pushNamed(context, k[11].text);
                    },
                      child: SizedBox(
                          height: hi/4,
                          width: wi/2.5,
                          child: Card(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Container(
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                    height: hi/5,
                                    width: wi/2.5,
                                    child: Image.network(k[11].image, fit: BoxFit.fill,),
                                  ),
                                ),
                                Text(k[11].Text)
                              ],
                            ),
                            elevation: 10,
                          )
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,
                  bottom: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: InkWell(onTap: (){
                      Navigator.pushNamed(context, k[12].text);
                    },
                      child: SizedBox(
                          height: hi/4,
                          width: wi/2.5,
                          child: Card(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Container(
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                    height: hi/5,
                                    width: wi/2.5,
                                    child: Image.network(k[12].image, fit: BoxFit.fill,),
                                  ),
                                ),
                                Text(k[12].Text)
                              ],
                            ),
                            elevation: 10,
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: InkWell(onTap: (){
                      Navigator.pushNamed(context, k[13].text);
                    },
                      child: SizedBox(
                          height: hi/4,
                          width: wi/2.5,
                          child: Card(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Container(
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                    height: hi/5,
                                    width: wi/2.5,
                                    child: Image.network(k[13].image, fit: BoxFit.fill,),
                                  ),
                                ),
                                Text(k[13].Text)
                              ],
                            ),
                            elevation: 10,
                          )
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,
                  bottom: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: InkWell(onTap: (){
                      Navigator.pushNamed(context, k[14].text);
                    },
                      child: SizedBox(
                          height: hi/4,
                          width: wi/2.5,
                          child: Card(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Container(
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                    height: hi/5,
                                    width: wi/2.5,
                                    child: Image.network(k[14].image, fit: BoxFit.fill,),
                                  ),
                                ),
                                Text(k[14].Text)
                              ],
                            ),
                            elevation: 10,
                          )
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}

class SS{
  final String image;
  final String Text;
  final String text;
  SS({
    required this. image,
    required this. Text,
    required this.text
  });
}