
class profile_model{
  final String Name;
  final String Phone;
  final String id;
  
  profile_model(this.Name, this.Phone, this.id);
  
  Map<String, dynamic> toJson() => {
        'name': Name,
        'phone': Phone,
        'id': id,
      };

  static profile_model fromJson(Map<String, dynamic> json) => profile_model(
    json['name'],
    json['phone'],
    json['id'],

  );
}