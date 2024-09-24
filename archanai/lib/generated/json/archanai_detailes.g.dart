import 'package:archanai/generated/json/base/json_convert_content.dart';
import 'package:archanai/model/archanai_detailes.dart';
import 'package:archanai/model/archanai_list.dart';


ArchanaiDetails $ArchanaiDetailsFromJson(Map<String, dynamic> json) {
	final ArchanaiDetails archanaiDetails = ArchanaiDetails();
	final List<ArchanaiLists>? archanaiList = jsonConvert.convertListNotNull<ArchanaiLists>(json['archanai_list']);
	if (archanaiList != null) {
		archanaiDetails.archanaiList = archanaiList;
	}
	return archanaiDetails;
}

Map<String, dynamic> $ArchanaiDetailsToJson(ArchanaiDetails entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['archanai_list'] =  entity.archanaiList?.map((v) => v.toJson()).toList();
	return data;
}