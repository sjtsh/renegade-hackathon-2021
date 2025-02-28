 class PersonalContact {
  final int personalContactID;
  final int userID;
  final String name;
  final String relation;
  final String email;
  final int phone;
  final bool isSelected;

  PersonalContact(this.personalContactID,this.userID, this.name, this.relation,
      this.email, this.phone, this.isSelected);

  factory PersonalContact.fromJson(Map<String, dynamic> json) {
    return PersonalContact(
      json["personalContactID"],
      json["userID"],
      json["name"],
      json["relation"],
      json["email"],
      json["phone"],
      json["isSelected"] == 0 ? false:true,
    );
  }
}
