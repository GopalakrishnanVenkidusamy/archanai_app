import 'package:archanai/generated/json/base/json_field.dart';
import 'package:archanai/generated/json/archanai.g.dart';

@JsonSerializable()
class Archanai {

	Archanai();

	factory Archanai.fromJson(Map<String, dynamic> json) => $ArchanaiFromJson(json);

	Map<String, dynamic> toJson() => $ArchanaiToJson(this);

  @JSONField(name: "id")
  String? id;
  @JSONField(name: "name_eng")
  String? nameEnglish;
  @JSONField(name: "name_tamil")
  String? nameTamil;
  @JSONField(name: "amount")
  String? amount;
  @JSONField(name: "commission")
  String? commission;
  @JSONField(name: "commission_percentage")
  String? commissionPercentage;
  @JSONField(name: "groupname")
  String? groupName;
  @JSONField(name: "order_no")
  String? orderNo;
  @JSONField(name: "image")
  String? image;
  @JSONField(name: "description")
  String? description;
  @JSONField(name: "amount")
  String? archanaiAmount;
  @JSONField(name: "created")
  String? created;
  @JSONField(name: "modified")
  String? modified;
  @JSONField(name: "ledger_id")
  String? ledgerId;
  @JSONField(name: "diety_name")
  String? dietyName;
  @JSONField(name: "unique_id")
  String? uniqueId;
}