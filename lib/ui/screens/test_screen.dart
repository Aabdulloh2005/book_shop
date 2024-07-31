import 'package:book_shop/data/services/book_dio_service.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  void initState() {
    super.initState();
    getBooks();
  }

  void getBooks() {
    print('ishladi');
    BookDioService().addBook();
    BookDioService().getBooks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
