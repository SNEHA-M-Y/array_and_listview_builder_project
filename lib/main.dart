import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Array And ListView Builder Project',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text(
            "Array And ListView Builder",
            style: GoogleFonts.aBeeZee(
                textStyle: TextStyle(color: Colors.black, fontSize: 18)),
          ),
        ),
        body: ListView.builder(
          padding: EdgeInsets.all(30),
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.network(
                movielist[index],
              ),
              title: Text(
                moviename[index],
                style: GoogleFonts.abel(
                    textStyle: TextStyle(fontSize: 18, color: Colors.black)),
              ),
              subtitle: Text(relesedate[index]),
            );
          },
          itemCount: movielist.length,
        ));
  }
}

final movielist = [
  "https://assets-in.bmscdn.com/discovery-catalog/events/et00386670-fmzkvefxms-landscape.jpg",
  "https://www.deccanchronicle.com/h-upload/2024/03/22/1080689-thegoatlife.webp",
  "https://www.onmanorama.com/content/dam/mm/en/entertainment/movie-reviews/images/2024/4/11/aavesham.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQC37dIF3YaYa21KR0b8nTbx10PEduLjNhiXltuGC0z6g&s",
  "https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/e7ab86185852421.65c9d80207cd8.jpg",
];

final moviename = [
  "Manjummel Boys",
  "The Goat Life",
  "Aavesham",
  "Bramayugam",
  "Premalu",
];

final relesedate = [
  "22/02/2024",
  "22/03/2024",
  "11/04/2024",
  "15/02/2024",
  "09/02/2024",
];
