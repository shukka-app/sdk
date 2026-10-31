//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'app_detail_keys_inner.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AppDetailKeysInner {
  /// Returns a new [AppDetailKeysInner] instance.
  AppDetailKeysInner({

    required  this.id,

    required  this.name,

    required  this.hint,

    required  this.createdAt,

    required  this.lastUsedAt,

    required  this.revokedAt,
  });

  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final int id;



  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



  @JsonKey(
    
    name: r'hint',
    required: true,
    includeIfNull: false,
  )


  final String hint;



  @JsonKey(
    
    name: r'createdAt',
    required: true,
    includeIfNull: false,
  )


  final int createdAt;



  @JsonKey(
    
    name: r'lastUsedAt',
    required: true,
    includeIfNull: true,
  )


  final int? lastUsedAt;



  @JsonKey(
    
    name: r'revokedAt',
    required: true,
    includeIfNull: true,
  )


  final int? revokedAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AppDetailKeysInner &&
      other.id == id &&
      other.name == name &&
      other.hint == hint &&
      other.createdAt == createdAt &&
      other.lastUsedAt == lastUsedAt &&
      other.revokedAt == revokedAt;

    @override
    int get hashCode =>
        id.hashCode +
        name.hashCode +
        hint.hashCode +
        createdAt.hashCode +
        (lastUsedAt == null ? 0 : lastUsedAt.hashCode) +
        (revokedAt == null ? 0 : revokedAt.hashCode);

  factory AppDetailKeysInner.fromJson(Map<String, dynamic> json) => _$AppDetailKeysInnerFromJson(json);

  Map<String, dynamic> toJson() => _$AppDetailKeysInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

