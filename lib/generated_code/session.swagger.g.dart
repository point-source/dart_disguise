// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ColourCDLInfo _$ColourCDLInfoFromJson(Map<String, dynamic> json) =>
    ColourCDLInfo(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
      slope: json['slope'] == null
          ? null
          : D3apiVec3Float.fromJson(json['slope'] as Map<String, dynamic>),
      offset: json['offset'] == null
          ? null
          : D3apiVec3Float.fromJson(json['offset'] as Map<String, dynamic>),
      power: json['power'] == null
          ? null
          : D3apiVec3Float.fromJson(json['power'] as Map<String, dynamic>),
      saturation: (json['saturation'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ColourCDLInfoToJson(ColourCDLInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uid', instance.uid);
  writeNotNull('name', instance.name);
  writeNotNull('slope', instance.slope?.toJson());
  writeNotNull('offset', instance.offset?.toJson());
  writeNotNull('power', instance.power?.toJson());
  writeNotNull('saturation', instance.saturation);
  return val;
}

ColourListCDLsResponse _$ColourListCDLsResponseFromJson(
        Map<String, dynamic> json) =>
    ColourListCDLsResponse(
      status: json['status'] == null
          ? null
          : RpcStatus.fromJson(json['status'] as Map<String, dynamic>),
      result: (json['result'] as List<dynamic>?)
              ?.map((e) => ColourCDLInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ColourListCDLsResponseToJson(
    ColourListCDLsResponse instance) {
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

ColourSetCDLRequest _$ColourSetCDLRequestFromJson(Map<String, dynamic> json) =>
    ColourSetCDLRequest(
      cdl: json['cdl'] == null
          ? null
          : ColourCDLInfo.fromJson(json['cdl'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ColourSetCDLRequestToJson(ColourSetCDLRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cdl', instance.cdl?.toJson());
  return val;
}

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

D3apiVec3Float _$D3apiVec3FloatFromJson(Map<String, dynamic> json) =>
    D3apiVec3Float(
      x: (json['x'] as num?)?.toDouble(),
      y: (json['y'] as num?)?.toDouble(),
      z: (json['z'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$D3apiVec3FloatToJson(D3apiVec3Float instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('x', instance.x);
  writeNotNull('y', instance.y);
  writeNotNull('z', instance.z);
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

D3apiBoolResponse _$D3apiBoolResponseFromJson(Map<String, dynamic> json) =>
    D3apiBoolResponse(
      status: json['status'] == null
          ? null
          : RpcStatus.fromJson(json['status'] as Map<String, dynamic>),
      result: json['result'] as bool?,
    );

Map<String, dynamic> _$D3apiBoolResponseToJson(D3apiBoolResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status?.toJson());
  writeNotNull('result', instance.result);
  return val;
}

D3apiLocator _$D3apiLocatorFromJson(Map<String, dynamic> json) => D3apiLocator(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$D3apiLocatorToJson(D3apiLocator instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uid', instance.uid);
  writeNotNull('name', instance.name);
  return val;
}

MixedrealityCameraIdentityInfo _$MixedrealityCameraIdentityInfoFromJson(
        Map<String, dynamic> json) =>
    MixedrealityCameraIdentityInfo(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$MixedrealityCameraIdentityInfoToJson(
    MixedrealityCameraIdentityInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uid', instance.uid);
  writeNotNull('name', instance.name);
  return val;
}

MixedrealityCameraInfo _$MixedrealityCameraInfoFromJson(
        Map<String, dynamic> json) =>
    MixedrealityCameraInfo(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
      spatialCalibration: json['spatialCalibration'] == null
          ? null
          : MixedrealitySpatialCalibrationInfo.fromJson(
              json['spatialCalibration'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MixedrealityCameraInfoToJson(
    MixedrealityCameraInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uid', instance.uid);
  writeNotNull('name', instance.name);
  writeNotNull('spatialCalibration', instance.spatialCalibration?.toJson());
  return val;
}

MixedrealityCaptureObservationRequest
    _$MixedrealityCaptureObservationRequestFromJson(
            Map<String, dynamic> json) =>
        MixedrealityCaptureObservationRequest(
          camera: json['camera'] == null
              ? null
              : D3apiLocator.fromJson(json['camera'] as Map<String, dynamic>),
          spatialCalibration: json['spatialCalibration'] == null
              ? null
              : D3apiLocator.fromJson(
                  json['spatialCalibration'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$MixedrealityCaptureObservationRequestToJson(
    MixedrealityCaptureObservationRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('camera', instance.camera?.toJson());
  writeNotNull('spatialCalibration', instance.spatialCalibration?.toJson());
  return val;
}

MixedrealityDeleteAllObservationsRequest
    _$MixedrealityDeleteAllObservationsRequestFromJson(
            Map<String, dynamic> json) =>
        MixedrealityDeleteAllObservationsRequest(
          spatialCalibration: json['spatialCalibration'] == null
              ? null
              : D3apiLocator.fromJson(
                  json['spatialCalibration'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$MixedrealityDeleteAllObservationsRequestToJson(
    MixedrealityDeleteAllObservationsRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('spatialCalibration', instance.spatialCalibration?.toJson());
  return val;
}

MixedrealityDeleteObservationsRequest
    _$MixedrealityDeleteObservationsRequestFromJson(
            Map<String, dynamic> json) =>
        MixedrealityDeleteObservationsRequest(
          observations: (json['observations'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
        );

Map<String, dynamic> _$MixedrealityDeleteObservationsRequestToJson(
    MixedrealityDeleteObservationsRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('observations', instance.observations);
  return val;
}

MixedrealityEnableObservationParams
    _$MixedrealityEnableObservationParamsFromJson(Map<String, dynamic> json) =>
        MixedrealityEnableObservationParams(
          uid: json['uid'] as String?,
          enable: json['enable'] as bool?,
        );

Map<String, dynamic> _$MixedrealityEnableObservationParamsToJson(
    MixedrealityEnableObservationParams instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uid', instance.uid);
  writeNotNull('enable', instance.enable);
  return val;
}

MixedrealityEnableObservationsRequest
    _$MixedrealityEnableObservationsRequestFromJson(
            Map<String, dynamic> json) =>
        MixedrealityEnableObservationsRequest(
          observations: (json['observations'] as List<dynamic>?)
                  ?.map((e) => MixedrealityEnableObservationParams.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              [],
        );

Map<String, dynamic> _$MixedrealityEnableObservationsRequestToJson(
    MixedrealityEnableObservationsRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'observations', instance.observations?.map((e) => e.toJson()).toList());
  return val;
}

MixedrealityGetCamerasResponse _$MixedrealityGetCamerasResponseFromJson(
        Map<String, dynamic> json) =>
    MixedrealityGetCamerasResponse(
      status: json['status'] == null
          ? null
          : RpcStatus.fromJson(json['status'] as Map<String, dynamic>),
      result: (json['result'] as List<dynamic>?)
              ?.map((e) =>
                  MixedrealityCameraInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$MixedrealityGetCamerasResponseToJson(
    MixedrealityGetCamerasResponse instance) {
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

MixedrealityGetMRSetsResponse _$MixedrealityGetMRSetsResponseFromJson(
        Map<String, dynamic> json) =>
    MixedrealityGetMRSetsResponse(
      status: json['status'] == null
          ? null
          : RpcStatus.fromJson(json['status'] as Map<String, dynamic>),
      result: (json['result'] as List<dynamic>?)
              ?.map(
                  (e) => MixedrealityMRSet.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$MixedrealityGetMRSetsResponseToJson(
    MixedrealityGetMRSetsResponse instance) {
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

MixedrealityListSpatialCalibrationsResponse
    _$MixedrealityListSpatialCalibrationsResponseFromJson(
            Map<String, dynamic> json) =>
        MixedrealityListSpatialCalibrationsResponse(
          status: json['status'] == null
              ? null
              : RpcStatus.fromJson(json['status'] as Map<String, dynamic>),
          result: (json['result'] as List<dynamic>?)
                  ?.map((e) => MixedrealitySpatialCalibrationDetailed.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              [],
        );

Map<String, dynamic> _$MixedrealityListSpatialCalibrationsResponseToJson(
    MixedrealityListSpatialCalibrationsResponse instance) {
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

MixedrealityMRSet _$MixedrealityMRSetFromJson(Map<String, dynamic> json) =>
    MixedrealityMRSet(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
      currentCamera: json['currentCamera'] == null
          ? null
          : MixedrealityCameraIdentityInfo.fromJson(
              json['currentCamera'] as Map<String, dynamic>),
      isCameraOverride: json['isCameraOverride'] as bool?,
    );

Map<String, dynamic> _$MixedrealityMRSetToJson(MixedrealityMRSet instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uid', instance.uid);
  writeNotNull('name', instance.name);
  writeNotNull('currentCamera', instance.currentCamera?.toJson());
  writeNotNull('isCameraOverride', instance.isCameraOverride);
  return val;
}

MixedrealityMRSetInfo _$MixedrealityMRSetInfoFromJson(
        Map<String, dynamic> json) =>
    MixedrealityMRSetInfo(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$MixedrealityMRSetInfoToJson(
    MixedrealityMRSetInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uid', instance.uid);
  writeNotNull('name', instance.name);
  return val;
}

MixedrealityObservationInfo _$MixedrealityObservationInfoFromJson(
        Map<String, dynamic> json) =>
    MixedrealityObservationInfo(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
      trackedPose: json['trackedPose'] == null
          ? null
          : MixedrealityPose.fromJson(
              json['trackedPose'] as Map<String, dynamic>),
      solvedPose: json['solvedPose'] == null
          ? null
          : MixedrealityPose.fromJson(
              json['solvedPose'] as Map<String, dynamic>),
      isEnabled: json['isEnabled'] as bool?,
      zoom: (json['zoom'] as num?)?.toDouble(),
      focus: (json['focus'] as num?)?.toDouble(),
      type: mixedrealityObservationTypeFromJson(json['type']),
      rmsError: (json['rmsError'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MixedrealityObservationInfoToJson(
    MixedrealityObservationInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uid', instance.uid);
  writeNotNull('name', instance.name);
  writeNotNull('trackedPose', instance.trackedPose?.toJson());
  writeNotNull('solvedPose', instance.solvedPose?.toJson());
  writeNotNull('isEnabled', instance.isEnabled);
  writeNotNull('zoom', instance.zoom);
  writeNotNull('focus', instance.focus);
  writeNotNull('type', mixedrealityObservationTypeToJson(instance.type));
  writeNotNull('rmsError', instance.rmsError);
  return val;
}

MixedrealityPose _$MixedrealityPoseFromJson(Map<String, dynamic> json) =>
    MixedrealityPose(
      position: json['position'] == null
          ? null
          : D3apiVec3Float.fromJson(json['position'] as Map<String, dynamic>),
      rotation: json['rotation'] == null
          ? null
          : D3apiVec3Float.fromJson(json['rotation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MixedrealityPoseToJson(MixedrealityPose instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('position', instance.position?.toJson());
  writeNotNull('rotation', instance.rotation?.toJson());
  return val;
}

MixedrealitySelectCameraRequest _$MixedrealitySelectCameraRequestFromJson(
        Map<String, dynamic> json) =>
    MixedrealitySelectCameraRequest(
      mrSet: json['mrSet'] == null
          ? null
          : D3apiLocator.fromJson(json['mrSet'] as Map<String, dynamic>),
      cameraOverride: json['cameraOverride'] == null
          ? null
          : D3apiLocator.fromJson(
              json['cameraOverride'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MixedrealitySelectCameraRequestToJson(
    MixedrealitySelectCameraRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('mrSet', instance.mrSet?.toJson());
  writeNotNull('cameraOverride', instance.cameraOverride?.toJson());
  return val;
}

MixedrealitySelectSpatialCalibrationRequest
    _$MixedrealitySelectSpatialCalibrationRequestFromJson(
            Map<String, dynamic> json) =>
        MixedrealitySelectSpatialCalibrationRequest(
          camera: json['camera'] == null
              ? null
              : D3apiLocator.fromJson(json['camera'] as Map<String, dynamic>),
          spatialCalibration: json['spatialCalibration'] == null
              ? null
              : D3apiLocator.fromJson(
                  json['spatialCalibration'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$MixedrealitySelectSpatialCalibrationRequestToJson(
    MixedrealitySelectSpatialCalibrationRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('camera', instance.camera?.toJson());
  writeNotNull('spatialCalibration', instance.spatialCalibration?.toJson());
  return val;
}

MixedrealitySpatialCalibrationDetailed
    _$MixedrealitySpatialCalibrationDetailedFromJson(
            Map<String, dynamic> json) =>
        MixedrealitySpatialCalibrationDetailed(
          uid: json['uid'] as String?,
          name: json['name'] as String?,
          mrsets: (json['mrsets'] as List<dynamic>?)
                  ?.map((e) =>
                      MixedrealityMRSetInfo.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              [],
          observations: (json['observations'] as List<dynamic>?)
                  ?.map((e) => MixedrealityObservationInfo.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              [],
        );

Map<String, dynamic> _$MixedrealitySpatialCalibrationDetailedToJson(
    MixedrealitySpatialCalibrationDetailed instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uid', instance.uid);
  writeNotNull('name', instance.name);
  writeNotNull('mrsets', instance.mrsets?.map((e) => e.toJson()).toList());
  writeNotNull(
      'observations', instance.observations?.map((e) => e.toJson()).toList());
  return val;
}

MixedrealitySpatialCalibrationInfo _$MixedrealitySpatialCalibrationInfoFromJson(
        Map<String, dynamic> json) =>
    MixedrealitySpatialCalibrationInfo(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$MixedrealitySpatialCalibrationInfoToJson(
    MixedrealitySpatialCalibrationInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uid', instance.uid);
  writeNotNull('name', instance.name);
  return val;
}

D3apiVec2Float _$D3apiVec2FloatFromJson(Map<String, dynamic> json) =>
    D3apiVec2Float(
      x: (json['x'] as num?)?.toDouble(),
      y: (json['y'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$D3apiVec2FloatToJson(D3apiVec2Float instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('x', instance.x);
  writeNotNull('y', instance.y);
  return val;
}

QuickcalLineUpCurrentPoseRequest _$QuickcalLineUpCurrentPoseRequestFromJson(
        Map<String, dynamic> json) =>
    QuickcalLineUpCurrentPoseRequest(
      projector: json['projector'] == null
          ? null
          : D3apiLocator.fromJson(json['projector'] as Map<String, dynamic>),
      referencePoint: json['referencePoint'] == null
          ? null
          : D3apiLocator.fromJson(
              json['referencePoint'] as Map<String, dynamic>),
      position: json['position'] == null
          ? null
          : D3apiVec2Float.fromJson(json['position'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QuickcalLineUpCurrentPoseRequestToJson(
    QuickcalLineUpCurrentPoseRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('projector', instance.projector?.toJson());
  writeNotNull('referencePoint', instance.referencePoint?.toJson());
  writeNotNull('position', instance.position?.toJson());
  return val;
}

QuickcalListReferencePointsResponse
    _$QuickcalListReferencePointsResponseFromJson(Map<String, dynamic> json) =>
        QuickcalListReferencePointsResponse(
          status: json['status'] == null
              ? null
              : RpcStatus.fromJson(json['status'] as Map<String, dynamic>),
          result: (json['result'] as List<dynamic>?)
                  ?.map((e) => QuickcalReferencePointInfo.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              [],
        );

Map<String, dynamic> _$QuickcalListReferencePointsResponseToJson(
    QuickcalListReferencePointsResponse instance) {
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

QuickcalReferencePointInfo _$QuickcalReferencePointInfoFromJson(
        Map<String, dynamic> json) =>
    QuickcalReferencePointInfo(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$QuickcalReferencePointInfoToJson(
    QuickcalReferencePointInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uid', instance.uid);
  writeNotNull('name', instance.name);
  return val;
}

QuickcalResetLineUpRequest _$QuickcalResetLineUpRequestFromJson(
        Map<String, dynamic> json) =>
    QuickcalResetLineUpRequest(
      projector: json['projector'] == null
          ? null
          : D3apiLocator.fromJson(json['projector'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QuickcalResetLineUpRequestToJson(
    QuickcalResetLineUpRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('projector', instance.projector?.toJson());
  return val;
}

RenderstreamAdapterInfo _$RenderstreamAdapterInfoFromJson(
        Map<String, dynamic> json) =>
    RenderstreamAdapterInfo(
      name: json['name'] as String?,
      ipAddress: json['ipAddress'] as String?,
      subnet: json['subnet'] as String?,
    );

Map<String, dynamic> _$RenderstreamAdapterInfoToJson(
    RenderstreamAdapterInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('ipAddress', instance.ipAddress);
  writeNotNull('subnet', instance.subnet);
  return val;
}

RenderstreamAsset _$RenderstreamAssetFromJson(Map<String, dynamic> json) =>
    RenderstreamAsset(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$RenderstreamAssetToJson(RenderstreamAsset instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uid', instance.uid);
  writeNotNull('name', instance.name);
  return val;
}

RenderstreamAssigner _$RenderstreamAssignerFromJson(
        Map<String, dynamic> json) =>
    RenderstreamAssigner(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$RenderstreamAssignerToJson(
    RenderstreamAssigner instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uid', instance.uid);
  writeNotNull('name', instance.name);
  return val;
}

RenderstreamAssignerInfo _$RenderstreamAssignerInfoFromJson(
        Map<String, dynamic> json) =>
    RenderstreamAssignerInfo(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
      transport: json['transport'] == null
          ? null
          : RenderstreamTransportInfo.fromJson(
              json['transport'] as Map<String, dynamic>),
      alpha: json['alpha'] as bool?,
      overlapPixels: json['overlapPixels'] as int?,
      paddingPixels: json['paddingPixels'] as int?,
      preferredNetwork: json['preferredNetwork'] == null
          ? null
          : RenderstreamNetworkInfo.fromJson(
              json['preferredNetwork'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RenderstreamAssignerInfoToJson(
    RenderstreamAssignerInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uid', instance.uid);
  writeNotNull('name', instance.name);
  writeNotNull('transport', instance.transport?.toJson());
  writeNotNull('alpha', instance.alpha);
  writeNotNull('overlapPixels', instance.overlapPixels);
  writeNotNull('paddingPixels', instance.paddingPixels);
  writeNotNull('preferredNetwork', instance.preferredNetwork?.toJson());
  return val;
}

RenderstreamChannelMappingInfo _$RenderstreamChannelMappingInfoFromJson(
        Map<String, dynamic> json) =>
    RenderstreamChannelMappingInfo(
      channel: json['channel'] as String?,
      mapping: json['mapping'] == null
          ? null
          : RenderstreamMapping.fromJson(
              json['mapping'] as Map<String, dynamic>),
      assigner: json['assigner'] == null
          ? null
          : RenderstreamAssigner.fromJson(
              json['assigner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RenderstreamChannelMappingInfoToJson(
    RenderstreamChannelMappingInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('channel', instance.channel);
  writeNotNull('mapping', instance.mapping?.toJson());
  writeNotNull('assigner', instance.assigner?.toJson());
  return val;
}

RenderstreamFailoverRequest _$RenderstreamFailoverRequestFromJson(
        Map<String, dynamic> json) =>
    RenderstreamFailoverRequest(
      machine: json['machine'] == null
          ? null
          : D3apiLocator.fromJson(json['machine'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RenderstreamFailoverRequestToJson(
    RenderstreamFailoverRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('machine', instance.machine?.toJson());
  return val;
}

RenderstreamGetAssignersResponse _$RenderstreamGetAssignersResponseFromJson(
        Map<String, dynamic> json) =>
    RenderstreamGetAssignersResponse(
      status: json['status'] == null
          ? null
          : RpcStatus.fromJson(json['status'] as Map<String, dynamic>),
      result: (json['result'] as List<dynamic>?)
              ?.map((e) =>
                  RenderstreamAssignerInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RenderstreamGetAssignersResponseToJson(
    RenderstreamGetAssignersResponse instance) {
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

RenderstreamGetLayerConfigResponse _$RenderstreamGetLayerConfigResponseFromJson(
        Map<String, dynamic> json) =>
    RenderstreamGetLayerConfigResponse(
      status: json['status'] == null
          ? null
          : RpcStatus.fromJson(json['status'] as Map<String, dynamic>),
      result: json['result'] == null
          ? null
          : RenderstreamGetLayerConfigResult.fromJson(
              json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RenderstreamGetLayerConfigResponseToJson(
    RenderstreamGetLayerConfigResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status?.toJson());
  writeNotNull('result', instance.result?.toJson());
  return val;
}

RenderstreamGetLayerConfigResult _$RenderstreamGetLayerConfigResultFromJson(
        Map<String, dynamic> json) =>
    RenderstreamGetLayerConfigResult(
      framerateFractionDivisor: json['framerateFractionDivisor'] as int?,
      asset: json['asset'] == null
          ? null
          : RenderstreamAsset.fromJson(json['asset'] as Map<String, dynamic>),
      pool: json['pool'] == null
          ? null
          : RenderstreamPool.fromJson(json['pool'] as Map<String, dynamic>),
      channelMappings: (json['channelMappings'] as List<dynamic>?)
              ?.map((e) => RenderstreamChannelMappingInfo.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      defaultAssigner: json['defaultAssigner'] == null
          ? null
          : RenderstreamAssigner.fromJson(
              json['defaultAssigner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RenderstreamGetLayerConfigResultToJson(
    RenderstreamGetLayerConfigResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('framerateFractionDivisor', instance.framerateFractionDivisor);
  writeNotNull('asset', instance.asset?.toJson());
  writeNotNull('pool', instance.pool?.toJson());
  writeNotNull('channelMappings',
      instance.channelMappings?.map((e) => e.toJson()).toList());
  writeNotNull('defaultAssigner', instance.defaultAssigner?.toJson());
  return val;
}

RenderstreamGetLayerStatusResponse _$RenderstreamGetLayerStatusResponseFromJson(
        Map<String, dynamic> json) =>
    RenderstreamGetLayerStatusResponse(
      status: json['status'] == null
          ? null
          : RpcStatus.fromJson(json['status'] as Map<String, dynamic>),
      result: json['result'] == null
          ? null
          : RenderstreamGetLayerStatusResult.fromJson(
              json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RenderstreamGetLayerStatusResponseToJson(
    RenderstreamGetLayerStatusResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status?.toJson());
  writeNotNull('result', instance.result?.toJson());
  return val;
}

RenderstreamGetLayerStatusResult _$RenderstreamGetLayerStatusResultFromJson(
        Map<String, dynamic> json) =>
    RenderstreamGetLayerStatusResult(
      reference: json['reference'] == null
          ? null
          : RenderstreamReferenceInfo.fromJson(
              json['reference'] as Map<String, dynamic>),
      workload: json['workload'] == null
          ? null
          : RenderstreamWorkloadInfo.fromJson(
              json['workload'] as Map<String, dynamic>),
      streams: (json['streams'] as List<dynamic>?)
              ?.map((e) =>
                  RenderstreamStreamInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      assetErrors: (json['assetErrors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$RenderstreamGetLayerStatusResultToJson(
    RenderstreamGetLayerStatusResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('reference', instance.reference?.toJson());
  writeNotNull('workload', instance.workload?.toJson());
  writeNotNull('streams', instance.streams?.map((e) => e.toJson()).toList());
  writeNotNull('assetErrors', instance.assetErrors);
  return val;
}

RenderstreamGetLayersResponse _$RenderstreamGetLayersResponseFromJson(
        Map<String, dynamic> json) =>
    RenderstreamGetLayersResponse(
      status: json['status'] == null
          ? null
          : RpcStatus.fromJson(json['status'] as Map<String, dynamic>),
      result: (json['result'] as List<dynamic>?)
              ?.map((e) => RenderstreamRenderStreamInfo.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RenderstreamGetLayersResponseToJson(
    RenderstreamGetLayersResponse instance) {
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

RenderstreamGetPoolsResponse _$RenderstreamGetPoolsResponseFromJson(
        Map<String, dynamic> json) =>
    RenderstreamGetPoolsResponse(
      status: json['status'] == null
          ? null
          : RpcStatus.fromJson(json['status'] as Map<String, dynamic>),
      result: (json['result'] as List<dynamic>?)
              ?.map((e) =>
                  RenderstreamPoolInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RenderstreamGetPoolsResponseToJson(
    RenderstreamGetPoolsResponse instance) {
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

RenderstreamMachineInfo _$RenderstreamMachineInfoFromJson(
        Map<String, dynamic> json) =>
    RenderstreamMachineInfo(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
      preferredSyncAdapter: json['preferredSyncAdapter'] as String?,
      adapters: (json['adapters'] as List<dynamic>?)
              ?.map((e) =>
                  RenderstreamAdapterInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RenderstreamMachineInfoToJson(
    RenderstreamMachineInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uid', instance.uid);
  writeNotNull('name', instance.name);
  writeNotNull('preferredSyncAdapter', instance.preferredSyncAdapter);
  writeNotNull('adapters', instance.adapters?.map((e) => e.toJson()).toList());
  return val;
}

RenderstreamMapping _$RenderstreamMappingFromJson(Map<String, dynamic> json) =>
    RenderstreamMapping(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$RenderstreamMappingToJson(RenderstreamMapping instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uid', instance.uid);
  writeNotNull('name', instance.name);
  return val;
}

RenderstreamNetworkInfo _$RenderstreamNetworkInfoFromJson(
        Map<String, dynamic> json) =>
    RenderstreamNetworkInfo(
      ip: json['ip'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$RenderstreamNetworkInfoToJson(
    RenderstreamNetworkInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ip', instance.ip);
  writeNotNull('name', instance.name);
  return val;
}

RenderstreamPool _$RenderstreamPoolFromJson(Map<String, dynamic> json) =>
    RenderstreamPool(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$RenderstreamPoolToJson(RenderstreamPool instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uid', instance.uid);
  writeNotNull('name', instance.name);
  return val;
}

RenderstreamPoolInfo _$RenderstreamPoolInfoFromJson(
        Map<String, dynamic> json) =>
    RenderstreamPoolInfo(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
      machines: (json['machines'] as List<dynamic>?)
              ?.map((e) =>
                  RenderstreamMachineInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      understudies: (json['understudies'] as List<dynamic>?)
              ?.map((e) =>
                  RenderstreamMachineInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RenderstreamPoolInfoToJson(
    RenderstreamPoolInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uid', instance.uid);
  writeNotNull('name', instance.name);
  writeNotNull('machines', instance.machines?.map((e) => e.toJson()).toList());
  writeNotNull(
      'understudies', instance.understudies?.map((e) => e.toJson()).toList());
  return val;
}

RenderstreamReferenceInfo _$RenderstreamReferenceInfoFromJson(
        Map<String, dynamic> json) =>
    RenderstreamReferenceInfo(
      tNow: (json['tNow'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$RenderstreamReferenceInfoToJson(
    RenderstreamReferenceInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tNow', instance.tNow);
  return val;
}

RenderstreamRenderStreamInfo _$RenderstreamRenderStreamInfoFromJson(
        Map<String, dynamic> json) =>
    RenderstreamRenderStreamInfo(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$RenderstreamRenderStreamInfoToJson(
    RenderstreamRenderStreamInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uid', instance.uid);
  writeNotNull('name', instance.name);
  return val;
}

RenderstreamRestartLayersRequest _$RenderstreamRestartLayersRequestFromJson(
        Map<String, dynamic> json) =>
    RenderstreamRestartLayersRequest(
      layers: (json['layers'] as List<dynamic>?)
              ?.map((e) => D3apiLocator.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RenderstreamRestartLayersRequestToJson(
    RenderstreamRestartLayersRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('layers', instance.layers?.map((e) => e.toJson()).toList());
  return val;
}

RenderstreamStartLayersRequest _$RenderstreamStartLayersRequestFromJson(
        Map<String, dynamic> json) =>
    RenderstreamStartLayersRequest(
      layers: (json['layers'] as List<dynamic>?)
              ?.map((e) => D3apiLocator.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RenderstreamStartLayersRequestToJson(
    RenderstreamStartLayersRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('layers', instance.layers?.map((e) => e.toJson()).toList());
  return val;
}

RenderstreamStopLayersRequest _$RenderstreamStopLayersRequestFromJson(
        Map<String, dynamic> json) =>
    RenderstreamStopLayersRequest(
      layers: (json['layers'] as List<dynamic>?)
              ?.map((e) => D3apiLocator.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RenderstreamStopLayersRequestToJson(
    RenderstreamStopLayersRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('layers', instance.layers?.map((e) => e.toJson()).toList());
  return val;
}

RenderstreamStreamInfo _$RenderstreamStreamInfoFromJson(
        Map<String, dynamic> json) =>
    RenderstreamStreamInfo(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
      sourceMachine: json['sourceMachine'] as String?,
      receiverMachine: json['receiverMachine'] as String?,
      status: json['status'] == null
          ? null
          : RenderstreamStreamStatus.fromJson(
              json['status'] as Map<String, dynamic>),
      statusString: json['statusString'] as String?,
    );

Map<String, dynamic> _$RenderstreamStreamInfoToJson(
    RenderstreamStreamInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uid', instance.uid);
  writeNotNull('name', instance.name);
  writeNotNull('sourceMachine', instance.sourceMachine);
  writeNotNull('receiverMachine', instance.receiverMachine);
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('statusString', instance.statusString);
  return val;
}

RenderstreamStreamStatus _$RenderstreamStreamStatusFromJson(
        Map<String, dynamic> json) =>
    RenderstreamStreamStatus(
      subscriptionWanted: json['subscriptionWanted'] as bool?,
      subscribeSuccessful: json['subscribeSuccessful'] as bool?,
      tLastDropped: (json['tLastDropped'] as num?)?.toDouble(),
      tLastError: (json['tLastError'] as num?)?.toDouble(),
      lastErrorMessage: json['lastErrorMessage'] as String?,
    );

Map<String, dynamic> _$RenderstreamStreamStatusToJson(
    RenderstreamStreamStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('subscriptionWanted', instance.subscriptionWanted);
  writeNotNull('subscribeSuccessful', instance.subscribeSuccessful);
  writeNotNull('tLastDropped', instance.tLastDropped);
  writeNotNull('tLastError', instance.tLastError);
  writeNotNull('lastErrorMessage', instance.lastErrorMessage);
  return val;
}

RenderstreamSyncLayersRequest _$RenderstreamSyncLayersRequestFromJson(
        Map<String, dynamic> json) =>
    RenderstreamSyncLayersRequest(
      layers: (json['layers'] as List<dynamic>?)
              ?.map((e) => D3apiLocator.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RenderstreamSyncLayersRequestToJson(
    RenderstreamSyncLayersRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('layers', instance.layers?.map((e) => e.toJson()).toList());
  return val;
}

RenderstreamTransportInfo _$RenderstreamTransportInfoFromJson(
        Map<String, dynamic> json) =>
    RenderstreamTransportInfo(
      type: json['type'] as String?,
      format: json['format'] as String?,
      bitDepth: json['bitDepth'] as int?,
    );

Map<String, dynamic> _$RenderstreamTransportInfoToJson(
    RenderstreamTransportInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('format', instance.format);
  writeNotNull('bitDepth', instance.bitDepth);
  return val;
}

RenderstreamWorkloadInfo _$RenderstreamWorkloadInfoFromJson(
        Map<String, dynamic> json) =>
    RenderstreamWorkloadInfo(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
      instances: (json['instances'] as List<dynamic>?)
              ?.map((e) => RenderstreamWorkloadInstanceInfo.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RenderstreamWorkloadInfoToJson(
    RenderstreamWorkloadInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uid', instance.uid);
  writeNotNull('name', instance.name);
  writeNotNull(
      'instances', instance.instances?.map((e) => e.toJson()).toList());
  return val;
}

RenderstreamWorkloadInstanceInfo _$RenderstreamWorkloadInstanceInfoFromJson(
        Map<String, dynamic> json) =>
    RenderstreamWorkloadInstanceInfo(
      machineUid: json['machineUid'] as String?,
      machineName: json['machineName'] as String?,
      state: json['state'] as String?,
      healthMessage: json['healthMessage'] as String?,
      healthDetails: json['healthDetails'] as String?,
    );

Map<String, dynamic> _$RenderstreamWorkloadInstanceInfoToJson(
    RenderstreamWorkloadInstanceInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('machineUid', instance.machineUid);
  writeNotNull('machineName', instance.machineName);
  writeNotNull('state', instance.state);
  writeNotNull('healthMessage', instance.healthMessage);
  writeNotNull('healthDetails', instance.healthDetails);
  return val;
}

SequencingChangeIndirectionsRequest
    _$SequencingChangeIndirectionsRequestFromJson(Map<String, dynamic> json) =>
        SequencingChangeIndirectionsRequest(
          changes: (json['changes'] as List<dynamic>?)
                  ?.map((e) => SequencingIndirectionChangeAssignment.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              [],
        );

Map<String, dynamic> _$SequencingChangeIndirectionsRequestToJson(
    SequencingChangeIndirectionsRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('changes', instance.changes?.map((e) => e.toJson()).toList());
  return val;
}

SequencingIndirectionChangeAssignment
    _$SequencingIndirectionChangeAssignmentFromJson(
            Map<String, dynamic> json) =>
        SequencingIndirectionChangeAssignment(
          indirection: json['indirection'] == null
              ? null
              : D3apiLocator.fromJson(
                  json['indirection'] as Map<String, dynamic>),
          resource: json['resource'] == null
              ? null
              : D3apiLocator.fromJson(json['resource'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$SequencingIndirectionChangeAssignmentToJson(
    SequencingIndirectionChangeAssignment instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('indirection', instance.indirection?.toJson());
  writeNotNull('resource', instance.resource?.toJson());
  return val;
}

SequencingIndirectionResource _$SequencingIndirectionResourceFromJson(
        Map<String, dynamic> json) =>
    SequencingIndirectionResource(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$SequencingIndirectionResourceToJson(
    SequencingIndirectionResource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uid', instance.uid);
  writeNotNull('name', instance.name);
  return val;
}

SequencingListAvailableResourcesResponse
    _$SequencingListAvailableResourcesResponseFromJson(
            Map<String, dynamic> json) =>
        SequencingListAvailableResourcesResponse(
          status: json['status'] == null
              ? null
              : RpcStatus.fromJson(json['status'] as Map<String, dynamic>),
          result: (json['result'] as List<dynamic>?)
                  ?.map((e) => SequencingIndirectionResource.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              [],
        );

Map<String, dynamic> _$SequencingListAvailableResourcesResponseToJson(
    SequencingListAvailableResourcesResponse instance) {
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

SequencingListIndirectionItem _$SequencingListIndirectionItemFromJson(
        Map<String, dynamic> json) =>
    SequencingListIndirectionItem(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
      resourceType: json['resourceType'] as String?,
      currentResource: json['currentResource'] == null
          ? null
          : SequencingIndirectionResource.fromJson(
              json['currentResource'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SequencingListIndirectionItemToJson(
    SequencingListIndirectionItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uid', instance.uid);
  writeNotNull('name', instance.name);
  writeNotNull('resourceType', instance.resourceType);
  writeNotNull('currentResource', instance.currentResource?.toJson());
  return val;
}

SequencingListIndirectionsResponse _$SequencingListIndirectionsResponseFromJson(
        Map<String, dynamic> json) =>
    SequencingListIndirectionsResponse(
      status: json['status'] == null
          ? null
          : RpcStatus.fromJson(json['status'] as Map<String, dynamic>),
      result: (json['result'] as List<dynamic>?)
              ?.map((e) => SequencingListIndirectionItem.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$SequencingListIndirectionsResponseToJson(
    SequencingListIndirectionsResponse instance) {
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

StatusD3VersionInfo _$StatusD3VersionInfoFromJson(Map<String, dynamic> json) =>
    StatusD3VersionInfo(
      major: json['major'] as int?,
      minor: json['minor'] as int?,
      hotfix: json['hotfix'] as int?,
      revision: json['revision'] as int?,
    );

Map<String, dynamic> _$StatusD3VersionInfoToJson(StatusD3VersionInfo instance) {
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

StatusGetProjectResponse _$StatusGetProjectResponseFromJson(
        Map<String, dynamic> json) =>
    StatusGetProjectResponse(
      status: json['status'] == null
          ? null
          : RpcStatus.fromJson(json['status'] as Map<String, dynamic>),
      result: json['result'] == null
          ? null
          : StatusGetProjectResult.fromJson(
              json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StatusGetProjectResponseToJson(
    StatusGetProjectResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status?.toJson());
  writeNotNull('result', instance.result?.toJson());
  return val;
}

StatusGetProjectResult _$StatusGetProjectResultFromJson(
        Map<String, dynamic> json) =>
    StatusGetProjectResult(
      projectPath: json['projectPath'] as String?,
      version: json['version'] == null
          ? null
          : StatusD3VersionInfo.fromJson(
              json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StatusGetProjectResultToJson(
    StatusGetProjectResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('projectPath', instance.projectPath);
  writeNotNull('version', instance.version?.toJson());
  return val;
}

StatusGetSessionResponse _$StatusGetSessionResponseFromJson(
        Map<String, dynamic> json) =>
    StatusGetSessionResponse(
      status: json['status'] == null
          ? null
          : RpcStatus.fromJson(json['status'] as Map<String, dynamic>),
      result: json['result'] == null
          ? null
          : StatusGetSessionResult.fromJson(
              json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StatusGetSessionResponseToJson(
    StatusGetSessionResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status?.toJson());
  writeNotNull('result', instance.result?.toJson());
  return val;
}

StatusGetSessionResult _$StatusGetSessionResultFromJson(
        Map<String, dynamic> json) =>
    StatusGetSessionResult(
      isRunningSolo: json['isRunningSolo'] as bool?,
      isDirectorDedicated: json['isDirectorDedicated'] as bool?,
      director: json['director'] == null
          ? null
          : StatusMachineInfo.fromJson(
              json['director'] as Map<String, dynamic>),
      actors: (json['actors'] as List<dynamic>?)
              ?.map(
                  (e) => StatusMachineInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      understudies: (json['understudies'] as List<dynamic>?)
              ?.map(
                  (e) => StatusMachineInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$StatusGetSessionResultToJson(
    StatusGetSessionResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('isRunningSolo', instance.isRunningSolo);
  writeNotNull('isDirectorDedicated', instance.isDirectorDedicated);
  writeNotNull('director', instance.director?.toJson());
  writeNotNull('actors', instance.actors?.map((e) => e.toJson()).toList());
  writeNotNull(
      'understudies', instance.understudies?.map((e) => e.toJson()).toList());
  return val;
}

StatusHealthReport _$StatusHealthReportFromJson(Map<String, dynamic> json) =>
    StatusHealthReport(
      machine: json['machine'] == null
          ? null
          : Statusd3Machine.fromJson(json['machine'] as Map<String, dynamic>),
      runningAsMachine: json['runningAsMachine'] == null
          ? null
          : Statusd3Machine.fromJson(
              json['runningAsMachine'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : StatusHealthStatus.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StatusHealthReportToJson(StatusHealthReport instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('machine', instance.machine?.toJson());
  writeNotNull('runningAsMachine', instance.runningAsMachine?.toJson());
  writeNotNull('status', instance.status?.toJson());
  return val;
}

StatusHealthStates _$StatusHealthStatesFromJson(Map<String, dynamic> json) =>
    StatusHealthStates(
      name: json['name'] as String?,
      detail: json['detail'] as String?,
      category: json['category'] as String?,
      severity: json['severity'] as String?,
    );

Map<String, dynamic> _$StatusHealthStatesToJson(StatusHealthStates instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('detail', instance.detail);
  writeNotNull('category', instance.category);
  writeNotNull('severity', instance.severity);
  return val;
}

StatusHealthStatus _$StatusHealthStatusFromJson(Map<String, dynamic> json) =>
    StatusHealthStatus(
      averageFPS: (json['averageFPS'] as num?)?.toDouble(),
      videoDroppedFrames: (json['videoDroppedFrames'] as num?)?.toDouble(),
      videoMissedFrames: (json['videoMissedFrames'] as num?)?.toDouble(),
      states: (json['states'] as List<dynamic>?)
              ?.map(
                  (e) => StatusHealthStates.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$StatusHealthStatusToJson(StatusHealthStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('averageFPS', instance.averageFPS);
  writeNotNull('videoDroppedFrames', instance.videoDroppedFrames);
  writeNotNull('videoMissedFrames', instance.videoMissedFrames);
  writeNotNull('states', instance.states?.map((e) => e.toJson()).toList());
  return val;
}

StatusListHealthResponse _$StatusListHealthResponseFromJson(
        Map<String, dynamic> json) =>
    StatusListHealthResponse(
      status: json['status'] == null
          ? null
          : RpcStatus.fromJson(json['status'] as Map<String, dynamic>),
      result: (json['result'] as List<dynamic>?)
              ?.map(
                  (e) => StatusHealthReport.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$StatusListHealthResponseToJson(
    StatusListHealthResponse instance) {
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

StatusListNotificationsResponse _$StatusListNotificationsResponseFromJson(
        Map<String, dynamic> json) =>
    StatusListNotificationsResponse(
      status: json['status'] == null
          ? null
          : RpcStatus.fromJson(json['status'] as Map<String, dynamic>),
      result: (json['result'] as List<dynamic>?)
              ?.map((e) =>
                  StatusNotificationsReport.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$StatusListNotificationsResponseToJson(
    StatusListNotificationsResponse instance) {
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

StatusMachineInfo _$StatusMachineInfoFromJson(Map<String, dynamic> json) =>
    StatusMachineInfo(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
      hostname: json['hostname'] as String?,
      type: machineInfoMachineTypeFromJson(json['type']),
    );

Map<String, dynamic> _$StatusMachineInfoToJson(StatusMachineInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uid', instance.uid);
  writeNotNull('name', instance.name);
  writeNotNull('hostname', instance.hostname);
  writeNotNull('type', machineInfoMachineTypeToJson(instance.type));
  return val;
}

StatusNotification _$StatusNotificationFromJson(Map<String, dynamic> json) =>
    StatusNotification(
      summary: json['summary'] as String?,
      detail: json['detail'] as String?,
    );

Map<String, dynamic> _$StatusNotificationToJson(StatusNotification instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('summary', instance.summary);
  writeNotNull('detail', instance.detail);
  return val;
}

StatusNotificationsReport _$StatusNotificationsReportFromJson(
        Map<String, dynamic> json) =>
    StatusNotificationsReport(
      machine: json['machine'] == null
          ? null
          : Statusd3Machine.fromJson(json['machine'] as Map<String, dynamic>),
      notifications: (json['notifications'] as List<dynamic>?)
              ?.map(
                  (e) => StatusNotification.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$StatusNotificationsReportToJson(
    StatusNotificationsReport instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('machine', instance.machine?.toJson());
  writeNotNull(
      'notifications', instance.notifications?.map((e) => e.toJson()).toList());
  return val;
}

Statusd3Machine _$Statusd3MachineFromJson(Map<String, dynamic> json) =>
    Statusd3Machine(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
      hostname: json['hostname'] as String?,
    );

Map<String, dynamic> _$Statusd3MachineToJson(Statusd3Machine instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uid', instance.uid);
  writeNotNull('name', instance.name);
  writeNotNull('hostname', instance.hostname);
  return val;
}

TransportAnnotationInfo _$TransportAnnotationInfoFromJson(
        Map<String, dynamic> json) =>
    TransportAnnotationInfo(
      notes: (json['notes'] as List<dynamic>?)
              ?.map(
                  (e) => TransportNoteInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      tags: (json['tags'] as List<dynamic>?)
              ?.map((e) => TransportTagInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      sections: (json['sections'] as List<dynamic>?)
              ?.map((e) =>
                  TransportSectionInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TransportAnnotationInfoToJson(
    TransportAnnotationInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('notes', instance.notes?.map((e) => e.toJson()).toList());
  writeNotNull('tags', instance.tags?.map((e) => e.toJson()).toList());
  writeNotNull('sections', instance.sections?.map((e) => e.toJson()).toList());
  return val;
}

TransportGetActiveTransportResponse
    _$TransportGetActiveTransportResponseFromJson(Map<String, dynamic> json) =>
        TransportGetActiveTransportResponse(
          status: json['status'] == null
              ? null
              : RpcStatus.fromJson(json['status'] as Map<String, dynamic>),
          result: (json['result'] as List<dynamic>?)
                  ?.map((e) => TransportTransportInfo.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              [],
        );

Map<String, dynamic> _$TransportGetActiveTransportResponseToJson(
    TransportGetActiveTransportResponse instance) {
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

TransportGoToFrameInfo _$TransportGoToFrameInfoFromJson(
        Map<String, dynamic> json) =>
    TransportGoToFrameInfo(
      transport: json['transport'] == null
          ? null
          : D3apiLocator.fromJson(json['transport'] as Map<String, dynamic>),
      frame: json['frame'] as int?,
      playmode: transportAPIPlayModeFromJson(json['playmode']),
    );

Map<String, dynamic> _$TransportGoToFrameInfoToJson(
    TransportGoToFrameInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('transport', instance.transport?.toJson());
  writeNotNull('frame', instance.frame);
  writeNotNull('playmode', transportAPIPlayModeToJson(instance.playmode));
  return val;
}

TransportGoToFrameRequest _$TransportGoToFrameRequestFromJson(
        Map<String, dynamic> json) =>
    TransportGoToFrameRequest(
      transports: (json['transports'] as List<dynamic>?)
              ?.map((e) =>
                  TransportGoToFrameInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TransportGoToFrameRequestToJson(
    TransportGoToFrameRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'transports', instance.transports?.map((e) => e.toJson()).toList());
  return val;
}

TransportGoToNextPrevInfo _$TransportGoToNextPrevInfoFromJson(
        Map<String, dynamic> json) =>
    TransportGoToNextPrevInfo(
      transport: json['transport'] == null
          ? null
          : D3apiLocator.fromJson(json['transport'] as Map<String, dynamic>),
      playmode: transportAPIPlayModeFromJson(json['playmode']),
    );

Map<String, dynamic> _$TransportGoToNextPrevInfoToJson(
    TransportGoToNextPrevInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('transport', instance.transport?.toJson());
  writeNotNull('playmode', transportAPIPlayModeToJson(instance.playmode));
  return val;
}

TransportGoToNextSectionRequest _$TransportGoToNextSectionRequestFromJson(
        Map<String, dynamic> json) =>
    TransportGoToNextSectionRequest(
      transports: (json['transports'] as List<dynamic>?)
              ?.map((e) =>
                  TransportGoToNextPrevInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TransportGoToNextSectionRequestToJson(
    TransportGoToNextSectionRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'transports', instance.transports?.map((e) => e.toJson()).toList());
  return val;
}

TransportGoToNextTrackRequest _$TransportGoToNextTrackRequestFromJson(
        Map<String, dynamic> json) =>
    TransportGoToNextTrackRequest(
      transports: (json['transports'] as List<dynamic>?)
              ?.map((e) =>
                  TransportGoToNextPrevInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TransportGoToNextTrackRequestToJson(
    TransportGoToNextTrackRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'transports', instance.transports?.map((e) => e.toJson()).toList());
  return val;
}

TransportGoToNoteRequest _$TransportGoToNoteRequestFromJson(
        Map<String, dynamic> json) =>
    TransportGoToNoteRequest(
      transports: (json['transports'] as List<dynamic>?)
              ?.map((e) =>
                  TransportGotoNoteInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TransportGoToNoteRequestToJson(
    TransportGoToNoteRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'transports', instance.transports?.map((e) => e.toJson()).toList());
  return val;
}

TransportGoToPrevSectionRequest _$TransportGoToPrevSectionRequestFromJson(
        Map<String, dynamic> json) =>
    TransportGoToPrevSectionRequest(
      transports: (json['transports'] as List<dynamic>?)
              ?.map((e) =>
                  TransportGoToNextPrevInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TransportGoToPrevSectionRequestToJson(
    TransportGoToPrevSectionRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'transports', instance.transports?.map((e) => e.toJson()).toList());
  return val;
}

TransportGoToPrevTrackRequest _$TransportGoToPrevTrackRequestFromJson(
        Map<String, dynamic> json) =>
    TransportGoToPrevTrackRequest(
      transports: (json['transports'] as List<dynamic>?)
              ?.map((e) =>
                  TransportGoToNextPrevInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TransportGoToPrevTrackRequestToJson(
    TransportGoToPrevTrackRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'transports', instance.transports?.map((e) => e.toJson()).toList());
  return val;
}

TransportGoToSectionInfo _$TransportGoToSectionInfoFromJson(
        Map<String, dynamic> json) =>
    TransportGoToSectionInfo(
      transport: json['transport'] == null
          ? null
          : D3apiLocator.fromJson(json['transport'] as Map<String, dynamic>),
      section: json['section'] as String?,
      playmode: transportAPIPlayModeFromJson(json['playmode']),
    );

Map<String, dynamic> _$TransportGoToSectionInfoToJson(
    TransportGoToSectionInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('transport', instance.transport?.toJson());
  writeNotNull('section', instance.section);
  writeNotNull('playmode', transportAPIPlayModeToJson(instance.playmode));
  return val;
}

TransportGoToSectionRequest _$TransportGoToSectionRequestFromJson(
        Map<String, dynamic> json) =>
    TransportGoToSectionRequest(
      transports: (json['transports'] as List<dynamic>?)
              ?.map((e) =>
                  TransportGoToSectionInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TransportGoToSectionRequestToJson(
    TransportGoToSectionRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'transports', instance.transports?.map((e) => e.toJson()).toList());
  return val;
}

TransportGoToTagInfo _$TransportGoToTagInfoFromJson(
        Map<String, dynamic> json) =>
    TransportGoToTagInfo(
      transport: json['transport'] == null
          ? null
          : D3apiLocator.fromJson(json['transport'] as Map<String, dynamic>),
      type: transportTagTypeFromJson(json['type']),
      value: json['value'] as String?,
      allowGlobalJump: json['allowGlobalJump'] as bool?,
      playmode: transportAPIPlayModeFromJson(json['playmode']),
    );

Map<String, dynamic> _$TransportGoToTagInfoToJson(
    TransportGoToTagInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('transport', instance.transport?.toJson());
  writeNotNull('type', transportTagTypeToJson(instance.type));
  writeNotNull('value', instance.value);
  writeNotNull('allowGlobalJump', instance.allowGlobalJump);
  writeNotNull('playmode', transportAPIPlayModeToJson(instance.playmode));
  return val;
}

TransportGoToTagRequest _$TransportGoToTagRequestFromJson(
        Map<String, dynamic> json) =>
    TransportGoToTagRequest(
      transports: (json['transports'] as List<dynamic>?)
              ?.map((e) =>
                  TransportGoToTagInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TransportGoToTagRequestToJson(
    TransportGoToTagRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'transports', instance.transports?.map((e) => e.toJson()).toList());
  return val;
}

TransportGoToTimeCodeInfo _$TransportGoToTimeCodeInfoFromJson(
        Map<String, dynamic> json) =>
    TransportGoToTimeCodeInfo(
      transport: json['transport'] == null
          ? null
          : D3apiLocator.fromJson(json['transport'] as Map<String, dynamic>),
      timecode: json['timecode'] as String?,
      ignoreTags: json['ignoreTags'] as bool?,
      playmode: transportAPIPlayModeFromJson(json['playmode']),
    );

Map<String, dynamic> _$TransportGoToTimeCodeInfoToJson(
    TransportGoToTimeCodeInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('transport', instance.transport?.toJson());
  writeNotNull('timecode', instance.timecode);
  writeNotNull('ignoreTags', instance.ignoreTags);
  writeNotNull('playmode', transportAPIPlayModeToJson(instance.playmode));
  return val;
}

TransportGoToTimeCodeRequest _$TransportGoToTimeCodeRequestFromJson(
        Map<String, dynamic> json) =>
    TransportGoToTimeCodeRequest(
      transports: (json['transports'] as List<dynamic>?)
              ?.map((e) =>
                  TransportGoToTimeCodeInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TransportGoToTimeCodeRequestToJson(
    TransportGoToTimeCodeRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'transports', instance.transports?.map((e) => e.toJson()).toList());
  return val;
}

TransportGoToTimeInfo _$TransportGoToTimeInfoFromJson(
        Map<String, dynamic> json) =>
    TransportGoToTimeInfo(
      transport: json['transport'] == null
          ? null
          : D3apiLocator.fromJson(json['transport'] as Map<String, dynamic>),
      time: (json['time'] as num?)?.toDouble(),
      playmode: transportAPIPlayModeFromJson(json['playmode']),
    );

Map<String, dynamic> _$TransportGoToTimeInfoToJson(
    TransportGoToTimeInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('transport', instance.transport?.toJson());
  writeNotNull('time', instance.time);
  writeNotNull('playmode', transportAPIPlayModeToJson(instance.playmode));
  return val;
}

TransportGoToTimeRequest _$TransportGoToTimeRequestFromJson(
        Map<String, dynamic> json) =>
    TransportGoToTimeRequest(
      transports: (json['transports'] as List<dynamic>?)
              ?.map((e) =>
                  TransportGoToTimeInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TransportGoToTimeRequestToJson(
    TransportGoToTimeRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'transports', instance.transports?.map((e) => e.toJson()).toList());
  return val;
}

TransportGoToTrackInfo _$TransportGoToTrackInfoFromJson(
        Map<String, dynamic> json) =>
    TransportGoToTrackInfo(
      transport: json['transport'] == null
          ? null
          : D3apiLocator.fromJson(json['transport'] as Map<String, dynamic>),
      track: json['track'] == null
          ? null
          : D3apiLocator.fromJson(json['track'] as Map<String, dynamic>),
      playmode: transportAPIPlayModeFromJson(json['playmode']),
    );

Map<String, dynamic> _$TransportGoToTrackInfoToJson(
    TransportGoToTrackInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('transport', instance.transport?.toJson());
  writeNotNull('track', instance.track?.toJson());
  writeNotNull('playmode', transportAPIPlayModeToJson(instance.playmode));
  return val;
}

TransportGoToTrackRequest _$TransportGoToTrackRequestFromJson(
        Map<String, dynamic> json) =>
    TransportGoToTrackRequest(
      transports: (json['transports'] as List<dynamic>?)
              ?.map((e) =>
                  TransportGoToTrackInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TransportGoToTrackRequestToJson(
    TransportGoToTrackRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'transports', instance.transports?.map((e) => e.toJson()).toList());
  return val;
}

TransportGotoNoteInfo _$TransportGotoNoteInfoFromJson(
        Map<String, dynamic> json) =>
    TransportGotoNoteInfo(
      transport: json['transport'] == null
          ? null
          : D3apiLocator.fromJson(json['transport'] as Map<String, dynamic>),
      note: json['note'] as String?,
      playmode: transportAPIPlayModeFromJson(json['playmode']),
    );

Map<String, dynamic> _$TransportGotoNoteInfoToJson(
    TransportGotoNoteInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('transport', instance.transport?.toJson());
  writeNotNull('note', instance.note);
  writeNotNull('playmode', transportAPIPlayModeToJson(instance.playmode));
  return val;
}

TransportListAnnotationsResponse _$TransportListAnnotationsResponseFromJson(
        Map<String, dynamic> json) =>
    TransportListAnnotationsResponse(
      status: json['status'] == null
          ? null
          : RpcStatus.fromJson(json['status'] as Map<String, dynamic>),
      result: json['result'] == null
          ? null
          : TransportListAnnotationsResult.fromJson(
              json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TransportListAnnotationsResponseToJson(
    TransportListAnnotationsResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status?.toJson());
  writeNotNull('result', instance.result?.toJson());
  return val;
}

TransportListAnnotationsResult _$TransportListAnnotationsResultFromJson(
        Map<String, dynamic> json) =>
    TransportListAnnotationsResult(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
      annotations: json['annotations'] == null
          ? null
          : TransportAnnotationInfo.fromJson(
              json['annotations'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TransportListAnnotationsResultToJson(
    TransportListAnnotationsResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uid', instance.uid);
  writeNotNull('name', instance.name);
  writeNotNull('annotations', instance.annotations?.toJson());
  return val;
}

TransportListSetListsResponse _$TransportListSetListsResponseFromJson(
        Map<String, dynamic> json) =>
    TransportListSetListsResponse(
      status: json['status'] == null
          ? null
          : RpcStatus.fromJson(json['status'] as Map<String, dynamic>),
      result: (json['result'] as List<dynamic>?)
              ?.map((e) =>
                  TransportSetListInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TransportListSetListsResponseToJson(
    TransportListSetListsResponse instance) {
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

TransportListTracksResponse _$TransportListTracksResponseFromJson(
        Map<String, dynamic> json) =>
    TransportListTracksResponse(
      status: json['status'] == null
          ? null
          : RpcStatus.fromJson(json['status'] as Map<String, dynamic>),
      result: (json['result'] as List<dynamic>?)
              ?.map(
                  (e) => TransportTrackInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TransportListTracksResponseToJson(
    TransportListTracksResponse instance) {
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

TransportNoteInfo _$TransportNoteInfoFromJson(Map<String, dynamic> json) =>
    TransportNoteInfo(
      time: (json['time'] as num?)?.toDouble(),
      text: json['text'] as String?,
    );

Map<String, dynamic> _$TransportNoteInfoToJson(TransportNoteInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('time', instance.time);
  writeNotNull('text', instance.text);
  return val;
}

TransportPlayLoopSectionRequest _$TransportPlayLoopSectionRequestFromJson(
        Map<String, dynamic> json) =>
    TransportPlayLoopSectionRequest(
      transports: (json['transports'] as List<dynamic>?)
              ?.map((e) => D3apiLocator.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TransportPlayLoopSectionRequestToJson(
    TransportPlayLoopSectionRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'transports', instance.transports?.map((e) => e.toJson()).toList());
  return val;
}

TransportPlayRequest _$TransportPlayRequestFromJson(
        Map<String, dynamic> json) =>
    TransportPlayRequest(
      transports: (json['transports'] as List<dynamic>?)
              ?.map((e) => D3apiLocator.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TransportPlayRequestToJson(
    TransportPlayRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'transports', instance.transports?.map((e) => e.toJson()).toList());
  return val;
}

TransportPlaySectionRequest _$TransportPlaySectionRequestFromJson(
        Map<String, dynamic> json) =>
    TransportPlaySectionRequest(
      transports: (json['transports'] as List<dynamic>?)
              ?.map((e) => D3apiLocator.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TransportPlaySectionRequestToJson(
    TransportPlaySectionRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'transports', instance.transports?.map((e) => e.toJson()).toList());
  return val;
}

TransportReturnToStartRequest _$TransportReturnToStartRequestFromJson(
        Map<String, dynamic> json) =>
    TransportReturnToStartRequest(
      transports: (json['transports'] as List<dynamic>?)
              ?.map((e) => D3apiLocator.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TransportReturnToStartRequestToJson(
    TransportReturnToStartRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'transports', instance.transports?.map((e) => e.toJson()).toList());
  return val;
}

TransportSectionInfo _$TransportSectionInfoFromJson(
        Map<String, dynamic> json) =>
    TransportSectionInfo(
      time: (json['time'] as num?)?.toDouble(),
      index: json['index'] as String?,
    );

Map<String, dynamic> _$TransportSectionInfoToJson(
    TransportSectionInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('time', instance.time);
  writeNotNull('index', instance.index);
  return val;
}

TransportSetBrightnessInfo _$TransportSetBrightnessInfoFromJson(
        Map<String, dynamic> json) =>
    TransportSetBrightnessInfo(
      transport: json['transport'] == null
          ? null
          : D3apiLocator.fromJson(json['transport'] as Map<String, dynamic>),
      brightness: (json['brightness'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$TransportSetBrightnessInfoToJson(
    TransportSetBrightnessInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('transport', instance.transport?.toJson());
  writeNotNull('brightness', instance.brightness);
  return val;
}

TransportSetBrightnessRequest _$TransportSetBrightnessRequestFromJson(
        Map<String, dynamic> json) =>
    TransportSetBrightnessRequest(
      transports: (json['transports'] as List<dynamic>?)
              ?.map((e) => TransportSetBrightnessInfo.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TransportSetBrightnessRequestToJson(
    TransportSetBrightnessRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'transports', instance.transports?.map((e) => e.toJson()).toList());
  return val;
}

TransportSetEngagedInfo _$TransportSetEngagedInfoFromJson(
        Map<String, dynamic> json) =>
    TransportSetEngagedInfo(
      transport: json['transport'] == null
          ? null
          : D3apiLocator.fromJson(json['transport'] as Map<String, dynamic>),
      engaged: json['engaged'] as bool?,
    );

Map<String, dynamic> _$TransportSetEngagedInfoToJson(
    TransportSetEngagedInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('transport', instance.transport?.toJson());
  writeNotNull('engaged', instance.engaged);
  return val;
}

TransportSetEngagedRequest _$TransportSetEngagedRequestFromJson(
        Map<String, dynamic> json) =>
    TransportSetEngagedRequest(
      transports: (json['transports'] as List<dynamic>?)
              ?.map((e) =>
                  TransportSetEngagedInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TransportSetEngagedRequestToJson(
    TransportSetEngagedRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'transports', instance.transports?.map((e) => e.toJson()).toList());
  return val;
}

TransportSetListInfo _$TransportSetListInfoFromJson(
        Map<String, dynamic> json) =>
    TransportSetListInfo(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
      tracks: (json['tracks'] as List<dynamic>?)
              ?.map(
                  (e) => TransportTrackInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TransportSetListInfoToJson(
    TransportSetListInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uid', instance.uid);
  writeNotNull('name', instance.name);
  writeNotNull('tracks', instance.tracks?.map((e) => e.toJson()).toList());
  return val;
}

TransportSetVolumeInfo _$TransportSetVolumeInfoFromJson(
        Map<String, dynamic> json) =>
    TransportSetVolumeInfo(
      transport: json['transport'] == null
          ? null
          : D3apiLocator.fromJson(json['transport'] as Map<String, dynamic>),
      volume: (json['volume'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$TransportSetVolumeInfoToJson(
    TransportSetVolumeInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('transport', instance.transport?.toJson());
  writeNotNull('volume', instance.volume);
  return val;
}

TransportSetVolumeRequest _$TransportSetVolumeRequestFromJson(
        Map<String, dynamic> json) =>
    TransportSetVolumeRequest(
      transports: (json['transports'] as List<dynamic>?)
              ?.map((e) =>
                  TransportSetVolumeInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TransportSetVolumeRequestToJson(
    TransportSetVolumeRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'transports', instance.transports?.map((e) => e.toJson()).toList());
  return val;
}

TransportStopRequest _$TransportStopRequestFromJson(
        Map<String, dynamic> json) =>
    TransportStopRequest(
      transports: (json['transports'] as List<dynamic>?)
              ?.map((e) => D3apiLocator.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TransportStopRequestToJson(
    TransportStopRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'transports', instance.transports?.map((e) => e.toJson()).toList());
  return val;
}

TransportTagInfo _$TransportTagInfoFromJson(Map<String, dynamic> json) =>
    TransportTagInfo(
      time: (json['time'] as num?)?.toDouble(),
      type: transportTagTypeFromJson(json['type']),
      value: json['value'] as String?,
    );

Map<String, dynamic> _$TransportTagInfoToJson(TransportTagInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('time', instance.time);
  writeNotNull('type', transportTagTypeToJson(instance.type));
  writeNotNull('value', instance.value);
  return val;
}

TransportTrackInfo _$TransportTrackInfoFromJson(Map<String, dynamic> json) =>
    TransportTrackInfo(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
      length: (json['length'] as num?)?.toDouble(),
      crossfade: trackInfoCrossfadeModeFromJson(json['crossfade']),
    );

Map<String, dynamic> _$TransportTrackInfoToJson(TransportTrackInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uid', instance.uid);
  writeNotNull('name', instance.name);
  writeNotNull('length', instance.length);
  writeNotNull('crossfade', trackInfoCrossfadeModeToJson(instance.crossfade));
  return val;
}

TransportTransportInfo _$TransportTransportInfoFromJson(
        Map<String, dynamic> json) =>
    TransportTransportInfo(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
      engaged: json['engaged'] as bool?,
      volume: (json['volume'] as num?)?.toDouble(),
      brightness: (json['brightness'] as num?)?.toDouble(),
      playmode: transportAPIPlayModeFromJson(json['playmode']),
    );

Map<String, dynamic> _$TransportTransportInfoToJson(
    TransportTransportInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uid', instance.uid);
  writeNotNull('name', instance.name);
  writeNotNull('engaged', instance.engaged);
  writeNotNull('volume', instance.volume);
  writeNotNull('brightness', instance.brightness);
  writeNotNull('playmode', transportAPIPlayModeToJson(instance.playmode));
  return val;
}
