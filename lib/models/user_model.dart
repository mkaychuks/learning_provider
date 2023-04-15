// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserModel {
  String name;
  String email;
  String username;
  UserModel({
    required this.name,
    required this.email,
    required this.username,
  });

  UserModel copyWith({
    String? name,
    String? email,
    String? username,
  }) {
    return UserModel(
      name: name ?? this.name,
      email: email ?? this.email,
      username: username ?? this.username,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'email': email,
      'username': username,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] as String,
      email: map['email'] as String,
      username: map['username'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserModel(name: $name, email: $email, username: $username)';

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.email == email &&
      other.username == username;
  }

  @override
  int get hashCode => name.hashCode ^ email.hashCode ^ username.hashCode;
}
