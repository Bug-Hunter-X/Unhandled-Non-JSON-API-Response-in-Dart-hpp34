# Unhandled Non-JSON API Response in Dart

This example demonstrates a common error in Dart applications that handle API responses: directly parsing the response body as JSON without checking the content type.  This can lead to exceptions if the API returns something other than JSON (e.g., an error message in plain text or HTML).

The `bug.dart` file shows the problematic code. The `bugSolution.dart` provides a corrected version.

This is a crucial aspect of robust error handling in network requests.