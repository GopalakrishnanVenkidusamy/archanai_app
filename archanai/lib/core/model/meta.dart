import 'package:archanai/generated/json/base/json_field.dart';
import 'package:archanai/generated/json/meta.g.dart';



@JsonSerializable()
class Meta {

	Meta();

	factory Meta.fromJson(Map<String, dynamic> json) => $MetaFromJson(json);

	Map<String, dynamic> toJson() => $MetaToJson(this);


  @JSONField(name: "message")
  String? message;
  @JSONField(name: "token")
  String? token;
  @JSONField(name: "data")
  dynamic data;
  @JSONField(name: "success")
  bool? success;}