import 'package:archanai/generated/json/base/json_convert_content.dart';
import 'package:archanai/model/archanai_list.dart';
import 'package:archanai/model/archanai.dart';


ArchanaiLists $ArchanaiListsFromJson(Map<String, dynamic> json) {
	final ArchanaiLists archanaiLists = ArchanaiLists();
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		archanaiLists.title = title;
	}
	final List<Archanai>? datas = jsonConvert.convertListNotNull<Archanai>(json['datas']);
	if (datas != null) {
		archanaiLists.datas = datas;
	}
	return archanaiLists;
}

Map<String, dynamic> $ArchanaiListsToJson(ArchanaiLists entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['title'] = entity.title;
	data['datas'] =  entity.datas?.map((v) => v.toJson()).toList();
	return data;
}