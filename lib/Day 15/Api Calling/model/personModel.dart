class PersonImp {
  static String id = "id";
  static String email = "email";
  static String name = "name";
  static String category = "category";
  static String contact = "contact";
}

class Person {
  String? id;
  String email;
  String name;
  String category;
  String contact;

  Person(
      {this.id,
      required this.email,
      required this.category,
      required this.contact,
      required this.name});

  Person copy(
      {String? id,
      String? email,
      String? name,
      String? cast,
      String? contact}) {
    return Person(
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
      category: cast ?? this.category,
      contact: contact ?? this.category,
    );
  }

  static Person fromJson(Map<String, Object?> json) {
    return Person(
      id: json[PersonImp.id] as String,
      name: json[PersonImp.name] as String,
      email: json[PersonImp.email] as String,
      category: json[PersonImp.category] as String,
      contact: json[PersonImp.contact] as String,
    );
  }

  Map<String, Object?> toJson() {
    return {
      PersonImp.id: id,
      PersonImp.name: name,
      PersonImp.email: email,
      PersonImp.category: category,
      PersonImp.contact: contact,
    };
  }
}
