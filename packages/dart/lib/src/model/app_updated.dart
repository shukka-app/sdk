//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:shukka_sdk/src/model/app_detail_app.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'app_updated.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AppUpdated {
  /// Returns a new [AppUpdated] instance.
  AppUpdated({

    required  this.app,
  });

  @JsonKey(
    
    name: r'app',
    required: true,
    includeIfNull: false,
  )


  final AppDetailApp app;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AppUpdated &&
      other.app == app;

    @override
    int get hashCode =>
        app.hashCode;

  factory AppUpdated.fromJson(Map<String, dynamic> json) => _$AppUpdatedFromJson(json);

  Map<String, dynamic> toJson() => _$AppUpdatedToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

