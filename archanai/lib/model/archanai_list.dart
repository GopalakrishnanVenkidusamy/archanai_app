import 'package:archanai/generated/json/base/json_field.dart';
import 'package:archanai/generated/json/archanai_list.g.dart';

import 'package:archanai/model/archanai.dart';

@JsonSerializable()
class ArchanaiLists {

	ArchanaiLists();

	factory ArchanaiLists.fromJson(Map<String, dynamic> json) => $ArchanaiListsFromJson(json);

	Map<String, dynamic> toJson() => $ArchanaiListsToJson(this);

  @JSONField(name: "title")
  String? title;
  @JSONField(name: "datas")
  List<Archanai>? datas;
}