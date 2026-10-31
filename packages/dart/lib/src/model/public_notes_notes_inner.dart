//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'public_notes_notes_inner.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PublicNotesNotesInner {
  /// Returns a new [PublicNotesNotesInner] instance.
  PublicNotesNotesInner({

    required  this.locale,

    required  this.markdown,

    required  this.html,

    required  this.text,

    required  this.version,

    required  this.releasedAt,
  });

  @JsonKey(
    
    name: r'locale',
    required: true,
    includeIfNull: false,
  )


  final String locale;



  @JsonKey(
    
    name: r'markdown',
    required: true,
    includeIfNull: false,
  )


  final String markdown;



  @JsonKey(
    
    name: r'html',
    required: true,
    includeIfNull: false,
  )


  final String html;



  @JsonKey(
    
    name: r'text',
    required: true,
    includeIfNull: false,
  )


  final String text;



  @JsonKey(
    
    name: r'version',
    required: true,
    includeIfNull: false,
  )


  final String version;



  @JsonKey(
    
    name: r'releasedAt',
    required: true,
    includeIfNull: false,
  )


  final int releasedAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PublicNotesNotesInner &&
      other.locale == locale &&
      other.markdown == markdown &&
      other.html == html &&
      other.text == text &&
      other.version == version &&
      other.releasedAt == releasedAt;

    @override
    int get hashCode =>
        locale.hashCode +
        markdown.hashCode +
        html.hashCode +
        text.hashCode +
        version.hashCode +
        releasedAt.hashCode;

  factory PublicNotesNotesInner.fromJson(Map<String, dynamic> json) => _$PublicNotesNotesInnerFromJson(json);

  Map<String, dynamic> toJson() => _$PublicNotesNotesInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

