class Task {
  final String name;
  final String content;

  Task({required this.name, required this.content});

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      name: json['name'],
      content: json['content'],
    );
  }
}
