// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:chopper/chopper.dart' as chopper;
import 'service.enums.swagger.dart' as enums;
export 'service.enums.swagger.dart';

part 'service.swagger.chopper.dart';
part 'service.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class Service extends ChopperService {
  static Service create({
    ChopperClient? client,
    Authenticator? authenticator,
    Uri? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$Service(client);
    }

    final newClient = ChopperClient(
      services: [_$Service()],
      converter: $JsonSerializableConverter(),
      interceptors: interceptors ?? [],
      authenticator: authenticator, /*baseUrl: YOUR_BASE_URL*/
    );
    return _$Service(newClient);
  }

  ///Force quit an active disguise project
  Future<chopper.Response<D3apiEmptyResponse>>
      projectForcequitlocalprojectPost() {
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _projectForcequitlocalprojectPost();
  }

  ///Force quit an active disguise project
  @Post(
    path: '/project/forcequitlocalproject',
    optionalBody: true,
  )
  Future<chopper.Response<D3apiEmptyResponse>>
      _projectForcequitlocalprojectPost();

  ///Quit an active disguise project
  Future<chopper.Response<D3apiEmptyResponse>> projectQuitlocalprojectPost() {
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _projectQuitlocalprojectPost();
  }

  ///Quit an active disguise project
  @Post(
    path: '/project/quitlocalproject',
    optionalBody: true,
  )
  Future<chopper.Response<D3apiEmptyResponse>> _projectQuitlocalprojectPost();

  ///Restart an active disguise project
  Future<chopper.Response<D3apiEmptyResponse>>
      projectRestartlocalprojectPost() {
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _projectRestartlocalprojectPost();
  }

  ///Restart an active disguise project
  @Post(
    path: '/project/restartlocalproject',
    optionalBody: true,
  )
  Future<chopper.Response<D3apiEmptyResponse>>
      _projectRestartlocalprojectPost();

  ///Start a disguise project
  ///@param body
  Future<chopper.Response<D3apiEmptyResponse>> projectStartlocalprojectPost(
      {required ProjectStartLocalProjectRequest? body}) {
    generatedMapping.putIfAbsent(ProjectStartLocalProjectRequest,
        () => ProjectStartLocalProjectRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _projectStartlocalprojectPost(body: body);
  }

  ///Start a disguise project
  ///@param body
  @Post(path: '/project/startlocalproject')
  Future<chopper.Response<D3apiEmptyResponse>> _projectStartlocalprojectPost(
      {@Body() required ProjectStartLocalProjectRequest? body});

  ///List all remote machines and local machine system info
  Future<chopper.Response<SystemDetectSystemsResponse>>
      systemDetectsystemsGet() {
    generatedMapping.putIfAbsent(SystemDetectSystemsResponse,
        () => SystemDetectSystemsResponse.fromJsonFactory);

    return _systemDetectsystemsGet();
  }

  ///List all remote machines and local machine system info
  @Get(path: '/system/detectsystems')
  Future<chopper.Response<SystemDetectSystemsResponse>>
      _systemDetectsystemsGet();

  ///List all GPU Output (only works on d3 machine)
  Future<chopper.Response<SystemGetGPUOutputsReponse>> systemGpuoutputsGet() {
    generatedMapping.putIfAbsent(SystemGetGPUOutputsReponse,
        () => SystemGetGPUOutputsReponse.fromJsonFactory);

    return _systemGpuoutputsGet();
  }

  ///List all GPU Output (only works on d3 machine)
  @Get(path: '/system/gpuoutputs')
  Future<chopper.Response<SystemGetGPUOutputsReponse>> _systemGpuoutputsGet();

  ///List all Network Adapters
  Future<chopper.Response<SystemGetNetworkAdaptersResponse>>
      systemNetworkadaptersGet() {
    generatedMapping.putIfAbsent(SystemGetNetworkAdaptersResponse,
        () => SystemGetNetworkAdaptersResponse.fromJsonFactory);

    return _systemNetworkadaptersGet();
  }

  ///List all Network Adapters
  @Get(path: '/system/networkadapters')
  Future<chopper.Response<SystemGetNetworkAdaptersResponse>>
      _systemNetworkadaptersGet();

  ///List all projects
  Future<chopper.Response<SystemListProjectsResponse>> systemProjectsGet() {
    generatedMapping.putIfAbsent(SystemListProjectsResponse,
        () => SystemListProjectsResponse.fromJsonFactory);

    return _systemProjectsGet();
  }

  ///List all projects
  @Get(path: '/system/projects')
  Future<chopper.Response<SystemListProjectsResponse>> _systemProjectsGet();

  ///List all VFC Cards
  Future<chopper.Response<SystemGetVFCsResponse>> systemVfcsGet() {
    generatedMapping.putIfAbsent(
        SystemGetVFCsResponse, () => SystemGetVFCsResponse.fromJsonFactory);

    return _systemVfcsGet();
  }

  ///List all VFC Cards
  @Get(path: '/system/vfcs')
  Future<chopper.Response<SystemGetVFCsResponse>> _systemVfcsGet();
}

@JsonSerializable(explicitToJson: true)
class D3apiEmptyResponse {
  D3apiEmptyResponse({
    this.status,
  });

  factory D3apiEmptyResponse.fromJson(Map<String, dynamic> json) =>
      _$D3apiEmptyResponseFromJson(json);

  static const toJsonFactory = _$D3apiEmptyResponseToJson;
  Map<String, dynamic> toJson() => _$D3apiEmptyResponseToJson(this);

  @JsonKey(name: 'status', includeIfNull: false)
  final RpcStatus? status;
  static const fromJsonFactory = _$D3apiEmptyResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is D3apiEmptyResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^ runtimeType.hashCode;
}

extension $D3apiEmptyResponseExtension on D3apiEmptyResponse {
  D3apiEmptyResponse copyWith({RpcStatus? status}) {
    return D3apiEmptyResponse(status: status ?? this.status);
  }

  D3apiEmptyResponse copyWithWrapped({Wrapped<RpcStatus?>? status}) {
    return D3apiEmptyResponse(
        status: (status != null ? status.value : this.status));
  }
}

@JsonSerializable(explicitToJson: true)
class ProjectStartLocalProjectRequest {
  ProjectStartLocalProjectRequest({
    this.projectPath,
    this.soloMode,
    this.allowUpgrade,
  });

  factory ProjectStartLocalProjectRequest.fromJson(Map<String, dynamic> json) =>
      _$ProjectStartLocalProjectRequestFromJson(json);

  static const toJsonFactory = _$ProjectStartLocalProjectRequestToJson;
  Map<String, dynamic> toJson() =>
      _$ProjectStartLocalProjectRequestToJson(this);

  @JsonKey(name: 'projectPath', includeIfNull: false)
  final String? projectPath;
  @JsonKey(name: 'soloMode', includeIfNull: false)
  final bool? soloMode;
  @JsonKey(name: 'allowUpgrade', includeIfNull: false)
  final bool? allowUpgrade;
  static const fromJsonFactory = _$ProjectStartLocalProjectRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProjectStartLocalProjectRequest &&
            (identical(other.projectPath, projectPath) ||
                const DeepCollectionEquality()
                    .equals(other.projectPath, projectPath)) &&
            (identical(other.soloMode, soloMode) ||
                const DeepCollectionEquality()
                    .equals(other.soloMode, soloMode)) &&
            (identical(other.allowUpgrade, allowUpgrade) ||
                const DeepCollectionEquality()
                    .equals(other.allowUpgrade, allowUpgrade)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(projectPath) ^
      const DeepCollectionEquality().hash(soloMode) ^
      const DeepCollectionEquality().hash(allowUpgrade) ^
      runtimeType.hashCode;
}

extension $ProjectStartLocalProjectRequestExtension
    on ProjectStartLocalProjectRequest {
  ProjectStartLocalProjectRequest copyWith(
      {String? projectPath, bool? soloMode, bool? allowUpgrade}) {
    return ProjectStartLocalProjectRequest(
        projectPath: projectPath ?? this.projectPath,
        soloMode: soloMode ?? this.soloMode,
        allowUpgrade: allowUpgrade ?? this.allowUpgrade);
  }

  ProjectStartLocalProjectRequest copyWithWrapped(
      {Wrapped<String?>? projectPath,
      Wrapped<bool?>? soloMode,
      Wrapped<bool?>? allowUpgrade}) {
    return ProjectStartLocalProjectRequest(
        projectPath:
            (projectPath != null ? projectPath.value : this.projectPath),
        soloMode: (soloMode != null ? soloMode.value : this.soloMode),
        allowUpgrade:
            (allowUpgrade != null ? allowUpgrade.value : this.allowUpgrade));
  }
}

@JsonSerializable(explicitToJson: true)
class ProtobufAny {
  ProtobufAny({
    this.typeUrl,
    this.value,
  });

  factory ProtobufAny.fromJson(Map<String, dynamic> json) =>
      _$ProtobufAnyFromJson(json);

  static const toJsonFactory = _$ProtobufAnyToJson;
  Map<String, dynamic> toJson() => _$ProtobufAnyToJson(this);

  @JsonKey(name: 'type_url', includeIfNull: false)
  final String? typeUrl;
  @JsonKey(name: 'value', includeIfNull: false)
  final String? value;
  static const fromJsonFactory = _$ProtobufAnyFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProtobufAny &&
            (identical(other.typeUrl, typeUrl) ||
                const DeepCollectionEquality()
                    .equals(other.typeUrl, typeUrl)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(typeUrl) ^
      const DeepCollectionEquality().hash(value) ^
      runtimeType.hashCode;
}

extension $ProtobufAnyExtension on ProtobufAny {
  ProtobufAny copyWith({String? typeUrl, String? value}) {
    return ProtobufAny(
        typeUrl: typeUrl ?? this.typeUrl, value: value ?? this.value);
  }

  ProtobufAny copyWithWrapped(
      {Wrapped<String?>? typeUrl, Wrapped<String?>? value}) {
    return ProtobufAny(
        typeUrl: (typeUrl != null ? typeUrl.value : this.typeUrl),
        value: (value != null ? value.value : this.value));
  }
}

@JsonSerializable(explicitToJson: true)
class RpcStatus {
  RpcStatus({
    this.code,
    this.message,
    this.details,
  });

  factory RpcStatus.fromJson(Map<String, dynamic> json) =>
      _$RpcStatusFromJson(json);

  static const toJsonFactory = _$RpcStatusToJson;
  Map<String, dynamic> toJson() => _$RpcStatusToJson(this);

  @JsonKey(name: 'code', includeIfNull: false)
  final int? code;
  @JsonKey(name: 'message', includeIfNull: false)
  final String? message;
  @JsonKey(name: 'details', includeIfNull: false, defaultValue: <ProtobufAny>[])
  final List<ProtobufAny>? details;
  static const fromJsonFactory = _$RpcStatusFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RpcStatus &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality().equals(other.details, details)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(details) ^
      runtimeType.hashCode;
}

extension $RpcStatusExtension on RpcStatus {
  RpcStatus copyWith({int? code, String? message, List<ProtobufAny>? details}) {
    return RpcStatus(
        code: code ?? this.code,
        message: message ?? this.message,
        details: details ?? this.details);
  }

  RpcStatus copyWithWrapped(
      {Wrapped<int?>? code,
      Wrapped<String?>? message,
      Wrapped<List<ProtobufAny>?>? details}) {
    return RpcStatus(
        code: (code != null ? code.value : this.code),
        message: (message != null ? message.value : this.message),
        details: (details != null ? details.value : this.details));
  }
}

@JsonSerializable(explicitToJson: true)
class SystemD3VersionInfo {
  SystemD3VersionInfo({
    this.major,
    this.minor,
    this.hotfix,
    this.revision,
  });

  factory SystemD3VersionInfo.fromJson(Map<String, dynamic> json) =>
      _$SystemD3VersionInfoFromJson(json);

  static const toJsonFactory = _$SystemD3VersionInfoToJson;
  Map<String, dynamic> toJson() => _$SystemD3VersionInfoToJson(this);

  @JsonKey(name: 'major', includeIfNull: false)
  final int? major;
  @JsonKey(name: 'minor', includeIfNull: false)
  final int? minor;
  @JsonKey(name: 'hotfix', includeIfNull: false)
  final int? hotfix;
  @JsonKey(name: 'revision', includeIfNull: false)
  final int? revision;
  static const fromJsonFactory = _$SystemD3VersionInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SystemD3VersionInfo &&
            (identical(other.major, major) ||
                const DeepCollectionEquality().equals(other.major, major)) &&
            (identical(other.minor, minor) ||
                const DeepCollectionEquality().equals(other.minor, minor)) &&
            (identical(other.hotfix, hotfix) ||
                const DeepCollectionEquality().equals(other.hotfix, hotfix)) &&
            (identical(other.revision, revision) ||
                const DeepCollectionEquality()
                    .equals(other.revision, revision)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(major) ^
      const DeepCollectionEquality().hash(minor) ^
      const DeepCollectionEquality().hash(hotfix) ^
      const DeepCollectionEquality().hash(revision) ^
      runtimeType.hashCode;
}

extension $SystemD3VersionInfoExtension on SystemD3VersionInfo {
  SystemD3VersionInfo copyWith(
      {int? major, int? minor, int? hotfix, int? revision}) {
    return SystemD3VersionInfo(
        major: major ?? this.major,
        minor: minor ?? this.minor,
        hotfix: hotfix ?? this.hotfix,
        revision: revision ?? this.revision);
  }

  SystemD3VersionInfo copyWithWrapped(
      {Wrapped<int?>? major,
      Wrapped<int?>? minor,
      Wrapped<int?>? hotfix,
      Wrapped<int?>? revision}) {
    return SystemD3VersionInfo(
        major: (major != null ? major.value : this.major),
        minor: (minor != null ? minor.value : this.minor),
        hotfix: (hotfix != null ? hotfix.value : this.hotfix),
        revision: (revision != null ? revision.value : this.revision));
  }
}

@JsonSerializable(explicitToJson: true)
class SystemDetectSystemsResponse {
  SystemDetectSystemsResponse({
    this.status,
    this.result,
  });

  factory SystemDetectSystemsResponse.fromJson(Map<String, dynamic> json) =>
      _$SystemDetectSystemsResponseFromJson(json);

  static const toJsonFactory = _$SystemDetectSystemsResponseToJson;
  Map<String, dynamic> toJson() => _$SystemDetectSystemsResponseToJson(this);

  @JsonKey(name: 'status', includeIfNull: false)
  final RpcStatus? status;
  @JsonKey(
      name: 'result', includeIfNull: false, defaultValue: <SystemSystemInfo>[])
  final List<SystemSystemInfo>? result;
  static const fromJsonFactory = _$SystemDetectSystemsResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SystemDetectSystemsResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(result) ^
      runtimeType.hashCode;
}

extension $SystemDetectSystemsResponseExtension on SystemDetectSystemsResponse {
  SystemDetectSystemsResponse copyWith(
      {RpcStatus? status, List<SystemSystemInfo>? result}) {
    return SystemDetectSystemsResponse(
        status: status ?? this.status, result: result ?? this.result);
  }

  SystemDetectSystemsResponse copyWithWrapped(
      {Wrapped<RpcStatus?>? status, Wrapped<List<SystemSystemInfo>?>? result}) {
    return SystemDetectSystemsResponse(
        status: (status != null ? status.value : this.status),
        result: (result != null ? result.value : this.result));
  }
}

@JsonSerializable(explicitToJson: true)
class SystemGPUOutputInfo {
  SystemGPUOutputInfo({
    this.gpuPort,
    this.genlockState,
    this.emulated,
    this.resolution,
    this.refreshRate,
    this.bitDepth,
    this.colourFormat,
  });

  factory SystemGPUOutputInfo.fromJson(Map<String, dynamic> json) =>
      _$SystemGPUOutputInfoFromJson(json);

  static const toJsonFactory = _$SystemGPUOutputInfoToJson;
  Map<String, dynamic> toJson() => _$SystemGPUOutputInfoToJson(this);

  @JsonKey(name: 'gpuPort', includeIfNull: false)
  final int? gpuPort;
  @JsonKey(
    name: 'genlockState',
    includeIfNull: false,
    toJson: systemGenlockStateToJson,
    fromJson: systemGenlockStateFromJson,
  )
  final enums.SystemGenlockState? genlockState;
  @JsonKey(name: 'emulated', includeIfNull: false)
  final bool? emulated;
  @JsonKey(name: 'resolution', includeIfNull: false)
  final SystemResolution? resolution;
  @JsonKey(name: 'refreshRate', includeIfNull: false)
  final double? refreshRate;
  @JsonKey(name: 'bitDepth', includeIfNull: false)
  final int? bitDepth;
  @JsonKey(
    name: 'colourFormat',
    includeIfNull: false,
    toJson: systemAPIColorFormatToJson,
    fromJson: systemAPIColorFormatFromJson,
  )
  final enums.SystemAPIColorFormat? colourFormat;
  static const fromJsonFactory = _$SystemGPUOutputInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SystemGPUOutputInfo &&
            (identical(other.gpuPort, gpuPort) ||
                const DeepCollectionEquality()
                    .equals(other.gpuPort, gpuPort)) &&
            (identical(other.genlockState, genlockState) ||
                const DeepCollectionEquality()
                    .equals(other.genlockState, genlockState)) &&
            (identical(other.emulated, emulated) ||
                const DeepCollectionEquality()
                    .equals(other.emulated, emulated)) &&
            (identical(other.resolution, resolution) ||
                const DeepCollectionEquality()
                    .equals(other.resolution, resolution)) &&
            (identical(other.refreshRate, refreshRate) ||
                const DeepCollectionEquality()
                    .equals(other.refreshRate, refreshRate)) &&
            (identical(other.bitDepth, bitDepth) ||
                const DeepCollectionEquality()
                    .equals(other.bitDepth, bitDepth)) &&
            (identical(other.colourFormat, colourFormat) ||
                const DeepCollectionEquality()
                    .equals(other.colourFormat, colourFormat)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(gpuPort) ^
      const DeepCollectionEquality().hash(genlockState) ^
      const DeepCollectionEquality().hash(emulated) ^
      const DeepCollectionEquality().hash(resolution) ^
      const DeepCollectionEquality().hash(refreshRate) ^
      const DeepCollectionEquality().hash(bitDepth) ^
      const DeepCollectionEquality().hash(colourFormat) ^
      runtimeType.hashCode;
}

extension $SystemGPUOutputInfoExtension on SystemGPUOutputInfo {
  SystemGPUOutputInfo copyWith(
      {int? gpuPort,
      enums.SystemGenlockState? genlockState,
      bool? emulated,
      SystemResolution? resolution,
      double? refreshRate,
      int? bitDepth,
      enums.SystemAPIColorFormat? colourFormat}) {
    return SystemGPUOutputInfo(
        gpuPort: gpuPort ?? this.gpuPort,
        genlockState: genlockState ?? this.genlockState,
        emulated: emulated ?? this.emulated,
        resolution: resolution ?? this.resolution,
        refreshRate: refreshRate ?? this.refreshRate,
        bitDepth: bitDepth ?? this.bitDepth,
        colourFormat: colourFormat ?? this.colourFormat);
  }

  SystemGPUOutputInfo copyWithWrapped(
      {Wrapped<int?>? gpuPort,
      Wrapped<enums.SystemGenlockState?>? genlockState,
      Wrapped<bool?>? emulated,
      Wrapped<SystemResolution?>? resolution,
      Wrapped<double?>? refreshRate,
      Wrapped<int?>? bitDepth,
      Wrapped<enums.SystemAPIColorFormat?>? colourFormat}) {
    return SystemGPUOutputInfo(
        gpuPort: (gpuPort != null ? gpuPort.value : this.gpuPort),
        genlockState:
            (genlockState != null ? genlockState.value : this.genlockState),
        emulated: (emulated != null ? emulated.value : this.emulated),
        resolution: (resolution != null ? resolution.value : this.resolution),
        refreshRate:
            (refreshRate != null ? refreshRate.value : this.refreshRate),
        bitDepth: (bitDepth != null ? bitDepth.value : this.bitDepth),
        colourFormat:
            (colourFormat != null ? colourFormat.value : this.colourFormat));
  }
}

@JsonSerializable(explicitToJson: true)
class SystemGPUOutputsInfo {
  SystemGPUOutputsInfo({
    this.hostname,
    this.genlock,
    this.gpuOutputs,
  });

  factory SystemGPUOutputsInfo.fromJson(Map<String, dynamic> json) =>
      _$SystemGPUOutputsInfoFromJson(json);

  static const toJsonFactory = _$SystemGPUOutputsInfoToJson;
  Map<String, dynamic> toJson() => _$SystemGPUOutputsInfoToJson(this);

  @JsonKey(name: 'hostname', includeIfNull: false)
  final String? hostname;
  @JsonKey(name: 'genlock', includeIfNull: false)
  final SystemGenlockInfo? genlock;
  @JsonKey(
      name: 'gpuOutputs',
      includeIfNull: false,
      defaultValue: <SystemGPUOutputInfo>[])
  final List<SystemGPUOutputInfo>? gpuOutputs;
  static const fromJsonFactory = _$SystemGPUOutputsInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SystemGPUOutputsInfo &&
            (identical(other.hostname, hostname) ||
                const DeepCollectionEquality()
                    .equals(other.hostname, hostname)) &&
            (identical(other.genlock, genlock) ||
                const DeepCollectionEquality()
                    .equals(other.genlock, genlock)) &&
            (identical(other.gpuOutputs, gpuOutputs) ||
                const DeepCollectionEquality()
                    .equals(other.gpuOutputs, gpuOutputs)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(hostname) ^
      const DeepCollectionEquality().hash(genlock) ^
      const DeepCollectionEquality().hash(gpuOutputs) ^
      runtimeType.hashCode;
}

extension $SystemGPUOutputsInfoExtension on SystemGPUOutputsInfo {
  SystemGPUOutputsInfo copyWith(
      {String? hostname,
      SystemGenlockInfo? genlock,
      List<SystemGPUOutputInfo>? gpuOutputs}) {
    return SystemGPUOutputsInfo(
        hostname: hostname ?? this.hostname,
        genlock: genlock ?? this.genlock,
        gpuOutputs: gpuOutputs ?? this.gpuOutputs);
  }

  SystemGPUOutputsInfo copyWithWrapped(
      {Wrapped<String?>? hostname,
      Wrapped<SystemGenlockInfo?>? genlock,
      Wrapped<List<SystemGPUOutputInfo>?>? gpuOutputs}) {
    return SystemGPUOutputsInfo(
        hostname: (hostname != null ? hostname.value : this.hostname),
        genlock: (genlock != null ? genlock.value : this.genlock),
        gpuOutputs: (gpuOutputs != null ? gpuOutputs.value : this.gpuOutputs));
  }
}

@JsonSerializable(explicitToJson: true)
class SystemGenlockInfo {
  SystemGenlockInfo({
    this.frequency,
  });

  factory SystemGenlockInfo.fromJson(Map<String, dynamic> json) =>
      _$SystemGenlockInfoFromJson(json);

  static const toJsonFactory = _$SystemGenlockInfoToJson;
  Map<String, dynamic> toJson() => _$SystemGenlockInfoToJson(this);

  @JsonKey(name: 'frequency', includeIfNull: false)
  final double? frequency;
  static const fromJsonFactory = _$SystemGenlockInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SystemGenlockInfo &&
            (identical(other.frequency, frequency) ||
                const DeepCollectionEquality()
                    .equals(other.frequency, frequency)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(frequency) ^ runtimeType.hashCode;
}

extension $SystemGenlockInfoExtension on SystemGenlockInfo {
  SystemGenlockInfo copyWith({double? frequency}) {
    return SystemGenlockInfo(frequency: frequency ?? this.frequency);
  }

  SystemGenlockInfo copyWithWrapped({Wrapped<double?>? frequency}) {
    return SystemGenlockInfo(
        frequency: (frequency != null ? frequency.value : this.frequency));
  }
}

@JsonSerializable(explicitToJson: true)
class SystemGetGPUOutputsReponse {
  SystemGetGPUOutputsReponse({
    this.status,
    this.result,
  });

  factory SystemGetGPUOutputsReponse.fromJson(Map<String, dynamic> json) =>
      _$SystemGetGPUOutputsReponseFromJson(json);

  static const toJsonFactory = _$SystemGetGPUOutputsReponseToJson;
  Map<String, dynamic> toJson() => _$SystemGetGPUOutputsReponseToJson(this);

  @JsonKey(name: 'status', includeIfNull: false)
  final RpcStatus? status;
  @JsonKey(
      name: 'result',
      includeIfNull: false,
      defaultValue: <SystemGPUOutputsInfo>[])
  final List<SystemGPUOutputsInfo>? result;
  static const fromJsonFactory = _$SystemGetGPUOutputsReponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SystemGetGPUOutputsReponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(result) ^
      runtimeType.hashCode;
}

extension $SystemGetGPUOutputsReponseExtension on SystemGetGPUOutputsReponse {
  SystemGetGPUOutputsReponse copyWith(
      {RpcStatus? status, List<SystemGPUOutputsInfo>? result}) {
    return SystemGetGPUOutputsReponse(
        status: status ?? this.status, result: result ?? this.result);
  }

  SystemGetGPUOutputsReponse copyWithWrapped(
      {Wrapped<RpcStatus?>? status,
      Wrapped<List<SystemGPUOutputsInfo>?>? result}) {
    return SystemGetGPUOutputsReponse(
        status: (status != null ? status.value : this.status),
        result: (result != null ? result.value : this.result));
  }
}

@JsonSerializable(explicitToJson: true)
class SystemGetNetworkAdaptersResponse {
  SystemGetNetworkAdaptersResponse({
    this.status,
    this.result,
  });

  factory SystemGetNetworkAdaptersResponse.fromJson(
          Map<String, dynamic> json) =>
      _$SystemGetNetworkAdaptersResponseFromJson(json);

  static const toJsonFactory = _$SystemGetNetworkAdaptersResponseToJson;
  Map<String, dynamic> toJson() =>
      _$SystemGetNetworkAdaptersResponseToJson(this);

  @JsonKey(name: 'status', includeIfNull: false)
  final RpcStatus? status;
  @JsonKey(
      name: 'result',
      includeIfNull: false,
      defaultValue: <SystemNetAdapterInSystemsInfo>[])
  final List<SystemNetAdapterInSystemsInfo>? result;
  static const fromJsonFactory = _$SystemGetNetworkAdaptersResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SystemGetNetworkAdaptersResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(result) ^
      runtimeType.hashCode;
}

extension $SystemGetNetworkAdaptersResponseExtension
    on SystemGetNetworkAdaptersResponse {
  SystemGetNetworkAdaptersResponse copyWith(
      {RpcStatus? status, List<SystemNetAdapterInSystemsInfo>? result}) {
    return SystemGetNetworkAdaptersResponse(
        status: status ?? this.status, result: result ?? this.result);
  }

  SystemGetNetworkAdaptersResponse copyWithWrapped(
      {Wrapped<RpcStatus?>? status,
      Wrapped<List<SystemNetAdapterInSystemsInfo>?>? result}) {
    return SystemGetNetworkAdaptersResponse(
        status: (status != null ? status.value : this.status),
        result: (result != null ? result.value : this.result));
  }
}

@JsonSerializable(explicitToJson: true)
class SystemGetVFCsResponse {
  SystemGetVFCsResponse({
    this.status,
    this.result,
  });

  factory SystemGetVFCsResponse.fromJson(Map<String, dynamic> json) =>
      _$SystemGetVFCsResponseFromJson(json);

  static const toJsonFactory = _$SystemGetVFCsResponseToJson;
  Map<String, dynamic> toJson() => _$SystemGetVFCsResponseToJson(this);

  @JsonKey(name: 'status', includeIfNull: false)
  final RpcStatus? status;
  @JsonKey(
      name: 'result', includeIfNull: false, defaultValue: <SystemVFCInfo>[])
  final List<SystemVFCInfo>? result;
  static const fromJsonFactory = _$SystemGetVFCsResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SystemGetVFCsResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(result) ^
      runtimeType.hashCode;
}

extension $SystemGetVFCsResponseExtension on SystemGetVFCsResponse {
  SystemGetVFCsResponse copyWith(
      {RpcStatus? status, List<SystemVFCInfo>? result}) {
    return SystemGetVFCsResponse(
        status: status ?? this.status, result: result ?? this.result);
  }

  SystemGetVFCsResponse copyWithWrapped(
      {Wrapped<RpcStatus?>? status, Wrapped<List<SystemVFCInfo>?>? result}) {
    return SystemGetVFCsResponse(
        status: (status != null ? status.value : this.status),
        result: (result != null ? result.value : this.result));
  }
}

@JsonSerializable(explicitToJson: true)
class SystemIpAddressInfo {
  SystemIpAddressInfo({
    this.address,
    this.subnet,
    this.family,
    this.gateway,
  });

  factory SystemIpAddressInfo.fromJson(Map<String, dynamic> json) =>
      _$SystemIpAddressInfoFromJson(json);

  static const toJsonFactory = _$SystemIpAddressInfoToJson;
  Map<String, dynamic> toJson() => _$SystemIpAddressInfoToJson(this);

  @JsonKey(name: 'address', includeIfNull: false)
  final String? address;
  @JsonKey(name: 'subnet', includeIfNull: false)
  final String? subnet;
  @JsonKey(
    name: 'family',
    includeIfNull: false,
    toJson: systemIPFamilyToJson,
    fromJson: systemIPFamilyFromJson,
  )
  final enums.SystemIPFamily? family;
  @JsonKey(name: 'gateway', includeIfNull: false)
  final String? gateway;
  static const fromJsonFactory = _$SystemIpAddressInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SystemIpAddressInfo &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.subnet, subnet) ||
                const DeepCollectionEquality().equals(other.subnet, subnet)) &&
            (identical(other.family, family) ||
                const DeepCollectionEquality().equals(other.family, family)) &&
            (identical(other.gateway, gateway) ||
                const DeepCollectionEquality().equals(other.gateway, gateway)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(subnet) ^
      const DeepCollectionEquality().hash(family) ^
      const DeepCollectionEquality().hash(gateway) ^
      runtimeType.hashCode;
}

extension $SystemIpAddressInfoExtension on SystemIpAddressInfo {
  SystemIpAddressInfo copyWith(
      {String? address,
      String? subnet,
      enums.SystemIPFamily? family,
      String? gateway}) {
    return SystemIpAddressInfo(
        address: address ?? this.address,
        subnet: subnet ?? this.subnet,
        family: family ?? this.family,
        gateway: gateway ?? this.gateway);
  }

  SystemIpAddressInfo copyWithWrapped(
      {Wrapped<String?>? address,
      Wrapped<String?>? subnet,
      Wrapped<enums.SystemIPFamily?>? family,
      Wrapped<String?>? gateway}) {
    return SystemIpAddressInfo(
        address: (address != null ? address.value : this.address),
        subnet: (subnet != null ? subnet.value : this.subnet),
        family: (family != null ? family.value : this.family),
        gateway: (gateway != null ? gateway.value : this.gateway));
  }
}

@JsonSerializable(explicitToJson: true)
class SystemListProjectsResponse {
  SystemListProjectsResponse({
    this.status,
    this.result,
  });

  factory SystemListProjectsResponse.fromJson(Map<String, dynamic> json) =>
      _$SystemListProjectsResponseFromJson(json);

  static const toJsonFactory = _$SystemListProjectsResponseToJson;
  Map<String, dynamic> toJson() => _$SystemListProjectsResponseToJson(this);

  @JsonKey(name: 'status', includeIfNull: false)
  final RpcStatus? status;
  @JsonKey(
      name: 'result',
      includeIfNull: false,
      defaultValue: <SystemProjectsInSystemInfo>[])
  final List<SystemProjectsInSystemInfo>? result;
  static const fromJsonFactory = _$SystemListProjectsResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SystemListProjectsResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(result) ^
      runtimeType.hashCode;
}

extension $SystemListProjectsResponseExtension on SystemListProjectsResponse {
  SystemListProjectsResponse copyWith(
      {RpcStatus? status, List<SystemProjectsInSystemInfo>? result}) {
    return SystemListProjectsResponse(
        status: status ?? this.status, result: result ?? this.result);
  }

  SystemListProjectsResponse copyWithWrapped(
      {Wrapped<RpcStatus?>? status,
      Wrapped<List<SystemProjectsInSystemInfo>?>? result}) {
    return SystemListProjectsResponse(
        status: (status != null ? status.value : this.status),
        result: (result != null ? result.value : this.result));
  }
}

@JsonSerializable(explicitToJson: true)
class SystemNetAdapterInSystemsInfo {
  SystemNetAdapterInSystemsInfo({
    this.hostname,
    this.netAdapters,
  });

  factory SystemNetAdapterInSystemsInfo.fromJson(Map<String, dynamic> json) =>
      _$SystemNetAdapterInSystemsInfoFromJson(json);

  static const toJsonFactory = _$SystemNetAdapterInSystemsInfoToJson;
  Map<String, dynamic> toJson() => _$SystemNetAdapterInSystemsInfoToJson(this);

  @JsonKey(name: 'hostname', includeIfNull: false)
  final String? hostname;
  @JsonKey(
      name: 'netAdapters',
      includeIfNull: false,
      defaultValue: <SystemNetAdapterInfo>[])
  final List<SystemNetAdapterInfo>? netAdapters;
  static const fromJsonFactory = _$SystemNetAdapterInSystemsInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SystemNetAdapterInSystemsInfo &&
            (identical(other.hostname, hostname) ||
                const DeepCollectionEquality()
                    .equals(other.hostname, hostname)) &&
            (identical(other.netAdapters, netAdapters) ||
                const DeepCollectionEquality()
                    .equals(other.netAdapters, netAdapters)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(hostname) ^
      const DeepCollectionEquality().hash(netAdapters) ^
      runtimeType.hashCode;
}

extension $SystemNetAdapterInSystemsInfoExtension
    on SystemNetAdapterInSystemsInfo {
  SystemNetAdapterInSystemsInfo copyWith(
      {String? hostname, List<SystemNetAdapterInfo>? netAdapters}) {
    return SystemNetAdapterInSystemsInfo(
        hostname: hostname ?? this.hostname,
        netAdapters: netAdapters ?? this.netAdapters);
  }

  SystemNetAdapterInSystemsInfo copyWithWrapped(
      {Wrapped<String?>? hostname,
      Wrapped<List<SystemNetAdapterInfo>?>? netAdapters}) {
    return SystemNetAdapterInSystemsInfo(
        hostname: (hostname != null ? hostname.value : this.hostname),
        netAdapters:
            (netAdapters != null ? netAdapters.value : this.netAdapters));
  }
}

@JsonSerializable(explicitToJson: true)
class SystemNetAdapterInfo {
  SystemNetAdapterInfo({
    this.name,
    this.mac,
    this.enabled,
    this.dhcp,
    this.status,
    this.addresses,
  });

  factory SystemNetAdapterInfo.fromJson(Map<String, dynamic> json) =>
      _$SystemNetAdapterInfoFromJson(json);

  static const toJsonFactory = _$SystemNetAdapterInfoToJson;
  Map<String, dynamic> toJson() => _$SystemNetAdapterInfoToJson(this);

  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'mac', includeIfNull: false)
  final String? mac;
  @JsonKey(name: 'enabled', includeIfNull: false)
  final bool? enabled;
  @JsonKey(name: 'dhcp', includeIfNull: false)
  final bool? dhcp;
  @JsonKey(
    name: 'status',
    includeIfNull: false,
    toJson: systemOperationalStatusToJson,
    fromJson: systemOperationalStatusFromJson,
  )
  final enums.SystemOperationalStatus? status;
  @JsonKey(
      name: 'addresses',
      includeIfNull: false,
      defaultValue: <SystemIpAddressInfo>[])
  final List<SystemIpAddressInfo>? addresses;
  static const fromJsonFactory = _$SystemNetAdapterInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SystemNetAdapterInfo &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.mac, mac) ||
                const DeepCollectionEquality().equals(other.mac, mac)) &&
            (identical(other.enabled, enabled) ||
                const DeepCollectionEquality()
                    .equals(other.enabled, enabled)) &&
            (identical(other.dhcp, dhcp) ||
                const DeepCollectionEquality().equals(other.dhcp, dhcp)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.addresses, addresses) ||
                const DeepCollectionEquality()
                    .equals(other.addresses, addresses)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(mac) ^
      const DeepCollectionEquality().hash(enabled) ^
      const DeepCollectionEquality().hash(dhcp) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(addresses) ^
      runtimeType.hashCode;
}

extension $SystemNetAdapterInfoExtension on SystemNetAdapterInfo {
  SystemNetAdapterInfo copyWith(
      {String? name,
      String? mac,
      bool? enabled,
      bool? dhcp,
      enums.SystemOperationalStatus? status,
      List<SystemIpAddressInfo>? addresses}) {
    return SystemNetAdapterInfo(
        name: name ?? this.name,
        mac: mac ?? this.mac,
        enabled: enabled ?? this.enabled,
        dhcp: dhcp ?? this.dhcp,
        status: status ?? this.status,
        addresses: addresses ?? this.addresses);
  }

  SystemNetAdapterInfo copyWithWrapped(
      {Wrapped<String?>? name,
      Wrapped<String?>? mac,
      Wrapped<bool?>? enabled,
      Wrapped<bool?>? dhcp,
      Wrapped<enums.SystemOperationalStatus?>? status,
      Wrapped<List<SystemIpAddressInfo>?>? addresses}) {
    return SystemNetAdapterInfo(
        name: (name != null ? name.value : this.name),
        mac: (mac != null ? mac.value : this.mac),
        enabled: (enabled != null ? enabled.value : this.enabled),
        dhcp: (dhcp != null ? dhcp.value : this.dhcp),
        status: (status != null ? status.value : this.status),
        addresses: (addresses != null ? addresses.value : this.addresses));
  }
}

@JsonSerializable(explicitToJson: true)
class SystemProjectInfo {
  SystemProjectInfo({
    this.path,
    this.lastModified,
    this.version,
  });

  factory SystemProjectInfo.fromJson(Map<String, dynamic> json) =>
      _$SystemProjectInfoFromJson(json);

  static const toJsonFactory = _$SystemProjectInfoToJson;
  Map<String, dynamic> toJson() => _$SystemProjectInfoToJson(this);

  @JsonKey(name: 'path', includeIfNull: false)
  final String? path;
  @JsonKey(name: 'lastModified', includeIfNull: false)
  final String? lastModified;
  @JsonKey(name: 'version', includeIfNull: false)
  final SystemD3VersionInfo? version;
  static const fromJsonFactory = _$SystemProjectInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SystemProjectInfo &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.lastModified, lastModified) ||
                const DeepCollectionEquality()
                    .equals(other.lastModified, lastModified)) &&
            (identical(other.version, version) ||
                const DeepCollectionEquality().equals(other.version, version)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(lastModified) ^
      const DeepCollectionEquality().hash(version) ^
      runtimeType.hashCode;
}

extension $SystemProjectInfoExtension on SystemProjectInfo {
  SystemProjectInfo copyWith(
      {String? path, String? lastModified, SystemD3VersionInfo? version}) {
    return SystemProjectInfo(
        path: path ?? this.path,
        lastModified: lastModified ?? this.lastModified,
        version: version ?? this.version);
  }

  SystemProjectInfo copyWithWrapped(
      {Wrapped<String?>? path,
      Wrapped<String?>? lastModified,
      Wrapped<SystemD3VersionInfo?>? version}) {
    return SystemProjectInfo(
        path: (path != null ? path.value : this.path),
        lastModified:
            (lastModified != null ? lastModified.value : this.lastModified),
        version: (version != null ? version.value : this.version));
  }
}

@JsonSerializable(explicitToJson: true)
class SystemProjectsInSystemInfo {
  SystemProjectsInSystemInfo({
    this.hostname,
    this.lastProject,
    this.projects,
  });

  factory SystemProjectsInSystemInfo.fromJson(Map<String, dynamic> json) =>
      _$SystemProjectsInSystemInfoFromJson(json);

  static const toJsonFactory = _$SystemProjectsInSystemInfoToJson;
  Map<String, dynamic> toJson() => _$SystemProjectsInSystemInfoToJson(this);

  @JsonKey(name: 'hostname', includeIfNull: false)
  final String? hostname;
  @JsonKey(name: 'lastProject', includeIfNull: false)
  final String? lastProject;
  @JsonKey(
      name: 'projects',
      includeIfNull: false,
      defaultValue: <SystemProjectInfo>[])
  final List<SystemProjectInfo>? projects;
  static const fromJsonFactory = _$SystemProjectsInSystemInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SystemProjectsInSystemInfo &&
            (identical(other.hostname, hostname) ||
                const DeepCollectionEquality()
                    .equals(other.hostname, hostname)) &&
            (identical(other.lastProject, lastProject) ||
                const DeepCollectionEquality()
                    .equals(other.lastProject, lastProject)) &&
            (identical(other.projects, projects) ||
                const DeepCollectionEquality()
                    .equals(other.projects, projects)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(hostname) ^
      const DeepCollectionEquality().hash(lastProject) ^
      const DeepCollectionEquality().hash(projects) ^
      runtimeType.hashCode;
}

extension $SystemProjectsInSystemInfoExtension on SystemProjectsInSystemInfo {
  SystemProjectsInSystemInfo copyWith(
      {String? hostname,
      String? lastProject,
      List<SystemProjectInfo>? projects}) {
    return SystemProjectsInSystemInfo(
        hostname: hostname ?? this.hostname,
        lastProject: lastProject ?? this.lastProject,
        projects: projects ?? this.projects);
  }

  SystemProjectsInSystemInfo copyWithWrapped(
      {Wrapped<String?>? hostname,
      Wrapped<String?>? lastProject,
      Wrapped<List<SystemProjectInfo>?>? projects}) {
    return SystemProjectsInSystemInfo(
        hostname: (hostname != null ? hostname.value : this.hostname),
        lastProject:
            (lastProject != null ? lastProject.value : this.lastProject),
        projects: (projects != null ? projects.value : this.projects));
  }
}

@JsonSerializable(explicitToJson: true)
class SystemResolution {
  SystemResolution({
    this.width,
    this.height,
  });

  factory SystemResolution.fromJson(Map<String, dynamic> json) =>
      _$SystemResolutionFromJson(json);

  static const toJsonFactory = _$SystemResolutionToJson;
  Map<String, dynamic> toJson() => _$SystemResolutionToJson(this);

  @JsonKey(name: 'width', includeIfNull: false)
  final int? width;
  @JsonKey(name: 'height', includeIfNull: false)
  final int? height;
  static const fromJsonFactory = _$SystemResolutionFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SystemResolution &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      runtimeType.hashCode;
}

extension $SystemResolutionExtension on SystemResolution {
  SystemResolution copyWith({int? width, int? height}) {
    return SystemResolution(
        width: width ?? this.width, height: height ?? this.height);
  }

  SystemResolution copyWithWrapped(
      {Wrapped<int?>? width, Wrapped<int?>? height}) {
    return SystemResolution(
        width: (width != null ? width.value : this.width),
        height: (height != null ? height.value : this.height));
  }
}

@JsonSerializable(explicitToJson: true)
class SystemSystemInfo {
  SystemSystemInfo({
    this.hostname,
    this.type,
    this.version,
    this.runningProject,
    this.ipAddress,
    this.isDesignerRunning,
    this.isServiceRunning,
    this.isManagerRunning,
    this.isNotchHostRunning,
  });

  factory SystemSystemInfo.fromJson(Map<String, dynamic> json) =>
      _$SystemSystemInfoFromJson(json);

  static const toJsonFactory = _$SystemSystemInfoToJson;
  Map<String, dynamic> toJson() => _$SystemSystemInfoToJson(this);

  @JsonKey(name: 'hostname', includeIfNull: false)
  final String? hostname;
  @JsonKey(name: 'type', includeIfNull: false)
  final String? type;
  @JsonKey(name: 'version', includeIfNull: false)
  final SystemD3VersionInfo? version;
  @JsonKey(name: 'runningProject', includeIfNull: false)
  final String? runningProject;
  @JsonKey(name: 'ipAddress', includeIfNull: false)
  final String? ipAddress;
  @JsonKey(name: 'isDesignerRunning', includeIfNull: false)
  final bool? isDesignerRunning;
  @JsonKey(name: 'isServiceRunning', includeIfNull: false)
  final bool? isServiceRunning;
  @JsonKey(name: 'isManagerRunning', includeIfNull: false)
  final bool? isManagerRunning;
  @JsonKey(name: 'isNotchHostRunning', includeIfNull: false)
  final bool? isNotchHostRunning;
  static const fromJsonFactory = _$SystemSystemInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SystemSystemInfo &&
            (identical(other.hostname, hostname) ||
                const DeepCollectionEquality()
                    .equals(other.hostname, hostname)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.version, version) ||
                const DeepCollectionEquality()
                    .equals(other.version, version)) &&
            (identical(other.runningProject, runningProject) ||
                const DeepCollectionEquality()
                    .equals(other.runningProject, runningProject)) &&
            (identical(other.ipAddress, ipAddress) ||
                const DeepCollectionEquality()
                    .equals(other.ipAddress, ipAddress)) &&
            (identical(other.isDesignerRunning, isDesignerRunning) ||
                const DeepCollectionEquality()
                    .equals(other.isDesignerRunning, isDesignerRunning)) &&
            (identical(other.isServiceRunning, isServiceRunning) ||
                const DeepCollectionEquality()
                    .equals(other.isServiceRunning, isServiceRunning)) &&
            (identical(other.isManagerRunning, isManagerRunning) ||
                const DeepCollectionEquality()
                    .equals(other.isManagerRunning, isManagerRunning)) &&
            (identical(other.isNotchHostRunning, isNotchHostRunning) ||
                const DeepCollectionEquality()
                    .equals(other.isNotchHostRunning, isNotchHostRunning)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(hostname) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(version) ^
      const DeepCollectionEquality().hash(runningProject) ^
      const DeepCollectionEquality().hash(ipAddress) ^
      const DeepCollectionEquality().hash(isDesignerRunning) ^
      const DeepCollectionEquality().hash(isServiceRunning) ^
      const DeepCollectionEquality().hash(isManagerRunning) ^
      const DeepCollectionEquality().hash(isNotchHostRunning) ^
      runtimeType.hashCode;
}

extension $SystemSystemInfoExtension on SystemSystemInfo {
  SystemSystemInfo copyWith(
      {String? hostname,
      String? type,
      SystemD3VersionInfo? version,
      String? runningProject,
      String? ipAddress,
      bool? isDesignerRunning,
      bool? isServiceRunning,
      bool? isManagerRunning,
      bool? isNotchHostRunning}) {
    return SystemSystemInfo(
        hostname: hostname ?? this.hostname,
        type: type ?? this.type,
        version: version ?? this.version,
        runningProject: runningProject ?? this.runningProject,
        ipAddress: ipAddress ?? this.ipAddress,
        isDesignerRunning: isDesignerRunning ?? this.isDesignerRunning,
        isServiceRunning: isServiceRunning ?? this.isServiceRunning,
        isManagerRunning: isManagerRunning ?? this.isManagerRunning,
        isNotchHostRunning: isNotchHostRunning ?? this.isNotchHostRunning);
  }

  SystemSystemInfo copyWithWrapped(
      {Wrapped<String?>? hostname,
      Wrapped<String?>? type,
      Wrapped<SystemD3VersionInfo?>? version,
      Wrapped<String?>? runningProject,
      Wrapped<String?>? ipAddress,
      Wrapped<bool?>? isDesignerRunning,
      Wrapped<bool?>? isServiceRunning,
      Wrapped<bool?>? isManagerRunning,
      Wrapped<bool?>? isNotchHostRunning}) {
    return SystemSystemInfo(
        hostname: (hostname != null ? hostname.value : this.hostname),
        type: (type != null ? type.value : this.type),
        version: (version != null ? version.value : this.version),
        runningProject: (runningProject != null
            ? runningProject.value
            : this.runningProject),
        ipAddress: (ipAddress != null ? ipAddress.value : this.ipAddress),
        isDesignerRunning: (isDesignerRunning != null
            ? isDesignerRunning.value
            : this.isDesignerRunning),
        isServiceRunning: (isServiceRunning != null
            ? isServiceRunning.value
            : this.isServiceRunning),
        isManagerRunning: (isManagerRunning != null
            ? isManagerRunning.value
            : this.isManagerRunning),
        isNotchHostRunning: (isNotchHostRunning != null
            ? isNotchHostRunning.value
            : this.isNotchHostRunning));
  }
}

@JsonSerializable(explicitToJson: true)
class SystemVFCCard {
  SystemVFCCard({
    this.slot,
    this.type,
    this.firmwareVersion,
    this.fpgaVersion,
    this.splitMode,
    this.generation,
    this.ports,
  });

  factory SystemVFCCard.fromJson(Map<String, dynamic> json) =>
      _$SystemVFCCardFromJson(json);

  static const toJsonFactory = _$SystemVFCCardToJson;
  Map<String, dynamic> toJson() => _$SystemVFCCardToJson(this);

  @JsonKey(name: 'slot', includeIfNull: false)
  final int? slot;
  @JsonKey(
    name: 'type',
    includeIfNull: false,
    toJson: systemVFCTypeToJson,
    fromJson: systemVFCTypeFromJson,
  )
  final enums.SystemVFCType? type;
  @JsonKey(name: 'firmwareVersion', includeIfNull: false)
  final String? firmwareVersion;
  @JsonKey(name: 'fpgaVersion', includeIfNull: false)
  final String? fpgaVersion;
  @JsonKey(
    name: 'splitMode',
    includeIfNull: false,
    toJson: systemVFCSplitModeToJson,
    fromJson: systemVFCSplitModeFromJson,
  )
  final enums.SystemVFCSplitMode? splitMode;
  @JsonKey(
    name: 'generation',
    includeIfNull: false,
    toJson: systemAPIVFCGenerationToJson,
    fromJson: systemAPIVFCGenerationFromJson,
  )
  final enums.SystemAPIVFCGeneration? generation;
  @JsonKey(name: 'ports', includeIfNull: false)
  final SystemVFCPorts? ports;
  static const fromJsonFactory = _$SystemVFCCardFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SystemVFCCard &&
            (identical(other.slot, slot) ||
                const DeepCollectionEquality().equals(other.slot, slot)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.firmwareVersion, firmwareVersion) ||
                const DeepCollectionEquality()
                    .equals(other.firmwareVersion, firmwareVersion)) &&
            (identical(other.fpgaVersion, fpgaVersion) ||
                const DeepCollectionEquality()
                    .equals(other.fpgaVersion, fpgaVersion)) &&
            (identical(other.splitMode, splitMode) ||
                const DeepCollectionEquality()
                    .equals(other.splitMode, splitMode)) &&
            (identical(other.generation, generation) ||
                const DeepCollectionEquality()
                    .equals(other.generation, generation)) &&
            (identical(other.ports, ports) ||
                const DeepCollectionEquality().equals(other.ports, ports)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(slot) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(firmwareVersion) ^
      const DeepCollectionEquality().hash(fpgaVersion) ^
      const DeepCollectionEquality().hash(splitMode) ^
      const DeepCollectionEquality().hash(generation) ^
      const DeepCollectionEquality().hash(ports) ^
      runtimeType.hashCode;
}

extension $SystemVFCCardExtension on SystemVFCCard {
  SystemVFCCard copyWith(
      {int? slot,
      enums.SystemVFCType? type,
      String? firmwareVersion,
      String? fpgaVersion,
      enums.SystemVFCSplitMode? splitMode,
      enums.SystemAPIVFCGeneration? generation,
      SystemVFCPorts? ports}) {
    return SystemVFCCard(
        slot: slot ?? this.slot,
        type: type ?? this.type,
        firmwareVersion: firmwareVersion ?? this.firmwareVersion,
        fpgaVersion: fpgaVersion ?? this.fpgaVersion,
        splitMode: splitMode ?? this.splitMode,
        generation: generation ?? this.generation,
        ports: ports ?? this.ports);
  }

  SystemVFCCard copyWithWrapped(
      {Wrapped<int?>? slot,
      Wrapped<enums.SystemVFCType?>? type,
      Wrapped<String?>? firmwareVersion,
      Wrapped<String?>? fpgaVersion,
      Wrapped<enums.SystemVFCSplitMode?>? splitMode,
      Wrapped<enums.SystemAPIVFCGeneration?>? generation,
      Wrapped<SystemVFCPorts?>? ports}) {
    return SystemVFCCard(
        slot: (slot != null ? slot.value : this.slot),
        type: (type != null ? type.value : this.type),
        firmwareVersion: (firmwareVersion != null
            ? firmwareVersion.value
            : this.firmwareVersion),
        fpgaVersion:
            (fpgaVersion != null ? fpgaVersion.value : this.fpgaVersion),
        splitMode: (splitMode != null ? splitMode.value : this.splitMode),
        generation: (generation != null ? generation.value : this.generation),
        ports: (ports != null ? ports.value : this.ports));
  }
}

@JsonSerializable(explicitToJson: true)
class SystemVFCInfo {
  SystemVFCInfo({
    this.hostname,
    this.backplaneVersion,
    this.cards,
  });

  factory SystemVFCInfo.fromJson(Map<String, dynamic> json) =>
      _$SystemVFCInfoFromJson(json);

  static const toJsonFactory = _$SystemVFCInfoToJson;
  Map<String, dynamic> toJson() => _$SystemVFCInfoToJson(this);

  @JsonKey(name: 'hostname', includeIfNull: false)
  final String? hostname;
  @JsonKey(
    name: 'backplaneVersion',
    includeIfNull: false,
    toJson: systemAPIBPModelToJson,
    fromJson: systemAPIBPModelFromJson,
  )
  final enums.SystemAPIBPModel? backplaneVersion;
  @JsonKey(name: 'cards', includeIfNull: false, defaultValue: <SystemVFCCard>[])
  final List<SystemVFCCard>? cards;
  static const fromJsonFactory = _$SystemVFCInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SystemVFCInfo &&
            (identical(other.hostname, hostname) ||
                const DeepCollectionEquality()
                    .equals(other.hostname, hostname)) &&
            (identical(other.backplaneVersion, backplaneVersion) ||
                const DeepCollectionEquality()
                    .equals(other.backplaneVersion, backplaneVersion)) &&
            (identical(other.cards, cards) ||
                const DeepCollectionEquality().equals(other.cards, cards)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(hostname) ^
      const DeepCollectionEquality().hash(backplaneVersion) ^
      const DeepCollectionEquality().hash(cards) ^
      runtimeType.hashCode;
}

extension $SystemVFCInfoExtension on SystemVFCInfo {
  SystemVFCInfo copyWith(
      {String? hostname,
      enums.SystemAPIBPModel? backplaneVersion,
      List<SystemVFCCard>? cards}) {
    return SystemVFCInfo(
        hostname: hostname ?? this.hostname,
        backplaneVersion: backplaneVersion ?? this.backplaneVersion,
        cards: cards ?? this.cards);
  }

  SystemVFCInfo copyWithWrapped(
      {Wrapped<String?>? hostname,
      Wrapped<enums.SystemAPIBPModel?>? backplaneVersion,
      Wrapped<List<SystemVFCCard>?>? cards}) {
    return SystemVFCInfo(
        hostname: (hostname != null ? hostname.value : this.hostname),
        backplaneVersion: (backplaneVersion != null
            ? backplaneVersion.value
            : this.backplaneVersion),
        cards: (cards != null ? cards.value : this.cards));
  }
}

@JsonSerializable(explicitToJson: true)
class SystemVFCPort {
  SystemVFCPort({
    this.resolution,
    this.refreshRate,
    this.name,
  });

  factory SystemVFCPort.fromJson(Map<String, dynamic> json) =>
      _$SystemVFCPortFromJson(json);

  static const toJsonFactory = _$SystemVFCPortToJson;
  Map<String, dynamic> toJson() => _$SystemVFCPortToJson(this);

  @JsonKey(name: 'resolution', includeIfNull: false)
  final SystemResolution? resolution;
  @JsonKey(name: 'RefreshRate', includeIfNull: false)
  final double? refreshRate;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  static const fromJsonFactory = _$SystemVFCPortFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SystemVFCPort &&
            (identical(other.resolution, resolution) ||
                const DeepCollectionEquality()
                    .equals(other.resolution, resolution)) &&
            (identical(other.refreshRate, refreshRate) ||
                const DeepCollectionEquality()
                    .equals(other.refreshRate, refreshRate)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(resolution) ^
      const DeepCollectionEquality().hash(refreshRate) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $SystemVFCPortExtension on SystemVFCPort {
  SystemVFCPort copyWith(
      {SystemResolution? resolution, double? refreshRate, String? name}) {
    return SystemVFCPort(
        resolution: resolution ?? this.resolution,
        refreshRate: refreshRate ?? this.refreshRate,
        name: name ?? this.name);
  }

  SystemVFCPort copyWithWrapped(
      {Wrapped<SystemResolution?>? resolution,
      Wrapped<double?>? refreshRate,
      Wrapped<String?>? name}) {
    return SystemVFCPort(
        resolution: (resolution != null ? resolution.value : this.resolution),
        refreshRate:
            (refreshRate != null ? refreshRate.value : this.refreshRate),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class SystemVFCPorts {
  SystemVFCPorts({
    this.a,
    this.b,
    this.c,
    this.d,
  });

  factory SystemVFCPorts.fromJson(Map<String, dynamic> json) =>
      _$SystemVFCPortsFromJson(json);

  static const toJsonFactory = _$SystemVFCPortsToJson;
  Map<String, dynamic> toJson() => _$SystemVFCPortsToJson(this);

  @JsonKey(name: 'a', includeIfNull: false)
  final SystemVFCPort? a;
  @JsonKey(name: 'b', includeIfNull: false)
  final SystemVFCPort? b;
  @JsonKey(name: 'c', includeIfNull: false)
  final SystemVFCPort? c;
  @JsonKey(name: 'd', includeIfNull: false)
  final SystemVFCPort? d;
  static const fromJsonFactory = _$SystemVFCPortsFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SystemVFCPorts &&
            (identical(other.a, a) ||
                const DeepCollectionEquality().equals(other.a, a)) &&
            (identical(other.b, b) ||
                const DeepCollectionEquality().equals(other.b, b)) &&
            (identical(other.c, c) ||
                const DeepCollectionEquality().equals(other.c, c)) &&
            (identical(other.d, d) ||
                const DeepCollectionEquality().equals(other.d, d)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(a) ^
      const DeepCollectionEquality().hash(b) ^
      const DeepCollectionEquality().hash(c) ^
      const DeepCollectionEquality().hash(d) ^
      runtimeType.hashCode;
}

extension $SystemVFCPortsExtension on SystemVFCPorts {
  SystemVFCPorts copyWith(
      {SystemVFCPort? a,
      SystemVFCPort? b,
      SystemVFCPort? c,
      SystemVFCPort? d}) {
    return SystemVFCPorts(
        a: a ?? this.a, b: b ?? this.b, c: c ?? this.c, d: d ?? this.d);
  }

  SystemVFCPorts copyWithWrapped(
      {Wrapped<SystemVFCPort?>? a,
      Wrapped<SystemVFCPort?>? b,
      Wrapped<SystemVFCPort?>? c,
      Wrapped<SystemVFCPort?>? d}) {
    return SystemVFCPorts(
        a: (a != null ? a.value : this.a),
        b: (b != null ? b.value : this.b),
        c: (c != null ? c.value : this.c),
        d: (d != null ? d.value : this.d));
  }
}

String? systemAPIBPModelToJson(enums.SystemAPIBPModel? systemAPIBPModel) {
  return systemAPIBPModel?.value;
}

enums.SystemAPIBPModel systemAPIBPModelFromJson(
  Object? systemAPIBPModel, [
  enums.SystemAPIBPModel? defaultValue,
]) {
  return enums.SystemAPIBPModel.values
          .firstWhereOrNull((e) => e.value == systemAPIBPModel) ??
      defaultValue ??
      enums.SystemAPIBPModel.swaggerGeneratedUnknown;
}

List<String> systemAPIBPModelListToJson(
    List<enums.SystemAPIBPModel>? systemAPIBPModel) {
  if (systemAPIBPModel == null) {
    return [];
  }

  return systemAPIBPModel.map((e) => e.value!).toList();
}

List<enums.SystemAPIBPModel> systemAPIBPModelListFromJson(
  List? systemAPIBPModel, [
  List<enums.SystemAPIBPModel>? defaultValue,
]) {
  if (systemAPIBPModel == null) {
    return defaultValue ?? [];
  }

  return systemAPIBPModel
      .map((e) => systemAPIBPModelFromJson(e.toString()))
      .toList();
}

List<enums.SystemAPIBPModel>? systemAPIBPModelNullableListFromJson(
  List? systemAPIBPModel, [
  List<enums.SystemAPIBPModel>? defaultValue,
]) {
  if (systemAPIBPModel == null) {
    return defaultValue;
  }

  return systemAPIBPModel
      .map((e) => systemAPIBPModelFromJson(e.toString()))
      .toList();
}

String? systemAPIColorFormatToJson(
    enums.SystemAPIColorFormat? systemAPIColorFormat) {
  return systemAPIColorFormat?.value;
}

enums.SystemAPIColorFormat systemAPIColorFormatFromJson(
  Object? systemAPIColorFormat, [
  enums.SystemAPIColorFormat? defaultValue,
]) {
  return enums.SystemAPIColorFormat.values
          .firstWhereOrNull((e) => e.value == systemAPIColorFormat) ??
      defaultValue ??
      enums.SystemAPIColorFormat.swaggerGeneratedUnknown;
}

List<String> systemAPIColorFormatListToJson(
    List<enums.SystemAPIColorFormat>? systemAPIColorFormat) {
  if (systemAPIColorFormat == null) {
    return [];
  }

  return systemAPIColorFormat.map((e) => e.value!).toList();
}

List<enums.SystemAPIColorFormat> systemAPIColorFormatListFromJson(
  List? systemAPIColorFormat, [
  List<enums.SystemAPIColorFormat>? defaultValue,
]) {
  if (systemAPIColorFormat == null) {
    return defaultValue ?? [];
  }

  return systemAPIColorFormat
      .map((e) => systemAPIColorFormatFromJson(e.toString()))
      .toList();
}

List<enums.SystemAPIColorFormat>? systemAPIColorFormatNullableListFromJson(
  List? systemAPIColorFormat, [
  List<enums.SystemAPIColorFormat>? defaultValue,
]) {
  if (systemAPIColorFormat == null) {
    return defaultValue;
  }

  return systemAPIColorFormat
      .map((e) => systemAPIColorFormatFromJson(e.toString()))
      .toList();
}

String? systemAPIVFCGenerationToJson(
    enums.SystemAPIVFCGeneration? systemAPIVFCGeneration) {
  return systemAPIVFCGeneration?.value;
}

enums.SystemAPIVFCGeneration systemAPIVFCGenerationFromJson(
  Object? systemAPIVFCGeneration, [
  enums.SystemAPIVFCGeneration? defaultValue,
]) {
  return enums.SystemAPIVFCGeneration.values
          .firstWhereOrNull((e) => e.value == systemAPIVFCGeneration) ??
      defaultValue ??
      enums.SystemAPIVFCGeneration.swaggerGeneratedUnknown;
}

List<String> systemAPIVFCGenerationListToJson(
    List<enums.SystemAPIVFCGeneration>? systemAPIVFCGeneration) {
  if (systemAPIVFCGeneration == null) {
    return [];
  }

  return systemAPIVFCGeneration.map((e) => e.value!).toList();
}

List<enums.SystemAPIVFCGeneration> systemAPIVFCGenerationListFromJson(
  List? systemAPIVFCGeneration, [
  List<enums.SystemAPIVFCGeneration>? defaultValue,
]) {
  if (systemAPIVFCGeneration == null) {
    return defaultValue ?? [];
  }

  return systemAPIVFCGeneration
      .map((e) => systemAPIVFCGenerationFromJson(e.toString()))
      .toList();
}

List<enums.SystemAPIVFCGeneration>? systemAPIVFCGenerationNullableListFromJson(
  List? systemAPIVFCGeneration, [
  List<enums.SystemAPIVFCGeneration>? defaultValue,
]) {
  if (systemAPIVFCGeneration == null) {
    return defaultValue;
  }

  return systemAPIVFCGeneration
      .map((e) => systemAPIVFCGenerationFromJson(e.toString()))
      .toList();
}

String? systemGenlockStateToJson(enums.SystemGenlockState? systemGenlockState) {
  return systemGenlockState?.value;
}

enums.SystemGenlockState systemGenlockStateFromJson(
  Object? systemGenlockState, [
  enums.SystemGenlockState? defaultValue,
]) {
  return enums.SystemGenlockState.values
          .firstWhereOrNull((e) => e.value == systemGenlockState) ??
      defaultValue ??
      enums.SystemGenlockState.swaggerGeneratedUnknown;
}

List<String> systemGenlockStateListToJson(
    List<enums.SystemGenlockState>? systemGenlockState) {
  if (systemGenlockState == null) {
    return [];
  }

  return systemGenlockState.map((e) => e.value!).toList();
}

List<enums.SystemGenlockState> systemGenlockStateListFromJson(
  List? systemGenlockState, [
  List<enums.SystemGenlockState>? defaultValue,
]) {
  if (systemGenlockState == null) {
    return defaultValue ?? [];
  }

  return systemGenlockState
      .map((e) => systemGenlockStateFromJson(e.toString()))
      .toList();
}

List<enums.SystemGenlockState>? systemGenlockStateNullableListFromJson(
  List? systemGenlockState, [
  List<enums.SystemGenlockState>? defaultValue,
]) {
  if (systemGenlockState == null) {
    return defaultValue;
  }

  return systemGenlockState
      .map((e) => systemGenlockStateFromJson(e.toString()))
      .toList();
}

String? systemIPFamilyToJson(enums.SystemIPFamily? systemIPFamily) {
  return systemIPFamily?.value;
}

enums.SystemIPFamily systemIPFamilyFromJson(
  Object? systemIPFamily, [
  enums.SystemIPFamily? defaultValue,
]) {
  return enums.SystemIPFamily.values
          .firstWhereOrNull((e) => e.value == systemIPFamily) ??
      defaultValue ??
      enums.SystemIPFamily.swaggerGeneratedUnknown;
}

List<String> systemIPFamilyListToJson(
    List<enums.SystemIPFamily>? systemIPFamily) {
  if (systemIPFamily == null) {
    return [];
  }

  return systemIPFamily.map((e) => e.value!).toList();
}

List<enums.SystemIPFamily> systemIPFamilyListFromJson(
  List? systemIPFamily, [
  List<enums.SystemIPFamily>? defaultValue,
]) {
  if (systemIPFamily == null) {
    return defaultValue ?? [];
  }

  return systemIPFamily
      .map((e) => systemIPFamilyFromJson(e.toString()))
      .toList();
}

List<enums.SystemIPFamily>? systemIPFamilyNullableListFromJson(
  List? systemIPFamily, [
  List<enums.SystemIPFamily>? defaultValue,
]) {
  if (systemIPFamily == null) {
    return defaultValue;
  }

  return systemIPFamily
      .map((e) => systemIPFamilyFromJson(e.toString()))
      .toList();
}

String? systemOperationalStatusToJson(
    enums.SystemOperationalStatus? systemOperationalStatus) {
  return systemOperationalStatus?.value;
}

enums.SystemOperationalStatus systemOperationalStatusFromJson(
  Object? systemOperationalStatus, [
  enums.SystemOperationalStatus? defaultValue,
]) {
  return enums.SystemOperationalStatus.values
          .firstWhereOrNull((e) => e.value == systemOperationalStatus) ??
      defaultValue ??
      enums.SystemOperationalStatus.swaggerGeneratedUnknown;
}

List<String> systemOperationalStatusListToJson(
    List<enums.SystemOperationalStatus>? systemOperationalStatus) {
  if (systemOperationalStatus == null) {
    return [];
  }

  return systemOperationalStatus.map((e) => e.value!).toList();
}

List<enums.SystemOperationalStatus> systemOperationalStatusListFromJson(
  List? systemOperationalStatus, [
  List<enums.SystemOperationalStatus>? defaultValue,
]) {
  if (systemOperationalStatus == null) {
    return defaultValue ?? [];
  }

  return systemOperationalStatus
      .map((e) => systemOperationalStatusFromJson(e.toString()))
      .toList();
}

List<enums.SystemOperationalStatus>?
    systemOperationalStatusNullableListFromJson(
  List? systemOperationalStatus, [
  List<enums.SystemOperationalStatus>? defaultValue,
]) {
  if (systemOperationalStatus == null) {
    return defaultValue;
  }

  return systemOperationalStatus
      .map((e) => systemOperationalStatusFromJson(e.toString()))
      .toList();
}

String? systemVFCSplitModeToJson(enums.SystemVFCSplitMode? systemVFCSplitMode) {
  return systemVFCSplitMode?.value;
}

enums.SystemVFCSplitMode systemVFCSplitModeFromJson(
  Object? systemVFCSplitMode, [
  enums.SystemVFCSplitMode? defaultValue,
]) {
  return enums.SystemVFCSplitMode.values
          .firstWhereOrNull((e) => e.value == systemVFCSplitMode) ??
      defaultValue ??
      enums.SystemVFCSplitMode.swaggerGeneratedUnknown;
}

List<String> systemVFCSplitModeListToJson(
    List<enums.SystemVFCSplitMode>? systemVFCSplitMode) {
  if (systemVFCSplitMode == null) {
    return [];
  }

  return systemVFCSplitMode.map((e) => e.value!).toList();
}

List<enums.SystemVFCSplitMode> systemVFCSplitModeListFromJson(
  List? systemVFCSplitMode, [
  List<enums.SystemVFCSplitMode>? defaultValue,
]) {
  if (systemVFCSplitMode == null) {
    return defaultValue ?? [];
  }

  return systemVFCSplitMode
      .map((e) => systemVFCSplitModeFromJson(e.toString()))
      .toList();
}

List<enums.SystemVFCSplitMode>? systemVFCSplitModeNullableListFromJson(
  List? systemVFCSplitMode, [
  List<enums.SystemVFCSplitMode>? defaultValue,
]) {
  if (systemVFCSplitMode == null) {
    return defaultValue;
  }

  return systemVFCSplitMode
      .map((e) => systemVFCSplitModeFromJson(e.toString()))
      .toList();
}

String? systemVFCTypeToJson(enums.SystemVFCType? systemVFCType) {
  return systemVFCType?.value;
}

enums.SystemVFCType systemVFCTypeFromJson(
  Object? systemVFCType, [
  enums.SystemVFCType? defaultValue,
]) {
  return enums.SystemVFCType.values
          .firstWhereOrNull((e) => e.value == systemVFCType) ??
      defaultValue ??
      enums.SystemVFCType.swaggerGeneratedUnknown;
}

List<String> systemVFCTypeListToJson(List<enums.SystemVFCType>? systemVFCType) {
  if (systemVFCType == null) {
    return [];
  }

  return systemVFCType.map((e) => e.value!).toList();
}

List<enums.SystemVFCType> systemVFCTypeListFromJson(
  List? systemVFCType, [
  List<enums.SystemVFCType>? defaultValue,
]) {
  if (systemVFCType == null) {
    return defaultValue ?? [];
  }

  return systemVFCType.map((e) => systemVFCTypeFromJson(e.toString())).toList();
}

List<enums.SystemVFCType>? systemVFCTypeNullableListFromJson(
  List? systemVFCType, [
  List<enums.SystemVFCType>? defaultValue,
]) {
  if (systemVFCType == null) {
    return defaultValue;
  }

  return systemVFCType.map((e) => systemVFCTypeFromJson(e.toString())).toList();
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
