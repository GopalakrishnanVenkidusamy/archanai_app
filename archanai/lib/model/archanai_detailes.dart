import 'package:archanai/generated/json/base/json_field.dart';
import 'package:archanai/generated/json/archanai_detailes.g.dart';
import 'package:archanai/model/archanai_list.dart';

@JsonSerializable()
class ArchanaiDetails {

  ArchanaiDetails();

	factory ArchanaiDetails.fromJson(Map<String, dynamic> json) => $ArchanaiDetailsFromJson(json);

	Map<String, dynamic> toJson() => $ArchanaiDetailsToJson(this);

  @JSONField(name: "archanai_list")
  List<ArchanaiLists>? archanaiList;
}