import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
part "notes_model.g.dart";

@HiveType(typeId: 0)
class NotesModel extends HiveObject with EquatableMixin {
  @HiveField(0)
  String title;
  @HiveField(1)
  String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
   int color;

  NotesModel({
    required this.title,
    required this.subTitle,
    required this.date,
    required this.color,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [title, subTitle, date, color];}
