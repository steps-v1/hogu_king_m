class User {
  String _token;
  DateTime _expire;

  User(this._token, this._expire);

  User.map(dynamic obj) {
    this._token = obj["token"];
    this._expire = obj["expire"];
  }

  String get token => _token;

  DateTime get expire => _expire;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["token"] = _token;
    map["expire"] = _expire;

    return map;
  }
}
