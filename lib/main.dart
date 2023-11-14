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
        "/Ireland":(context)=>Ireland(),
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
  var k = [SS(image: "https://media.istockphoto.com/id/682561084/photo/tokyo.webp?b=1&s=612x612&w=0&k=20&c=zMxKVjipUO5yc7f2klow0gdzVfjDn27mTwu7s0AcL9w=", Text: "Japan", text: "/JapanScreen"),
    SS(image: "https://media.istockphoto.com/id/1089200736/photo/the-empire-state.webp?b=1&s=612x612&w=0&k=20&c=_Cb7u7FqSGKKXKKfoNwV_HDcULiTsqBhg93pixQgFpw=", Text: "USA", text: "/USAScreen"),
    SS(image: "https://cdn.pixabay.com/photo/2016/11/21/16/36/cologne-cathedral-1846338_640.jpg", Text: "Germany", text: "/GermanyScreen"),
    SS(image: "https://cdn.pixabay.com/photo/2014/11/13/23/34/palace-530055_640.jpg", Text: "UK", text: "/UKScreen"),
    SS(image: "https://cdn.pixabay.com/photo/2019/03/31/14/31/houses-4093227_640.jpg", Text: "Italy", text: "/ItalyScreen"),
    SS(image: "https://media.istockphoto.com/id/177429276/photo/lake-reflecting-the-singapore-city-skyline-at-night.webp?b=1&s=612x612&w=0&k=20&c=G5Gm9OdPOluUA8_ldMxBFd97GPHP3dXCo-RdPUj-YDY=", Text: "Singapore", text: "/SingaporeScreen"),
    SS(image: "https://cdn.pixabay.com/photo/2017/05/09/03/47/buildings-2297210_640.jpg", Text: "Canada", text: "/CanadaScreen"),
    SS(image: "https://cdn.pixabay.com/photo/2022/11/16/16/56/city-7596379_640.jpg", Text: "New Zealand", text: "/NewZealandScreen"),
    SS(image: "https://cdn.pixabay.com/photo/2019/12/14/12/08/night-4694750_640.jpg", Text: "China", text: "/ChinaScreen"),
    SS(image: "https://cdn.pixabay.com/photo/2014/06/06/09/36/sydney-opera-house-363244_640.jpg", Text: "Australia", text: "/AustraliaScreen"),
    SS(image: "https://media.istockphoto.com/id/1446457083/photo/old-city-bergen.webp?b=1&s=612x612&w=0&k=20&c=4dlrs7K-kzdP80duSVkH8ocdIpvQAUgNMKs3MSnVMnM=", Text: "Norway", text: "/NorwayScreen"),
    SS(image: "https://media.istockphoto.com/id/116149884/photo/belfast-eye.webp?b=1&s=612x612&w=0&k=20&c=KtdAVNvBnfN2PT2YqnBwjM9sKJBDKzbMuz9ft_ubbLw=", Text: "Ireland", text: "/IrelandScreen"),
    SS(image: "https://media.istockphoto.com/id/940054914/photo/aerial-view-of-place-massena-in-nice-france.webp?b=1&s=612x612&w=0&k=20&c=yPE92lXXHFV9MaLMOQvzQe2zfXH8bgdh3A-r-KvjL4Q=", Text: "France", text: "/FranceScreen"),
    SS(image: "https://media.istockphoto.com/id/1143539287/photo/channel-in-amsterdam-netherlands-houses-river-amstel.webp?b=1&s=612x612&w=0&k=20&c=fKyXbPIwSmDZjRYKNMtbf2eK3KGcEr2tYKg0NQRB6vY=", Text: "Netherlands", text: "/NetherlandsScreen"),
    SS(image: "https://media.istockphoto.com/id/587892190/photo/copenhagen-denmark-at-nyhavn-canal.webp?b=1&s=612x612&w=0&k=20&c=zH21LpWh08U14RD-IaY4-pEa7Fuzap6_i9SqNt0LE0U=", Text: "Denmark", text: "/Denmark")];
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
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.question_mark_outlined,
            color: Colors.white,
            size: 25,)
          )
        ],
      ),
      body: Column(
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
          Expanded(
            child: AnimationLimiter(
              child: ListView.builder(
                  itemCount: k.length,
                  itemBuilder: (context, o){
                    return AnimationConfiguration.staggeredList(
                      position: o,
                      duration: const Duration(milliseconds: 325),
                      child: SlideAnimation(
                        verticalOffset: 200.0,
                        child: FadeInAnimation(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 15,
                                    right: 10,
                                    left: 10),
                                child: Container(
                                    height: hi/6,
                                    width: wi,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(k[o].image),
                                            fit: BoxFit.fill),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(
                                        child: Transform.scale(
                                          scale: scaleFactor,
                                          child: TextButton(
                                            onPressed: (){
                                              Navigator.pushNamed(context, k[o].text);
                                            },
                                            child: Text(k[o].Text,
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white
                                              ),
                                            ),
                                          ),
                                        )
                                    )
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          )
        ],
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