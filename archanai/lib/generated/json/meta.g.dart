import 'package:archanai/generated/json/base/json_convert_content.dart';
import 'package:archanai/core/model/meta.dart';

Meta $MetaFromJson(Map<String, dynamic> json) {
	final Meta meta = Meta();
	final String? message = jsonConvert.convert<String>(json['message']);
	if (message != null) {
		meta.message = message;
	}
	final String? token = jsonConvert.convert<String>(json['token']);
	if (token != null) {
		meta.token = token;
	}
	final dynamic? data = jsonConvert.convert<dynamic>(json['data']);
	if (data != null) {
		meta.data = data;
	}
	final bool? success = jsonConvert.convert<bool>(json['success']);
	if (success != null) {
		meta.success = success;
	}
	return meta;
}

Map<String, dynamic> $MetaToJson(Meta entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['message'] = entity.message;
	data['token'] = entity.token;
	data['data'] = entity.data;
	data['success'] = entity.success;
	return data;
}