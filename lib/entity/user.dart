

class User {
  int type;
  String name;
  String introduction;

  User({this.type, this.name, this.introduction});

  User.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    name = json['name'];
    introduction = json['introduction'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['name'] = this.name;
    data['introduction'] = this.introduction;
    return data;
  }

  @override
  String toString() {
    return 'User{data:$name,introduction:$introduction}';
  }
}
