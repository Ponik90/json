class UserModel {
  int? id;
  String? name, userName, email, phone, website;
  Address? address;
  Company? company;

  UserModel(
      {this.id,
      this.name,
      this.userName,
      this.email,
      this.phone,
      this.website,
      this.address,
      this.company});

  factory UserModel.mapToModel(Map m1) {
    return UserModel(
      id: m1['id'],
      name: m1['name'],
      userName: m1['username'],
      email: m1['email'],
      phone: m1['phone'],
      website: m1['website'],
      address: Address.mapToModel(m1['address']),
      company: Company.mapToModel(m1['company']),
    );
  }
}

class Address {
  String? street, suite, city, zipcode;
  Geo? geo;

  Address({this.city, this.street, this.suite, this.zipcode, this.geo});

  factory Address.mapToModel(Map m1) {
    return Address(
      city: m1['city'],
      street: m1['street'],
      suite: m1['suite'],
      zipcode: m1['zipcode'],
      geo: Geo.mapToModel(
        m1['geo'],
      ),
    );
  }
}

class Company {
  String? catchPhrase, name, bs;

  Company({this.catchPhrase, this.name, this.bs});

  factory Company.mapToModel(Map m1) {
    return Company(
      name: m1['name'],
      bs: m1['bs'],
      catchPhrase: m1['catchPhrase'],
    );
  }
}

class Geo {
  String? lat, lng;

  Geo({this.lat, this.lng});

  factory Geo.mapToModel(Map m1) {
    return Geo(
      lat: m1['lat'],
      lng: m1['lng'],
    );
  }
}
