class City {
  static const table = 'city';
  static const colId = 'id';
  static const colName = 'name';
  static const colState = 'state';
  static const colLatitude = 'latitude';
  static const colLongitude = 'longitude';
  static const mockName = 'city';
  static const mockState = 'admin';
  static const mockLatitude = 'lat';
  static const mockLongitude = 'lng';

  int id;
  String name;
  String state;
  double latitude;
  double longitude;

  City({this.name, this.state, this.latitude, this.longitude});

  City.fromMap(Map<String, dynamic> map) {
    id = map[colId];
    name = map[colName];
    state = map[colState];
    latitude = map[colLatitude];
    longitude = map[colLongitude];
  }

  City.fromMockMap(Map<String, dynamic> map) {
    name = map[mockName];
    state = map[mockState];
    latitude = double.parse(map[mockLatitude]);
    longitude = double.parse(map[mockLongitude]);
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> map = {};
    if (id != null) {
      map[colId] = id;
    }
    map[colName] = name;
    map[colState] = state;
    map[colLatitude] = latitude;
    map[colLongitude] = longitude;
    return map;
  }

  @override
  String toString() {
    return 'City{id: $id, name: $name, state: $state, latitude: $latitude, longitude: $longitude}';
  }
}
