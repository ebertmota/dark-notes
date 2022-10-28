class User {
  final String id;
  final String name;
  final String email;

  User({required this.id, required this.name, required this.email});

  factory User.fromJson(Map json){
    return User(
      id: json['id'],
      email: json['email'],
      name: json['name']
    );
  }
}