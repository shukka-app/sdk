//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'set_current_version_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SetCurrentVersionRequest {
  /// Returns a new [SetCurrentVersionRequest] instance.
  SetCurrentVersionRequest({

    required  this.currentVersion,
  });

      /// Version string, or null to clear current
  @JsonKey(
    
    name: r'currentVersion',
    required: true,
    includeIfNull: true,
  )


  final String? currentVersion;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SetCurrentVersionRequest &&
      other.currentVersion == currentVersion;

    @override
    int get hashCode =>
        (currentVersion == null ? 0 : currentVersion.hashCode);

  factory SetCurrentVersionRequest.fromJson(Map<String, dynamic> json) => _$SetCurrentVersionRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SetCurrentVersionRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

