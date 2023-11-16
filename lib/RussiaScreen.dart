import 'package:flutter/material.dart';
class RussiaScreen extends StatefulWidget {
  const RussiaScreen({super.key});

  @override
  State<RussiaScreen> createState() => _RussiaScreenState();
}

class _RussiaScreenState extends State<RussiaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,),
    );
  }
}

class RussiaColleges extends StatefulWidget {
  const RussiaColleges({super.key});

  @override
  State<RussiaColleges> createState() => _RussiaCollegesState();
}

class _RussiaCollegesState extends State<RussiaColleges> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.yellow,),
    );
  }
}

class RussiaScholarships extends StatefulWidget {
  const RussiaScholarships({super.key});

  @override
  State<RussiaScholarships> createState() => _RussiaScholarshipsState();
}

class _RussiaScholarshipsState extends State<RussiaScholarships> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
      ),
    );
  }
}

class RussiaDocuments extends StatefulWidget {
  const RussiaDocuments({super.key});

  @override
  State<RussiaDocuments> createState() => _RussiaDocumentsState();
}

class _RussiaDocumentsState extends State<RussiaDocuments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
      ),
    );
  }
}

class RussiaExams extends StatefulWidget {
  const RussiaExams({super.key});

  @override
  State<RussiaExams> createState() => _RussiaExamsState();
}

class _RussiaExamsState extends State<RussiaExams> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
    );
  }
}


