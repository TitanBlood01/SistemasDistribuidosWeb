class Usuario {
  String _nickname;
  String _pin;
  String _nombre;
 
  
  Usuario(
    this._nickname,
    this._pin,
    this._nombre,
  );
  
  String get nickname => this._nickname;
  String get pin => this._pin;
  String get nombre => this._nombre;

  set nickname(String value) => this._nickname = value;
  set pin(String value) => this._pin = value;
  set nombre(String value) => this._nombre = value;

}