import 'dart:convert';
/// status : "Success"
/// message : "Success! Health Status Insert Succesfully."
/// data : 2

AddHealthStatusResponse addHealthStatusResponseFromJson(String str) => AddHealthStatusResponse.fromJson(json.decode(str));
String addHealthStatusResponseToJson(AddHealthStatusResponse data) => json.encode(data.toJson());
class AddHealthStatusResponse {
  AddHealthStatusResponse({
      String? status, 
      String? message, 
      int? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  AddHealthStatusResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'];
  }
  String? _status;
  String? _message;
  int? _data;
AddHealthStatusResponse copyWith({  String? status,
  String? message,
  int? data,
}) => AddHealthStatusResponse(  status: status ?? _status,
  message: message ?? _message,
  data: data ?? _data,
);
  String? get status => _status;
  String? get message => _message;
  int? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    map['data'] = _data;
    return map;
  }

}