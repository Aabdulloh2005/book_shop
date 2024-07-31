import 'package:dio/dio.dart';

class BookDioService {
  final _dio = Dio()
    ..options =
        BaseOptions(baseUrl: 'https://lesson71-default-rtdb.firebaseio.com');

  Future<void> getBooks() async {
    final response = await _dio.get(
      '/books.json',
    );
  }

  Future<void> addBook() async {
    print("Adgdga keldi");
    final response = await _dio.post('/books.json', data: {
      "title": "Salom men keldimku",
    });
  }
}
