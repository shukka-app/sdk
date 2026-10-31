//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'editor_notes_notes_inner.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class EditorNotesNotesInner {
  /// Returns a new [EditorNotesNotesInner] instance.
  EditorNotesNotesInner({

    required  this.locale,

    required  this.markdown,

    required  this.html,

    required  this.text,

    required  this.id,

    required  this.versionId,
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
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final int id;



  @JsonKey(
    
    name: r'versionId',
    required: true,
    includeIfNull: false,
  )


  final int versionId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is EditorNotesNotesInner &&
      other.locale == locale &&
      other.markdown == markdown &&
      other.html == html &&
      other.text == text &&
      other.id == id &&
      other.versionId == versionId;

    @override
    int get hashCode =>
        locale.hashCode +
        markdown.hashCode +
        html.hashCode +
        text.hashCode +
        id.hashCode +
        versionId.hashCode;

  factory EditorNotesNotesInner.fromJson(Map<String, dynamic> json) => _$EditorNotesNotesInnerFromJson(json);

  Map<String, dynamic> toJson() => _$EditorNotesNotesInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

