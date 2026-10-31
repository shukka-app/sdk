//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_channel_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateChannelRequest {
  /// Returns a new [CreateChannelRequest] instance.
  CreateChannelRequest({

    required  this.name,
  });

  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreateChannelRequest &&
      other.name == name;

    @override
    int get hashCode =>
        name.hashCode;

  factory CreateChannelRequest.fromJson(Map<String, dynamic> json) => _$CreateChannelRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateChannelRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

