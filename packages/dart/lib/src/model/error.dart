//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'error.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Error {
  /// Returns a new [Error] instance.
  Error({

    required  this.error,

    required  this.message,

     this.details,
  });

  @JsonKey(
    
    name: r'error',
    required: true,
    includeIfNull: false,
  unknownEnumValue: ErrorErrorEnum.unknownDefaultOpenApi,
  )


  final ErrorErrorEnum error;



  @JsonKey(
    
    name: r'message',
    required: true,
    includeIfNull: false,
  )


  final String message;



  @JsonKey(
    
    name: r'details',
    required: false,
    includeIfNull: false,
  )


  final Object? details;





    @override
    bool operator ==(Object other) => identical(this, other) || other is Error &&
      other.error == error &&
      other.message == message &&
      other.details == details;

    @override
    int get hashCode =>
        error.hashCode +
        message.hashCode +
        (details == null ? 0 : details.hashCode);

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

enum ErrorErrorEnum {
@JsonValue(r'unauthorized')
unauthorized(r'unauthorized'),
@JsonValue(r'forbidden')
forbidden(r'forbidden'),
@JsonValue(r'not_found')
notFound(r'not_found'),
@JsonValue(r'conflict')
conflict(r'conflict'),
@JsonValue(r'invalid_request')
invalidRequest(r'invalid_request'),
@JsonValue(r'storage_error')
storageError(r'storage_error'),
@JsonValue(r'metadata_error')
metadataError(r'metadata_error'),
@JsonValue(r'rate_limited')
rateLimited(r'rate_limited'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const ErrorErrorEnum(this.value);

final String value;

@override
String toString() => value;
}


