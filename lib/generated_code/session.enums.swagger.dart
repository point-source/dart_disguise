import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum MixedrealityObservationType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Primary')
  primary('Primary'),
  @JsonValue('Secondary')
  secondary('Secondary');

  final String? value;

  const MixedrealityObservationType(this.value);
}

enum MachineInfoMachineType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Unknown')
  unknown('Unknown'),
  @JsonValue('Designer')
  designer('Designer'),
  @JsonValue('V2_5')
  v25('V2_5'),
  @JsonValue('Pro4x2')
  pro4x2('Pro4x2'),
  @JsonValue('Pro4x4')
  pro4x4('Pro4x4'),
  @JsonValue('Plus2x2')
  plus2x2('Plus2x2'),
  @JsonValue('Pro4x4NoVfcs')
  pro4x4novfcs('Pro4x4NoVfcs'),
  @JsonValue('Node')
  node('Node'),
  @JsonValue('Pro2x4')
  pro2x4('Pro2x4'),
  @JsonValue('Gx1')
  gx1('Gx1'),
  @JsonValue('Gx2')
  gx2('Gx2'),
  @JsonValue('SoloV1')
  solov1('SoloV1'),
  @JsonValue('Vx4')
  vx4('Vx4'),
  @JsonValue('Gx2c')
  gx2c('Gx2c'),
  @JsonValue('Rx')
  rx('Rx'),
  @JsonValue('RxII')
  rxii('RxII'),
  @JsonValue('Vx1')
  vx1('Vx1'),
  @JsonValue('Vx2')
  vx2('Vx2'),
  @JsonValue('Vx4Plus')
  vx4plus('Vx4Plus'),
  @JsonValue('Gx3')
  gx3('Gx3');

  final String? value;

  const MachineInfoMachineType(this.value);
}

enum TrackInfoCrossfadeMode {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Unknown')
  unknown('Unknown'),
  @JsonValue('Off')
  off('Off'),
  @JsonValue('Fade')
  fade('Fade'),
  @JsonValue('TrackSection')
  tracksection('TrackSection');

  final String? value;

  const TrackInfoCrossfadeMode(this.value);
}

enum TransportAPIPlayMode {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('NotSet')
  notset('NotSet'),
  @JsonValue('Play')
  play('Play'),
  @JsonValue('PlaySection')
  playsection('PlaySection'),
  @JsonValue('Loop')
  loop('Loop'),
  @JsonValue('Stop')
  stop('Stop'),
  @JsonValue('Unknown')
  unknown('Unknown');

  final String? value;

  const TransportAPIPlayMode(this.value);
}

enum TransportTagType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('TagType_Unknown')
  tagtypeUnknown('TagType_Unknown'),
  @JsonValue('TC')
  tc('TC'),
  @JsonValue('MIDI')
  midi('MIDI'),
  @JsonValue('CUE')
  cue('CUE');

  final String? value;

  const TransportTagType(this.value);
}
