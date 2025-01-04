```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Check the content type to ensure it's JSON
      final contentType = response.headers['content-type'];
      if (contentType != null && contentType.startsWith('application/json')) {
        final data = jsonDecode(response.body);
        // ... process the data ...
      } else {
        // Handle non-JSON response
        print('Error: Unexpected content type: $contentType');
        print('Response body: ${response.body}'); // Log the response for debugging
      }
    } else {
      // Handle error
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exception
    print('Error: $e');
  }
}
```