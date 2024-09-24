import 'package:archanai/generated/json/base/json_convert_content.dart';
import 'package:archanai/model/archanai.dart';

Archanai $ArchanaiFromJson(Map<String, dynamic> json) {
	final Archanai archanai = Archanai();
	final String? id = jsonConvert.convert<String>(json['id']);
	if (id != null) {
		archanai.id = id;
	}
	final String? nameEnglish = jsonConvert.convert<String>(json['name_eng']);
	if (nameEnglish != null) {
		archanai.nameEnglish = nameEnglish;
	}
	final String? nameTamil = jsonConvert.convert<String>(json['name_tamil']);
	if (nameTamil != null) {
		archanai.nameTamil = nameTamil;
	}
	final String? amount = jsonConvert.convert<String>(json['amount']);
	if (amount != null) {
		archanai.amount = amount;
	}
	final String? commission = jsonConvert.convert<String>(json['commission']);
	if (commission != null) {
		archanai.commission = commission;
	}
	final String? commissionPercentage = jsonConvert.convert<String>(json['commission_percentage']);
	if (commissionPercentage != null) {
		archanai.commissionPercentage = commissionPercentage;
	}
	final String? groupName = jsonConvert.convert<String>(json['groupname']);
	if (groupName != null) {
		archanai.groupName = groupName;
	}
	final String? orderNo = jsonConvert.convert<String>(json['order_no']);
	if (orderNo != null) {
		archanai.orderNo = orderNo;
	}
	final String? image = jsonConvert.convert<String>(json['image']);
	if (image != null) {
		archanai.image = image;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		archanai.description = description;
	}
	final String? archanaiAmount = jsonConvert.convert<String>(json['amount']);
	if (archanaiAmount != null) {
		archanai.archanaiAmount = archanaiAmount;
	}
	final String? created = jsonConvert.convert<String>(json['created']);
	if (created != null) {
		archanai.created = created;
	}
	final String? modified = jsonConvert.convert<String>(json['modified']);
	if (modified != null) {
		archanai.modified = modified;
	}
	final String? ledgerId = jsonConvert.convert<String>(json['ledger_id']);
	if (ledgerId != null) {
		archanai.ledgerId = ledgerId;
	}
	final String? dietyName = jsonConvert.convert<String>(json['diety_name']);
	if (dietyName != null) {
		archanai.dietyName = dietyName;
	}
	final String? uniqueId = jsonConvert.convert<String>(json['unique_id']);
	if (uniqueId != null) {
		archanai.uniqueId = uniqueId;
	}
	return archanai;
}

Map<String, dynamic> $ArchanaiToJson(Archanai entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name_eng'] = entity.nameEnglish;
	data['name_tamil'] = entity.nameTamil;
	data['amount'] = entity.amount;
	data['commission'] = entity.commission;
	data['commission_percentage'] = entity.commissionPercentage;
	data['groupname'] = entity.groupName;
	data['order_no'] = entity.orderNo;
	data['image'] = entity.image;
	data['description'] = entity.description;
	data['amount'] = entity.archanaiAmount;
	data['created'] = entity.created;
	data['modified'] = entity.modified;
	data['ledger_id'] = entity.ledgerId;
	data['diety_name'] = entity.dietyName;
	data['unique_id'] = entity.uniqueId;
	return data;
}