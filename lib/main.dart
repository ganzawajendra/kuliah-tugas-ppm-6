import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

void main() {
  runApp(MaterialApp(
    home: BookListScreen(),
  ));
}

class BookListScreen extends StatelessWidget {
  final List<Map<String, String>> books = [
    {
      'title': 'Algorithms to Live By: The Computer Science of Human Decisions',
      'author': 'Brian Christian',
      'description': 'In a dazzlingly interdisciplinary work, Brian Christian and Tom Griffiths show how algorithms developed for computers also untangle very human questions. They explain how to have better hunches and when to leave things to chance, how to deal with overwhelming choices and how best to connect with others. From finding a spouse to finding a parking spot, from organizing one’s inbox to peering into the future, Algorithms to Live By transforms the wisdom of computer science into strategies for human living.',
      'pdfUrl': 'https://pdfobject.com/pdf/sample.pdf'
    },
    {
      'title': 'Beginning Programming All-in-One Desk Reference for Dummies',
      'author': 'Wallace Wang',
      'description': 'Beginning Programming All In One Desk Reference For Dummies shows you how to decide what you want your program to do, turn your instructions into “machine language” that the computer understands, use programming best practices, explore the “how” and “why” of data structuring, and more. You’ll even get a look into various applications like database management, bioinformatics, computer security, and artificial intelligence. Soon you’ll realize that — wow! You’re a programmer!',
      'pdfUrl': 'https://pdfobject.com/pdf/sample.pdf'
    },
    {
      'title': 'Streamlit for Data Science: Create interactive data apps in Python',
      'author': 'Tyler Richards',
      'description': 'If you work with data in Python and are looking to create data apps that showcase ML models and make beautiful interactive visualizations, then this is the ideal book for you. Streamlit for Data Science, Second Edition, shows you how to create and deploy data apps quickly, all within Python. This helps you create prototypes in hours instead of days! Written by a prolific Streamlit user and senior data scientist at Snowflake, this fully updated second edition builds on the practical nature of the previous edition with exciting updates, including connecting Streamlit to data warehouses like Snowflake, integrating Hugging Face and OpenAI models into your apps, and connecting and building apps on top of Streamlit databases. Plus, there is a totally updated code repository on GitHub to help you practice your newfound skills.',
      'pdfUrl': 'https://pdfobject.com/pdf/sample.pdf'
    },
    {
      'title': 'Clean Code: A Handbook of Agile Software Craftsmanship',
      'author': 'Robert C. Martin',
      'description': 'Even bad code can function. But if code isn’t clean, it can bring a development organization to its knees. Every year, countless hours and significant resources are lost because of poorly written code. But it doesn’t have to be that way.',
      'pdfUrl': 'https://pdfobject.com/pdf/sample.pdf'
    },
    {
      'title': 'The Pragmatic Programmer: Your Journey To Mastery',
      'author': 'David Thomas, Andrew Hunt',
      'description': 'The Pragmatic Programmer is one of those rare tech books you’ll read, re-read, and read again over the years. Whether you’re new to the field or an experienced practitioner, you’ll come away with fresh insights each and every time.',
      'pdfUrl': 'https://pdfobject.com/pdf/sample.pdf'
    },
    {
      'title': 'Design Patterns: Elements of Reusable Object-Oriented Software',
      'author': 'Erich Gamma, Richard Helm, Ralph Johnson, John Vlissides',
      'description': 'Capturing a wealth of experience about the design of object-oriented software, four top-notch designers present a catalog of simple and succinct solutions to commonly occurring design problems.',
      'pdfUrl': 'https://pdfobject.com/pdf/sample.pdf'
    },
    {
      'title': 'Refactoring: Improving the Design of Existing Code',
      'author': 'Martin Fowler',
      'description': 'As the application of object technology--particularly the Java programming language--has become commonplace, a new problem has emerged to confront the software development community. Significant numbers of poorly designed programs have been created.',
      'pdfUrl': 'https://pdfobject.com/pdf/sample.pdf'
    },
    {
      'title': 'Cracking the Coding Interview',
      'author': 'Gayle Laakmann McDowell',
      'description': 'I am not a recruiter. I am a software engineer. And as such, I know what it\'s like to be asked to whip up brilliant algorithms on the spot and then write flawless code on a whiteboard. I\'ve been through this as a candidate and as an interviewer.',
      'pdfUrl': 'https://pdfobject.com/pdf/sample.pdf'
    },
    {
      'title': 'Structure and Interpretation of Computer Programs',
      'author': 'Harold Abelson, Gerald Jay Sussman',
      'description': 'Structure and Interpretation of Computer Programs has had a dramatic impact on computer science curricula over the past decade. This long-awaited revision contains changes throughout the text.',
      'pdfUrl': 'https://pdfobject.com/pdf/sample.pdf'
    },
    {
      'title': 'Introduction to Algorithms',
      'author': 'Thomas H. Cormen, Charles E. Leiserson',
      'description': 'Some books on algorithms are rigorous but incomplete; others cover masses of material but lack rigor. Introduction to Algorithms uniquely combines rigor and comprehensiveness.',
      'pdfUrl': 'https://pdfobject.com/pdf/sample.pdf'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Book List')),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(books[index]['title']!),
            subtitle: Text(books[index]['author']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookDetailScreen(
                    title: books[index]['title']!,
                    author: books[index]['author']!,
                    description: books[index]['description']!,
                    pdfUrl: books[index]['pdfUrl']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class BookDetailScreen extends StatelessWidget {
  final String title;
  final String author;
  final String description;
  final String pdfUrl;

  BookDetailScreen({required this.title, required this.author, required this.description, required this.pdfUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Title: $title', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('Author: $author', style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),
            SizedBox(height: 12),
            Text('Description:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 6),
            Text(description, style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'),
            ),

             ElevatedButton(
               onPressed: () {
                 Navigator.push(context,
                   MaterialPageRoute(
                     builder: (context) => ReadingBookFile(
                        pdfUrl: pdfUrl,
                     ),
                   ),
                 );
               },
               child: Text('Read the book'),
             ),
          ],
        ),
      ),
    );
  }
}

class ReadingBookFile extends StatelessWidget {
  final String pdfUrl;

  ReadingBookFile({required this.pdfUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reading Book')),
      body: SfPdfViewer.network(pdfUrl),
    );
  }
}