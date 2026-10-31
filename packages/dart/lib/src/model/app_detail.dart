//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:shukka_sdk/src/model/app_detail_keys_inner.dart';
import 'package:shukka_sdk/src/model/app_detail_app.dart';
import 'package:shukka_sdk/src/model/app_detail_channels_inner.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'app_detail.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AppDetail {
  /// Returns a new [AppDetail] instance.
  AppDetail({

    required  this.app,

    required  this.channels,

     this.keys,
  });

  @JsonKey(
    
    name: r'app',
    required: true,
    includeIfNull: false,
  )


  final AppDetailApp app;



  @JsonKey(
    
    name: r'channels',
    required: true,
    includeIfNull: false,
  )


  final List<AppDetailChannelsInner> channels;



      /// Present only for session actors; omitted when authenticated with an API key.
  @JsonKey(
    
    name: r'keys',
    required: false,
    includeIfNull: false,
  )


  final List<AppDetailKeysInner>? keys;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AppDetail &&
      other.app == app &&
      other.channels == channels &&
      other.keys == keys;

    @override
    int get hashCode =>
        app.hashCode +
        channels.hashCode +
        keys.hashCode;

  factory AppDetail.fromJson(Map<String, dynamic> json) => _$AppDetailFromJson(json);

  Map<String, dynamic> toJson() => _$AppDetailToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

