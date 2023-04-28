// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

D3apiEmptyResponse _$D3apiEmptyResponseFromJson(Map<String, dynamic> json) =>
    D3apiEmptyResponse(
      status: json['status'] == null
          ? null
          : RpcStatus.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$D3apiEmptyResponseToJson(D3apiEmptyResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status?.toJson());
  return val;
}

ProjectStartLocalProjectRequest _$ProjectStartLocalProjectRequestFromJson(
        Map<String, dynamic> json) =>
    ProjectStartLocalProjectRequest(
      projectPath: json['projectPath'] as String?,
      soloMode: json['soloMode'] as bool?,
      allowUpgrade: json['allowUpgrade'] as bool?,
    );

Map<String, dynamic> _$ProjectStartLocalProjectRequestToJson(
    ProjectStartLocalProjectRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('projectPath', instance.projectPath);
  writeNotNull('soloMode', instance.soloMode);
  writeNotNull('allowUpgrade', instance.allowUpgrade);
  return val;
}

ProtobufAny _$ProtobufAnyFromJson(Map<String, dynamic> json) => ProtobufAny(
      typeUrl: json['type_url'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$ProtobufAnyToJson(ProtobufAny instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type_url', instance.typeUrl);
  writeNotNull('value', instance.value);
  return val;
}

RpcStatus _$RpcStatusFromJson(Map<String, dynamic> json) => RpcStatus(
      code: json['code'] as int?,
      message: json['message'] as String?,
      details: (json['details'] as List<dynamic>?)
              ?.map((e) => ProtobufAny.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RpcStatusToJson(RpcStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('message', instance.message);
  writeNotNull('details', instance.details?.map((e) => e.toJson()).toList());
  return val;
}

SystemD3VersionInfo _$SystemD3VersionInfoFromJson(Map<String, dynamic> json) =>
    SystemD3VersionInfo(
      major: json['major'] as int?,
      minor: json['minor'] as int?,
      hotfix: json['hotfix'] as int?,
      revision: json['revision'] as int?,
    );

Map<String, dynamic> _$SystemD3VersionInfoToJson(SystemD3VersionInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('major', instance.major);
  writeNotNull('minor', instance.minor);
  writeNotNull('hotfix', instance.hotfix);
  writeNotNull('revision', instance.revision);
  return val;
}

SystemDetectSystemsResponse _$SystemDetectSystemsResponseFromJson(
        Map<String, dynamic> json) =>
    SystemDetectSystemsResponse(
      status: json['status'] == null
          ? null
          : RpcStatus.fromJson(json['status'] as Map<String, dynamic>),
      result: (json['result'] as List<dynamic>?)
              ?.map((e) => SystemSystemInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$SystemDetectSystemsResponseToJson(
    SystemDetectSystemsResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status?.toJson());
  writeNotNull('result', instance.result?.map((e) => e.toJson()).toList());
  return val;
}

SystemGPUOutputInfo _$SystemGPUOutputInfoFromJson(Map<String, dynamic> json) =>
    SystemGPUOutputInfo(
      gpuPort: json['gpuPort'] as int?,
      genlockState: systemGenlockStateFromJson(json['genlockState']),
      emulated: json['emulated'] as bool?,
      resolution: json['resolution'] == null
          ? null
          : SystemResolution.fromJson(
              json['resolution'] as Map<String, dynamic>),
      refreshRate: (json['refreshRate'] as num?)?.toDouble(),
      bitDepth: json['bitDepth'] as int?,
      colourFormat: systemAPIColorFormatFromJson(json['colourFormat']),
    );

Map<String, dynamic> _$SystemGPUOutputInfoToJson(SystemGPUOutputInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('gpuPort', instance.gpuPort);
  writeNotNull('genlockState', systemGenlockStateToJson(instance.genlockState));
  writeNotNull('emulated', instance.emulated);
  writeNotNull('resolution', instance.resolution?.toJson());
  writeNotNull('refreshRate', instance.refreshRate);
  writeNotNull('bitDepth', instance.bitDepth);
  writeNotNull(
      'colourFormat', systemAPIColorFormatToJson(instance.colourFormat));
  return val;
}

SystemGPUOutputsInfo _$SystemGPUOutputsInfoFromJson(
        Map<String, dynamic> json) =>
    SystemGPUOutputsInfo(
      hostname: json['hostname'] as String?,
      genlock: json['genlock'] == null
          ? null
          : SystemGenlockInfo.fromJson(json['genlock'] as Map<String, dynamic>),
      gpuOutputs: (json['gpuOutputs'] as List<dynamic>?)
              ?.map((e) =>
                  SystemGPUOutputInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$SystemGPUOutputsInfoToJson(
    SystemGPUOutputsInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hostname', instance.hostname);
  writeNotNull('genlock', instance.genlock?.toJson());
  writeNotNull(
      'gpuOutputs', instance.gpuOutputs?.map((e) => e.toJson()).toList());
  return val;
}

SystemGenlockInfo _$SystemGenlockInfoFromJson(Map<String, dynamic> json) =>
    SystemGenlockInfo(
      frequency: (json['frequency'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$SystemGenlockInfoToJson(SystemGenlockInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('frequency', instance.frequency);
  return val;
}

SystemGetGPUOutputsReponse _$SystemGetGPUOutputsReponseFromJson(
        Map<String, dynamic> json) =>
    SystemGetGPUOutputsReponse(
      status: json['status'] == null
          ? null
          : RpcStatus.fromJson(json['status'] as Map<String, dynamic>),
      result: (json['result'] as List<dynamic>?)
              ?.map((e) =>
                  SystemGPUOutputsInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$SystemGetGPUOutputsReponseToJson(
    SystemGetGPUOutputsReponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status?.toJson());
  writeNotNull('result', instance.result?.map((e) => e.toJson()).toList());
  return val;
}

SystemGetNetworkAdaptersResponse _$SystemGetNetworkAdaptersResponseFromJson(
        Map<String, dynamic> json) =>
    SystemGetNetworkAdaptersResponse(
      status: json['status'] == null
          ? null
          : RpcStatus.fromJson(json['status'] as Map<String, dynamic>),
      result: (json['result'] as List<dynamic>?)
              ?.map((e) => SystemNetAdapterInSystemsInfo.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$SystemGetNetworkAdaptersResponseToJson(
    SystemGetNetworkAdaptersResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status?.toJson());
  writeNotNull('result', instance.result?.map((e) => e.toJson()).toList());
  return val;
}

SystemGetVFCsResponse _$SystemGetVFCsResponseFromJson(
        Map<String, dynamic> json) =>
    SystemGetVFCsResponse(
      status: json['status'] == null
          ? null
          : RpcStatus.fromJson(json['status'] as Map<String, dynamic>),
      result: (json['result'] as List<dynamic>?)
              ?.map((e) => SystemVFCInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$SystemGetVFCsResponseToJson(
    SystemGetVFCsResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status?.toJson());
  writeNotNull('result', instance.result?.map((e) => e.toJson()).toList());
  return val;
}

SystemIpAddressInfo _$SystemIpAddressInfoFromJson(Map<String, dynamic> json) =>
    SystemIpAddressInfo(
      address: json['address'] as String?,
      subnet: json['subnet'] as String?,
      family: systemIPFamilyFromJson(json['family']),
      gateway: json['gateway'] as String?,
    );

Map<String, dynamic> _$SystemIpAddressInfoToJson(SystemIpAddressInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address);
  writeNotNull('subnet', instance.subnet);
  writeNotNull('family', systemIPFamilyToJson(instance.family));
  writeNotNull('gateway', instance.gateway);
  return val;
}

SystemListProjectsResponse _$SystemListProjectsResponseFromJson(
        Map<String, dynamic> json) =>
    SystemListProjectsResponse(
      status: json['status'] == null
          ? null
          : RpcStatus.fromJson(json['status'] as Map<String, dynamic>),
      result: (json['result'] as List<dynamic>?)
              ?.map((e) => SystemProjectsInSystemInfo.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$SystemListProjectsResponseToJson(
    SystemListProjectsResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status?.toJson());
  writeNotNull('result', instance.result?.map((e) => e.toJson()).toList());
  return val;
}

SystemNetAdapterInSystemsInfo _$SystemNetAdapterInSystemsInfoFromJson(
        Map<String, dynamic> json) =>
    SystemNetAdapterInSystemsInfo(
      hostname: json['hostname'] as String?,
      netAdapters: (json['netAdapters'] as List<dynamic>?)
              ?.map((e) =>
                  SystemNetAdapterInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$SystemNetAdapterInSystemsInfoToJson(
    SystemNetAdapterInSystemsInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hostname', instance.hostname);
  writeNotNull(
      'netAdapters', instance.netAdapters?.map((e) => e.toJson()).toList());
  return val;
}

SystemNetAdapterInfo _$SystemNetAdapterInfoFromJson(
        Map<String, dynamic> json) =>
    SystemNetAdapterInfo(
      name: json['name'] as String?,
      mac: json['mac'] as String?,
      enabled: json['enabled'] as bool?,
      dhcp: json['dhcp'] as bool?,
      status: systemOperationalStatusFromJson(json['status']),
      addresses: (json['addresses'] as List<dynamic>?)
              ?.map((e) =>
                  SystemIpAddressInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$SystemNetAdapterInfoToJson(
    SystemNetAdapterInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('mac', instance.mac);
  writeNotNull('enabled', instance.enabled);
  writeNotNull('dhcp', instance.dhcp);
  writeNotNull('status', systemOperationalStatusToJson(instance.status));
  writeNotNull(
      'addresses', instance.addresses?.map((e) => e.toJson()).toList());
  return val;
}

SystemProjectInfo _$SystemProjectInfoFromJson(Map<String, dynamic> json) =>
    SystemProjectInfo(
      path: json['path'] as String?,
      lastModified: json['lastModified'] as String?,
      version: json['version'] == null
          ? null
          : SystemD3VersionInfo.fromJson(
              json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SystemProjectInfoToJson(SystemProjectInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('path', instance.path);
  writeNotNull('lastModified', instance.lastModified);
  writeNotNull('version', instance.version?.toJson());
  return val;
}

SystemProjectsInSystemInfo _$SystemProjectsInSystemInfoFromJson(
        Map<String, dynamic> json) =>
    SystemProjectsInSystemInfo(
      hostname: json['hostname'] as String?,
      lastProject: json['lastProject'] as String?,
      projects: (json['projects'] as List<dynamic>?)
              ?.map(
                  (e) => SystemProjectInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$SystemProjectsInSystemInfoToJson(
    SystemProjectsInSystemInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hostname', instance.hostname);
  writeNotNull('lastProject', instance.lastProject);
  writeNotNull('projects', instance.projects?.map((e) => e.toJson()).toList());
  return val;
}

SystemResolution _$SystemResolutionFromJson(Map<String, dynamic> json) =>
    SystemResolution(
      width: json['width'] as int?,
      height: json['height'] as int?,
    );

Map<String, dynamic> _$SystemResolutionToJson(SystemResolution instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('width', instance.width);
  writeNotNull('height', instance.height);
  return val;
}

SystemSystemInfo _$SystemSystemInfoFromJson(Map<String, dynamic> json) =>
    SystemSystemInfo(
      hostname: json['hostname'] as String?,
      type: json['type'] as String?,
      version: json['version'] == null
          ? null
          : SystemD3VersionInfo.fromJson(
              json['version'] as Map<String, dynamic>),
      runningProject: json['runningProject'] as String?,
      ipAddress: json['ipAddress'] as String?,
      isDesignerRunning: json['isDesignerRunning'] as bool?,
      isServiceRunning: json['isServiceRunning'] as bool?,
      isManagerRunning: json['isManagerRunning'] as bool?,
      isNotchHostRunning: json['isNotchHostRunning'] as bool?,
    );

Map<String, dynamic> _$SystemSystemInfoToJson(SystemSystemInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hostname', instance.hostname);
  writeNotNull('type', instance.type);
  writeNotNull('version', instance.version?.toJson());
  writeNotNull('runningProject', instance.runningProject);
  writeNotNull('ipAddress', instance.ipAddress);
  writeNotNull('isDesignerRunning', instance.isDesignerRunning);
  writeNotNull('isServiceRunning', instance.isServiceRunning);
  writeNotNull('isManagerRunning', instance.isManagerRunning);
  writeNotNull('isNotchHostRunning', instance.isNotchHostRunning);
  return val;
}

SystemVFCCard _$SystemVFCCardFromJson(Map<String, dynamic> json) =>
    SystemVFCCard(
      slot: json['slot'] as int?,
      type: systemVFCTypeFromJson(json['type']),
      firmwareVersion: json['firmwareVersion'] as String?,
      fpgaVersion: json['fpgaVersion'] as String?,
      splitMode: systemVFCSplitModeFromJson(json['splitMode']),
      generation: systemAPIVFCGenerationFromJson(json['generation']),
      ports: json['ports'] == null
          ? null
          : SystemVFCPorts.fromJson(json['ports'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SystemVFCCardToJson(SystemVFCCard instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('slot', instance.slot);
  writeNotNull('type', systemVFCTypeToJson(instance.type));
  writeNotNull('firmwareVersion', instance.firmwareVersion);
  writeNotNull('fpgaVersion', instance.fpgaVersion);
  writeNotNull('splitMode', systemVFCSplitModeToJson(instance.splitMode));
  writeNotNull('generation', systemAPIVFCGenerationToJson(instance.generation));
  writeNotNull('ports', instance.ports?.toJson());
  return val;
}

SystemVFCInfo _$SystemVFCInfoFromJson(Map<String, dynamic> json) =>
    SystemVFCInfo(
      hostname: json['hostname'] as String?,
      backplaneVersion: systemAPIBPModelFromJson(json['backplaneVersion']),
      cards: (json['cards'] as List<dynamic>?)
              ?.map((e) => SystemVFCCard.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$SystemVFCInfoToJson(SystemVFCInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hostname', instance.hostname);
  writeNotNull(
      'backplaneVersion', systemAPIBPModelToJson(instance.backplaneVersion));
  writeNotNull('cards', instance.cards?.map((e) => e.toJson()).toList());
  return val;
}

SystemVFCPort _$SystemVFCPortFromJson(Map<String, dynamic> json) =>
    SystemVFCPort(
      resolution: json['resolution'] == null
          ? null
          : SystemResolution.fromJson(
              json['resolution'] as Map<String, dynamic>),
      refreshRate: (json['RefreshRate'] as num?)?.toDouble(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$SystemVFCPortToJson(SystemVFCPort instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('resolution', instance.resolution?.toJson());
  writeNotNull('RefreshRate', instance.refreshRate);
  writeNotNull('name', instance.name);
  return val;
}

SystemVFCPorts _$SystemVFCPortsFromJson(Map<String, dynamic> json) =>
    SystemVFCPorts(
      a: json['a'] == null
          ? null
          : SystemVFCPort.fromJson(json['a'] as Map<String, dynamic>),
      b: json['b'] == null
          ? null
          : SystemVFCPort.fromJson(json['b'] as Map<String, dynamic>),
      c: json['c'] == null
          ? null
          : SystemVFCPort.fromJson(json['c'] as Map<String, dynamic>),
      d: json['d'] == null
          ? null
          : SystemVFCPort.fromJson(json['d'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SystemVFCPortsToJson(SystemVFCPorts instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('a', instance.a?.toJson());
  writeNotNull('b', instance.b?.toJson());
  writeNotNull('c', instance.c?.toJson());
  writeNotNull('d', instance.d?.toJson());
  return val;
}
