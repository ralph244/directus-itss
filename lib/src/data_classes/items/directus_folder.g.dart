// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'directus_folder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DirectusFolder _$DirectusFolderFromJson(Map<String, dynamic> json) {
  return DirectusFolder(
    id: json['id'] as String?,
    name: json['name'] as String?,
    parent: json['parent'] as String?,
  );
}

Map<String, dynamic> _$DirectusFolderToJson(DirectusFolder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'parent': instance.parent,
    };