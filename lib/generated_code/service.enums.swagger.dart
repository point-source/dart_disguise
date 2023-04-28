import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum SystemAPIBPModel {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('BPModel_Unknown')
  bpmodelUnknown('BPModel_Unknown'),
  @JsonValue('BPv1')
  bpv1('BPv1'),
  @JsonValue('BPv2')
  bpv2('BPv2'),
  @JsonValue('NoBP')
  nobp('NoBP');

  final String? value;

  const SystemAPIBPModel(this.value);
}

enum SystemAPIColorFormat {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('RGB')
  rgb('RGB'),
  @JsonValue('YUV444')
  yuv444('YUV444'),
  @JsonValue('YUV422')
  yuv422('YUV422'),
  @JsonValue('YUV420')
  yuv420('YUV420'),
  @JsonValue('ColorFormat_Unknown')
  colorformatUnknown('ColorFormat_Unknown');

  final String? value;

  const SystemAPIColorFormat(this.value);
}

enum SystemAPIVFCGeneration {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Generation_Unknown')
  generationUnknown('Generation_Unknown'),
  @JsonValue('One')
  one('One'),
  @JsonValue('Two')
  two('Two'),
  @JsonValue('None')
  none('None');

  final String? value;

  const SystemAPIVFCGeneration(this.value);
}

enum SystemGenlockState {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('FreeRun')
  freerun('FreeRun'),
  @JsonValue('Internal')
  internal('Internal'),
  @JsonValue('External')
  $external('External'),
  @JsonValue('GenlockState_Unknown')
  genlockstateUnknown('GenlockState_Unknown');

  final String? value;

  const SystemGenlockState(this.value);
}

enum SystemIPFamily {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('IPv4')
  ipv4('IPv4'),
  @JsonValue('IPv6')
  ipv6('IPv6');

  final String? value;

  const SystemIPFamily(this.value);
}

enum SystemOperationalStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('OperationalStatus_Unknown')
  operationalstatusUnknown('OperationalStatus_Unknown'),
  @JsonValue('Up')
  up('Up'),
  @JsonValue('Down')
  down('Down'),
  @JsonValue('Testing')
  testing('Testing'),
  @JsonValue('Dormant')
  dormant('Dormant'),
  @JsonValue('NotPresent')
  notpresent('NotPresent'),
  @JsonValue('LowerLayerDown')
  lowerlayerdown('LowerLayerDown');

  final String? value;

  const SystemOperationalStatus(this.value);
}

enum SystemVFCSplitMode {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('SplitMode_Unknown')
  splitmodeUnknown('SplitMode_Unknown'),
  @JsonValue('Mirror')
  mirror('Mirror'),
  @JsonValue('Dual')
  dual('Dual'),
  @JsonValue('Quad')
  quad('Quad'),
  @JsonValue('Quad4K')
  quad4k('Quad4K'),
  @JsonValue('NoSwizzle')
  noswizzle('NoSwizzle');

  final String? value;

  const SystemVFCSplitMode(this.value);
}

enum SystemVFCType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('VFCType_Unknown')
  vfctypeUnknown('VFCType_Unknown'),
  @JsonValue('Mock')
  mock('Mock'),
  @JsonValue('DP_Passthrough')
  dpPassthrough('DP_Passthrough'),
  @JsonValue('DP12_Passthrough')
  dp12Passthrough('DP12_Passthrough'),
  @JsonValue('DP14_Passthrough')
  dp14Passthrough('DP14_Passthrough'),
  @JsonValue('QuadDVI')
  quaddvi('QuadDVI'),
  @JsonValue('QuadSDI')
  quadsdi('QuadSDI'),
  @JsonValue('HDMI')
  hdmi('HDMI'),
  @JsonValue('IP')
  ip('IP'),
  @JsonValue('NoVFC')
  novfc('NoVFC');

  final String? value;

  const SystemVFCType(this.value);
}
