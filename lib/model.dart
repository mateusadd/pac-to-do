class Response {
  final String test;

  Response({required this.test});

  factory Response.fromJson(Map<String, dynamic> json) {
    final test = json['name'];

    return Response(test: test);
  }
}
