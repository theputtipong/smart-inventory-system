import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../routes/index.dart' as route;
import 'package:http/http.dart' as http;

class _MockRequestContext extends Mock implements RequestContext {}

void main() {
  // group('GET /', () {
  //   test('responds with a 200 and "Welcome to Dart Frog!".', () {
  //     final context = _MockRequestContext();
  //     final response = route.onRequest(context);
  //     expect(response.statusCode, equals(HttpStatus.ok));
  //     expect(
  //       response.body(),
  //       completion(equals('Welcome to Dart Frog!')),
  //     );
  //   });
  // });

  test('API Test Example', () async {
    // Replace with your API endpoint
    final apiUrl = 'https://api.example.com/data';

    // Make a GET request to the API
    var response = await http.get(Uri.parse(apiUrl));

    // Verify the response status code
    expect(response.statusCode, 200);

    // Verify other aspects of the response as needed
    // For example, checking JSON response:
    // var jsonResponse = jsonDecode(response.body);
    // expect(jsonResponse['key'], 'expected_value');
  });
}
