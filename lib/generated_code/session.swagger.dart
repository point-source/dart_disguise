// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:chopper/chopper.dart' as chopper;
import 'session.enums.swagger.dart' as enums;
export 'session.enums.swagger.dart';

part 'session.swagger.chopper.dart';
part 'session.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class Session extends ChopperService {
  static Session create({
    ChopperClient? client,
    Authenticator? authenticator,
    Uri? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$Session(client);
    }

    final newClient = ChopperClient(
      services: [_$Session()],
      converter: $JsonSerializableConverter(),
      interceptors: interceptors ?? [],
      authenticator: authenticator, /*baseUrl: YOUR_BASE_URL*/
    );
    return _$Session(newClient);
  }

  ///Sets a CDL
  ///@param body
  Future<chopper.Response<D3apiEmptyResponse>> colourCdlPost(
      {required ColourSetCDLRequest? body}) {
    generatedMapping.putIfAbsent(
        ColourSetCDLRequest, () => ColourSetCDLRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _colourCdlPost(body: body);
  }

  ///Sets a CDL
  ///@param body
  @Post(path: '/colour/cdl')
  Future<chopper.Response<D3apiEmptyResponse>> _colourCdlPost(
      {@Body() required ColourSetCDLRequest? body});

  ///Returns of the list of all CDLs
  Future<chopper.Response<ColourListCDLsResponse>> colourCdlsGet() {
    generatedMapping.putIfAbsent(
        ColourListCDLsResponse, () => ColourListCDLsResponse.fromJsonFactory);

    return _colourCdlsGet();
  }

  ///Returns of the list of all CDLs
  @Get(path: '/colour/cdls')
  Future<chopper.Response<ColourListCDLsResponse>> _colourCdlsGet();

  ///Returns camera properties of cameras on the current stage
  Future<chopper.Response<MixedrealityGetCamerasResponse>>
      mixedrealityCamerasGet() {
    generatedMapping.putIfAbsent(MixedrealityGetCamerasResponse,
        () => MixedrealityGetCamerasResponse.fromJsonFactory);

    return _mixedrealityCamerasGet();
  }

  ///Returns camera properties of cameras on the current stage
  @Get(path: '/mixedreality/cameras')
  Future<chopper.Response<MixedrealityGetCamerasResponse>>
      _mixedrealityCamerasGet();

  ///Capture an observation on the given camera
  ///@param body
  Future<chopper.Response<D3apiEmptyResponse>>
      mixedrealityCaptureobservationPost(
          {required MixedrealityCaptureObservationRequest? body}) {
    generatedMapping.putIfAbsent(MixedrealityCaptureObservationRequest,
        () => MixedrealityCaptureObservationRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _mixedrealityCaptureobservationPost(body: body);
  }

  ///Capture an observation on the given camera
  ///@param body
  @Post(path: '/mixedreality/captureobservation')
  Future<chopper.Response<D3apiEmptyResponse>>
      _mixedrealityCaptureobservationPost(
          {@Body() required MixedrealityCaptureObservationRequest? body});

  ///Gets the current capture progress, only one capture can run at once
  Future<chopper.Response<D3apiBoolResponse>> mixedrealityCaptureprogressGet() {
    generatedMapping.putIfAbsent(
        D3apiBoolResponse, () => D3apiBoolResponse.fromJsonFactory);

    return _mixedrealityCaptureprogressGet();
  }

  ///Gets the current capture progress, only one capture can run at once
  @Get(path: '/mixedreality/captureprogress')
  Future<chopper.Response<D3apiBoolResponse>> _mixedrealityCaptureprogressGet();

  ///Delete all observations for a given spatial calibration
  ///@param body
  Future<chopper.Response<D3apiEmptyResponse>>
      mixedrealityDeleteallobservationsPost(
          {required MixedrealityDeleteAllObservationsRequest? body}) {
    generatedMapping.putIfAbsent(MixedrealityDeleteAllObservationsRequest,
        () => MixedrealityDeleteAllObservationsRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _mixedrealityDeleteallobservationsPost(body: body);
  }

  ///Delete all observations for a given spatial calibration
  ///@param body
  @Post(path: '/mixedreality/deleteallobservations')
  Future<chopper.Response<D3apiEmptyResponse>>
      _mixedrealityDeleteallobservationsPost(
          {@Body() required MixedrealityDeleteAllObservationsRequest? body});

  ///Pass a list of observation identifiers to delete
  ///@param body
  Future<chopper.Response<D3apiEmptyResponse>>
      mixedrealityDeleteobservationsPost(
          {required MixedrealityDeleteObservationsRequest? body}) {
    generatedMapping.putIfAbsent(MixedrealityDeleteObservationsRequest,
        () => MixedrealityDeleteObservationsRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _mixedrealityDeleteobservationsPost(body: body);
  }

  ///Pass a list of observation identifiers to delete
  ///@param body
  @Post(path: '/mixedreality/deleteobservations')
  Future<chopper.Response<D3apiEmptyResponse>>
      _mixedrealityDeleteobservationsPost(
          {@Body() required MixedrealityDeleteObservationsRequest? body});

  ///Pass a list of observation identifiers to enable/disable
  ///@param body
  Future<chopper.Response<D3apiEmptyResponse>>
      mixedrealityEnableobservationsPost(
          {required MixedrealityEnableObservationsRequest? body}) {
    generatedMapping.putIfAbsent(MixedrealityEnableObservationsRequest,
        () => MixedrealityEnableObservationsRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _mixedrealityEnableobservationsPost(body: body);
  }

  ///Pass a list of observation identifiers to enable/disable
  ///@param body
  @Post(path: '/mixedreality/enableobservations')
  Future<chopper.Response<D3apiEmptyResponse>>
      _mixedrealityEnableobservationsPost(
          {@Body() required MixedrealityEnableObservationsRequest? body});

  ///Returns mixed reality sets on the current stage
  Future<chopper.Response<MixedrealityGetMRSetsResponse>>
      mixedrealityMrsetsGet() {
    generatedMapping.putIfAbsent(MixedrealityGetMRSetsResponse,
        () => MixedrealityGetMRSetsResponse.fromJsonFactory);

    return _mixedrealityMrsetsGet();
  }

  ///Returns mixed reality sets on the current stage
  @Get(path: '/mixedreality/mrsets')
  Future<chopper.Response<MixedrealityGetMRSetsResponse>>
      _mixedrealityMrsetsGet();

  ///Sets the current camera of an MR Set
  ///@param body
  Future<chopper.Response<D3apiEmptyResponse>> mixedrealitySelectcameraPost(
      {required MixedrealitySelectCameraRequest? body}) {
    generatedMapping.putIfAbsent(MixedrealitySelectCameraRequest,
        () => MixedrealitySelectCameraRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _mixedrealitySelectcameraPost(body: body);
  }

  ///Sets the current camera of an MR Set
  ///@param body
  @Post(path: '/mixedreality/selectcamera')
  Future<chopper.Response<D3apiEmptyResponse>> _mixedrealitySelectcameraPost(
      {@Body() required MixedrealitySelectCameraRequest? body});

  ///Sets the spatial calibration currently in use by a camera
  ///@param body
  Future<chopper.Response<D3apiEmptyResponse>>
      mixedrealitySelectspatialcalibrationPost(
          {required MixedrealitySelectSpatialCalibrationRequest? body}) {
    generatedMapping.putIfAbsent(MixedrealitySelectSpatialCalibrationRequest,
        () => MixedrealitySelectSpatialCalibrationRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _mixedrealitySelectspatialcalibrationPost(body: body);
  }

  ///Sets the spatial calibration currently in use by a camera
  ///@param body
  @Post(path: '/mixedreality/selectspatialcalibration')
  Future<chopper.Response<D3apiEmptyResponse>>
      _mixedrealitySelectspatialcalibrationPost(
          {@Body() required MixedrealitySelectSpatialCalibrationRequest? body});

  ///Returns a list of all spatial calibrations
  Future<chopper.Response<MixedrealityListSpatialCalibrationsResponse>>
      mixedrealitySpatialcalibrationsGet() {
    generatedMapping.putIfAbsent(MixedrealityListSpatialCalibrationsResponse,
        () => MixedrealityListSpatialCalibrationsResponse.fromJsonFactory);

    return _mixedrealitySpatialcalibrationsGet();
  }

  ///Returns a list of all spatial calibrations
  @Get(path: '/mixedreality/spatialcalibrations')
  Future<chopper.Response<MixedrealityListSpatialCalibrationsResponse>>
      _mixedrealitySpatialcalibrationsGet();

  ///Lineup the current pose for the selected projector according to the selected reference points
  ///@param body
  Future<chopper.Response<D3apiEmptyResponse>> quickcalLineupcurrentposePost(
      {required QuickcalLineUpCurrentPoseRequest? body}) {
    generatedMapping.putIfAbsent(QuickcalLineUpCurrentPoseRequest,
        () => QuickcalLineUpCurrentPoseRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _quickcalLineupcurrentposePost(body: body);
  }

  ///Lineup the current pose for the selected projector according to the selected reference points
  ///@param body
  @Post(path: '/quickcal/lineupcurrentpose')
  Future<chopper.Response<D3apiEmptyResponse>> _quickcalLineupcurrentposePost(
      {@Body() required QuickcalLineUpCurrentPoseRequest? body});

  ///Returns a list of all reference points
  Future<chopper.Response<QuickcalListReferencePointsResponse>>
      quickcalReferencepointsGet() {
    generatedMapping.putIfAbsent(QuickcalListReferencePointsResponse,
        () => QuickcalListReferencePointsResponse.fromJsonFactory);

    return _quickcalReferencepointsGet();
  }

  ///Returns a list of all reference points
  @Get(path: '/quickcal/referencepoints')
  Future<chopper.Response<QuickcalListReferencePointsResponse>>
      _quickcalReferencepointsGet();

  ///Resets the lineup of the selected projector
  ///@param body
  Future<chopper.Response<D3apiEmptyResponse>> quickcalResetlineupPost(
      {required QuickcalResetLineUpRequest? body}) {
    generatedMapping.putIfAbsent(QuickcalResetLineUpRequest,
        () => QuickcalResetLineUpRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _quickcalResetlineupPost(body: body);
  }

  ///Resets the lineup of the selected projector
  ///@param body
  @Post(path: '/quickcal/resetlineup')
  Future<chopper.Response<D3apiEmptyResponse>> _quickcalResetlineupPost(
      {@Body() required QuickcalResetLineUpRequest? body});

  ///Returns the RenderStream assigners list
  Future<chopper.Response<RenderstreamGetAssignersResponse>>
      renderstreamAssignersGet() {
    generatedMapping.putIfAbsent(RenderstreamGetAssignersResponse,
        () => RenderstreamGetAssignersResponse.fromJsonFactory);

    return _renderstreamAssignersGet();
  }

  ///Returns the RenderStream assigners list
  @Get(path: '/renderstream/assigners')
  Future<chopper.Response<RenderstreamGetAssignersResponse>>
      _renderstreamAssignersGet();

  ///Fail over a single machine
  ///@param body
  Future<chopper.Response<D3apiEmptyResponse>> renderstreamFailoverPost(
      {required RenderstreamFailoverRequest? body}) {
    generatedMapping.putIfAbsent(RenderstreamFailoverRequest,
        () => RenderstreamFailoverRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _renderstreamFailoverPost(body: body);
  }

  ///Fail over a single machine
  ///@param body
  @Post(path: '/renderstream/failover')
  Future<chopper.Response<D3apiEmptyResponse>> _renderstreamFailoverPost(
      {@Body() required RenderstreamFailoverRequest? body});

  ///Returns config information for the selected layer
  ///@param uid Unique identifier.
  ///@param name Unqualified name.
  Future<chopper.Response<RenderstreamGetLayerConfigResponse>>
      renderstreamLayerconfigGet({
    String? uid,
    String? name,
  }) {
    generatedMapping.putIfAbsent(RenderstreamGetLayerConfigResponse,
        () => RenderstreamGetLayerConfigResponse.fromJsonFactory);

    return _renderstreamLayerconfigGet(uid: uid, name: name);
  }

  ///Returns config information for the selected layer
  ///@param uid Unique identifier.
  ///@param name Unqualified name.
  @Get(path: '/renderstream/layerconfig')
  Future<chopper.Response<RenderstreamGetLayerConfigResponse>>
      _renderstreamLayerconfigGet({
    @Query('uid') String? uid,
    @Query('name') String? name,
  });

  ///Returns the RenderStream layer list
  Future<chopper.Response<RenderstreamGetLayersResponse>>
      renderstreamLayersGet() {
    generatedMapping.putIfAbsent(RenderstreamGetLayersResponse,
        () => RenderstreamGetLayersResponse.fromJsonFactory);

    return _renderstreamLayersGet();
  }

  ///Returns the RenderStream layer list
  @Get(path: '/renderstream/layers')
  Future<chopper.Response<RenderstreamGetLayersResponse>>
      _renderstreamLayersGet();

  ///Returns status information for the selected layer
  ///@param uid Unique identifier.
  ///@param name Unqualified name.
  Future<chopper.Response<RenderstreamGetLayerStatusResponse>>
      renderstreamLayerstatusGet({
    String? uid,
    String? name,
  }) {
    generatedMapping.putIfAbsent(RenderstreamGetLayerStatusResponse,
        () => RenderstreamGetLayerStatusResponse.fromJsonFactory);

    return _renderstreamLayerstatusGet(uid: uid, name: name);
  }

  ///Returns status information for the selected layer
  ///@param uid Unique identifier.
  ///@param name Unqualified name.
  @Get(path: '/renderstream/layerstatus')
  Future<chopper.Response<RenderstreamGetLayerStatusResponse>>
      _renderstreamLayerstatusGet({
    @Query('uid') String? uid,
    @Query('name') String? name,
  });

  ///Returns the RenderStream pools list
  Future<chopper.Response<RenderstreamGetPoolsResponse>>
      renderstreamPoolsGet() {
    generatedMapping.putIfAbsent(RenderstreamGetPoolsResponse,
        () => RenderstreamGetPoolsResponse.fromJsonFactory);

    return _renderstreamPoolsGet();
  }

  ///Returns the RenderStream pools list
  @Get(path: '/renderstream/pools')
  Future<chopper.Response<RenderstreamGetPoolsResponse>>
      _renderstreamPoolsGet();

  ///Restarts a workload for the selected layer
  ///@param body
  Future<chopper.Response<D3apiEmptyResponse>> renderstreamRestartlayersPost(
      {required RenderstreamRestartLayersRequest? body}) {
    generatedMapping.putIfAbsent(RenderstreamRestartLayersRequest,
        () => RenderstreamRestartLayersRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _renderstreamRestartlayersPost(body: body);
  }

  ///Restarts a workload for the selected layer
  ///@param body
  @Post(path: '/renderstream/restartlayers')
  Future<chopper.Response<D3apiEmptyResponse>> _renderstreamRestartlayersPost(
      {@Body() required RenderstreamRestartLayersRequest? body});

  ///Starts a workload for the selected layer
  ///@param body
  Future<chopper.Response<D3apiEmptyResponse>> renderstreamStartlayersPost(
      {required RenderstreamStartLayersRequest? body}) {
    generatedMapping.putIfAbsent(RenderstreamStartLayersRequest,
        () => RenderstreamStartLayersRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _renderstreamStartlayersPost(body: body);
  }

  ///Starts a workload for the selected layer
  ///@param body
  @Post(path: '/renderstream/startlayers')
  Future<chopper.Response<D3apiEmptyResponse>> _renderstreamStartlayersPost(
      {@Body() required RenderstreamStartLayersRequest? body});

  ///Stops a workload for the selected layer
  ///@param body
  Future<chopper.Response<D3apiEmptyResponse>> renderstreamStoplayersPost(
      {required RenderstreamStopLayersRequest? body}) {
    generatedMapping.putIfAbsent(RenderstreamStopLayersRequest,
        () => RenderstreamStopLayersRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _renderstreamStoplayersPost(body: body);
  }

  ///Stops a workload for the selected layer
  ///@param body
  @Post(path: '/renderstream/stoplayers')
  Future<chopper.Response<D3apiEmptyResponse>> _renderstreamStoplayersPost(
      {@Body() required RenderstreamStopLayersRequest? body});

  ///Syncs a workload for the selected layer
  ///@param body
  Future<chopper.Response<D3apiEmptyResponse>> renderstreamSynclayersPost(
      {required RenderstreamSyncLayersRequest? body}) {
    generatedMapping.putIfAbsent(RenderstreamSyncLayersRequest,
        () => RenderstreamSyncLayersRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _renderstreamSynclayersPost(body: body);
  }

  ///Syncs a workload for the selected layer
  ///@param body
  @Post(path: '/renderstream/synclayers')
  Future<chopper.Response<D3apiEmptyResponse>> _renderstreamSynclayersPost(
      {@Body() required RenderstreamSyncLayersRequest? body});

  ///Trigger a change to one or more indirections
  ///@param body
  Future<chopper.Response<D3apiEmptyResponse>> sequencingChangeindirectionsPost(
      {required SequencingChangeIndirectionsRequest? body}) {
    generatedMapping.putIfAbsent(SequencingChangeIndirectionsRequest,
        () => SequencingChangeIndirectionsRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _sequencingChangeindirectionsPost(body: body);
  }

  ///Trigger a change to one or more indirections
  ///@param body
  @Post(path: '/sequencing/changeindirections')
  Future<chopper.Response<D3apiEmptyResponse>>
      _sequencingChangeindirectionsPost(
          {@Body() required SequencingChangeIndirectionsRequest? body});

  ///Get the available resources for a given indirection
  ///@param uid Unique identifier.
  ///@param name Unqualified name.
  Future<chopper.Response<SequencingListAvailableResourcesResponse>>
      sequencingIndirectionresourcesGet({
    String? uid,
    String? name,
  }) {
    generatedMapping.putIfAbsent(SequencingListAvailableResourcesResponse,
        () => SequencingListAvailableResourcesResponse.fromJsonFactory);

    return _sequencingIndirectionresourcesGet(uid: uid, name: name);
  }

  ///Get the available resources for a given indirection
  ///@param uid Unique identifier.
  ///@param name Unqualified name.
  @Get(path: '/sequencing/indirectionresources')
  Future<chopper.Response<SequencingListAvailableResourcesResponse>>
      _sequencingIndirectionresourcesGet({
    @Query('uid') String? uid,
    @Query('name') String? name,
  });

  ///List all indirections
  Future<chopper.Response<SequencingListIndirectionsResponse>>
      sequencingIndirectionsGet() {
    generatedMapping.putIfAbsent(SequencingListIndirectionsResponse,
        () => SequencingListIndirectionsResponse.fromJsonFactory);

    return _sequencingIndirectionsGet();
  }

  ///List all indirections
  @Get(path: '/sequencing/indirections')
  Future<chopper.Response<SequencingListIndirectionsResponse>>
      _sequencingIndirectionsGet();

  ///List all health status for the machines in the network
  Future<chopper.Response<StatusListHealthResponse>> statusHealthGet() {
    generatedMapping.putIfAbsent(StatusListHealthResponse,
        () => StatusListHealthResponse.fromJsonFactory);

    return _statusHealthGet();
  }

  ///List all health status for the machines in the network
  @Get(path: '/status/health')
  Future<chopper.Response<StatusListHealthResponse>> _statusHealthGet();

  ///List all notifications for the machines in the network
  Future<chopper.Response<StatusListNotificationsResponse>>
      statusNotificationsGet() {
    generatedMapping.putIfAbsent(StatusListNotificationsResponse,
        () => StatusListNotificationsResponse.fromJsonFactory);

    return _statusNotificationsGet();
  }

  ///List all notifications for the machines in the network
  @Get(path: '/status/notifications')
  Future<chopper.Response<StatusListNotificationsResponse>>
      _statusNotificationsGet();

  ///Return the project information
  Future<chopper.Response<StatusGetProjectResponse>> statusProjectGet() {
    generatedMapping.putIfAbsent(StatusGetProjectResponse,
        () => StatusGetProjectResponse.fromJsonFactory);

    return _statusProjectGet();
  }

  ///Return the project information
  @Get(path: '/status/project')
  Future<chopper.Response<StatusGetProjectResponse>> _statusProjectGet();

  ///Return the session config
  Future<chopper.Response<StatusGetSessionResponse>> statusSessionGet() {
    generatedMapping.putIfAbsent(StatusGetSessionResponse,
        () => StatusGetSessionResponse.fromJsonFactory);

    return _statusSessionGet();
  }

  ///Return the session config
  @Get(path: '/status/session')
  Future<chopper.Response<StatusGetSessionResponse>> _statusSessionGet();

  ///Get the active transport in the project. This is the transport selected in the d3State bar.
  Future<chopper.Response<TransportGetActiveTransportResponse>>
      transportActivetransportGet() {
    generatedMapping.putIfAbsent(TransportGetActiveTransportResponse,
        () => TransportGetActiveTransportResponse.fromJsonFactory);

    return _transportActivetransportGet();
  }

  ///Get the active transport in the project. This is the transport selected in the d3State bar.
  @Get(path: '/transport/activetransport')
  Future<chopper.Response<TransportGetActiveTransportResponse>>
      _transportActivetransportGet();

  ///List all annotations in the given Track
  ///@param uid UID of the Track.
  ///@param name Name of the Track.
  Future<chopper.Response<TransportListAnnotationsResponse>>
      transportAnnotationsGet({
    String? uid,
    String? name,
  }) {
    generatedMapping.putIfAbsent(TransportListAnnotationsResponse,
        () => TransportListAnnotationsResponse.fromJsonFactory);

    return _transportAnnotationsGet(uid: uid, name: name);
  }

  ///List all annotations in the given Track
  ///@param uid UID of the Track.
  ///@param name Name of the Track.
  @Get(path: '/transport/annotations')
  Future<chopper.Response<TransportListAnnotationsResponse>>
      _transportAnnotationsGet({
    @Query('uid') String? uid,
    @Query('name') String? name,
  });

  ///Set the brightness of the specified transport manager's current transport
  ///@param body
  Future<chopper.Response<D3apiEmptyResponse>> transportBrightnessPost(
      {required TransportSetBrightnessRequest? body}) {
    generatedMapping.putIfAbsent(TransportSetBrightnessRequest,
        () => TransportSetBrightnessRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _transportBrightnessPost(body: body);
  }

  ///Set the brightness of the specified transport manager's current transport
  ///@param body
  @Post(path: '/transport/brightness')
  Future<chopper.Response<D3apiEmptyResponse>> _transportBrightnessPost(
      {@Body() required TransportSetBrightnessRequest? body});

  ///Set the engaged status of the current transport
  ///@param body
  Future<chopper.Response<D3apiEmptyResponse>> transportEngagedPost(
      {required TransportSetEngagedRequest? body}) {
    generatedMapping.putIfAbsent(TransportSetEngagedRequest,
        () => TransportSetEngagedRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _transportEngagedPost(body: body);
  }

  ///Set the engaged status of the current transport
  ///@param body
  @Post(path: '/transport/engaged')
  Future<chopper.Response<D3apiEmptyResponse>> _transportEngagedPost(
      {@Body() required TransportSetEngagedRequest? body});

  ///Jump to the specific frame
  ///@param body
  Future<chopper.Response<D3apiEmptyResponse>> transportGotoframePost(
      {required TransportGoToFrameRequest? body}) {
    generatedMapping.putIfAbsent(TransportGoToFrameRequest,
        () => TransportGoToFrameRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _transportGotoframePost(body: body);
  }

  ///Jump to the specific frame
  ///@param body
  @Post(path: '/transport/gotoframe')
  Future<chopper.Response<D3apiEmptyResponse>> _transportGotoframePost(
      {@Body() required TransportGoToFrameRequest? body});

  ///Jump to the next section of the current track
  ///@param body
  Future<chopper.Response<D3apiEmptyResponse>> transportGotonextsectionPost(
      {required TransportGoToNextSectionRequest? body}) {
    generatedMapping.putIfAbsent(TransportGoToNextSectionRequest,
        () => TransportGoToNextSectionRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _transportGotonextsectionPost(body: body);
  }

  ///Jump to the next section of the current track
  ///@param body
  @Post(path: '/transport/gotonextsection')
  Future<chopper.Response<D3apiEmptyResponse>> _transportGotonextsectionPost(
      {@Body() required TransportGoToNextSectionRequest? body});

  ///Jump to the start of the next track
  ///@param body
  Future<chopper.Response<D3apiEmptyResponse>> transportGotonexttrackPost(
      {required TransportGoToNextTrackRequest? body}) {
    generatedMapping.putIfAbsent(TransportGoToNextTrackRequest,
        () => TransportGoToNextTrackRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _transportGotonexttrackPost(body: body);
  }

  ///Jump to the start of the next track
  ///@param body
  @Post(path: '/transport/gotonexttrack')
  Future<chopper.Response<D3apiEmptyResponse>> _transportGotonexttrackPost(
      {@Body() required TransportGoToNextTrackRequest? body});

  ///Jump to a given note on a given transport
  ///@param body
  Future<chopper.Response<D3apiEmptyResponse>> transportGotonotePost(
      {required TransportGoToNoteRequest? body}) {
    generatedMapping.putIfAbsent(TransportGoToNoteRequest,
        () => TransportGoToNoteRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _transportGotonotePost(body: body);
  }

  ///Jump to a given note on a given transport
  ///@param body
  @Post(path: '/transport/gotonote')
  Future<chopper.Response<D3apiEmptyResponse>> _transportGotonotePost(
      {@Body() required TransportGoToNoteRequest? body});

  ///Jump to the previous section of the current track
  ///@param body
  Future<chopper.Response<D3apiEmptyResponse>> transportGotoprevsectionPost(
      {required TransportGoToPrevSectionRequest? body}) {
    generatedMapping.putIfAbsent(TransportGoToPrevSectionRequest,
        () => TransportGoToPrevSectionRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _transportGotoprevsectionPost(body: body);
  }

  ///Jump to the previous section of the current track
  ///@param body
  @Post(path: '/transport/gotoprevsection')
  Future<chopper.Response<D3apiEmptyResponse>> _transportGotoprevsectionPost(
      {@Body() required TransportGoToPrevSectionRequest? body});

  ///Jump to the start of the previous track
  ///@param body
  Future<chopper.Response<D3apiEmptyResponse>> transportGotoprevtrackPost(
      {required TransportGoToPrevTrackRequest? body}) {
    generatedMapping.putIfAbsent(TransportGoToPrevTrackRequest,
        () => TransportGoToPrevTrackRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _transportGotoprevtrackPost(body: body);
  }

  ///Jump to the start of the previous track
  ///@param body
  @Post(path: '/transport/gotoprevtrack')
  Future<chopper.Response<D3apiEmptyResponse>> _transportGotoprevtrackPost(
      {@Body() required TransportGoToPrevTrackRequest? body});

  ///Jump to a given section on a given transport
  ///@param body
  Future<chopper.Response<D3apiEmptyResponse>> transportGotosectionPost(
      {required TransportGoToSectionRequest? body}) {
    generatedMapping.putIfAbsent(TransportGoToSectionRequest,
        () => TransportGoToSectionRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _transportGotosectionPost(body: body);
  }

  ///Jump to a given section on a given transport
  ///@param body
  @Post(path: '/transport/gotosection')
  Future<chopper.Response<D3apiEmptyResponse>> _transportGotosectionPost(
      {@Body() required TransportGoToSectionRequest? body});

  ///Jump to a given tag on a given transport
  ///@param body
  Future<chopper.Response<D3apiEmptyResponse>> transportGototagPost(
      {required TransportGoToTagRequest? body}) {
    generatedMapping.putIfAbsent(
        TransportGoToTagRequest, () => TransportGoToTagRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _transportGototagPost(body: body);
  }

  ///Jump to a given tag on a given transport
  ///@param body
  @Post(path: '/transport/gototag')
  Future<chopper.Response<D3apiEmptyResponse>> _transportGototagPost(
      {@Body() required TransportGoToTagRequest? body});

  ///Jump to the specific time
  ///@param body
  Future<chopper.Response<D3apiEmptyResponse>> transportGototimePost(
      {required TransportGoToTimeRequest? body}) {
    generatedMapping.putIfAbsent(TransportGoToTimeRequest,
        () => TransportGoToTimeRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _transportGototimePost(body: body);
  }

  ///Jump to the specific time
  ///@param body
  @Post(path: '/transport/gototime')
  Future<chopper.Response<D3apiEmptyResponse>> _transportGototimePost(
      {@Body() required TransportGoToTimeRequest? body});

  ///Jump to a given time on a given transport
  ///@param body
  Future<chopper.Response<D3apiEmptyResponse>> transportGototimecodePost(
      {required TransportGoToTimeCodeRequest? body}) {
    generatedMapping.putIfAbsent(TransportGoToTimeCodeRequest,
        () => TransportGoToTimeCodeRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _transportGototimecodePost(body: body);
  }

  ///Jump to a given time on a given transport
  ///@param body
  @Post(path: '/transport/gototimecode')
  Future<chopper.Response<D3apiEmptyResponse>> _transportGototimecodePost(
      {@Body() required TransportGoToTimeCodeRequest? body});

  ///Jump to the start of the given track
  ///@param body
  Future<chopper.Response<D3apiEmptyResponse>> transportGototrackPost(
      {required TransportGoToTrackRequest? body}) {
    generatedMapping.putIfAbsent(TransportGoToTrackRequest,
        () => TransportGoToTrackRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _transportGototrackPost(body: body);
  }

  ///Jump to the start of the given track
  ///@param body
  @Post(path: '/transport/gototrack')
  Future<chopper.Response<D3apiEmptyResponse>> _transportGototrackPost(
      {@Body() required TransportGoToTrackRequest? body});

  ///Play a transport (sets playmode to 'play')
  ///@param body
  Future<chopper.Response<D3apiEmptyResponse>> transportPlayPost(
      {required TransportPlayRequest? body}) {
    generatedMapping.putIfAbsent(
        TransportPlayRequest, () => TransportPlayRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _transportPlayPost(body: body);
  }

  ///Play a transport (sets playmode to 'play')
  ///@param body
  @Post(path: '/transport/play')
  Future<chopper.Response<D3apiEmptyResponse>> _transportPlayPost(
      {@Body() required TransportPlayRequest? body});

  ///Loop a section on a transport (sets playmode to 'loop section')
  ///@param body
  Future<chopper.Response<D3apiEmptyResponse>> transportPlayloopsectionPost(
      {required TransportPlayLoopSectionRequest? body}) {
    generatedMapping.putIfAbsent(TransportPlayLoopSectionRequest,
        () => TransportPlayLoopSectionRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _transportPlayloopsectionPost(body: body);
  }

  ///Loop a section on a transport (sets playmode to 'loop section')
  ///@param body
  @Post(path: '/transport/playloopsection')
  Future<chopper.Response<D3apiEmptyResponse>> _transportPlayloopsectionPost(
      {@Body() required TransportPlayLoopSectionRequest? body});

  ///Play a section on a transport (sets playmode to 'play to end of section')
  ///@param body
  Future<chopper.Response<D3apiEmptyResponse>> transportPlaysectionPost(
      {required TransportPlaySectionRequest? body}) {
    generatedMapping.putIfAbsent(TransportPlaySectionRequest,
        () => TransportPlaySectionRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _transportPlaysectionPost(body: body);
  }

  ///Play a section on a transport (sets playmode to 'play to end of section')
  ///@param body
  @Post(path: '/transport/playsection')
  Future<chopper.Response<D3apiEmptyResponse>> _transportPlaysectionPost(
      {@Body() required TransportPlaySectionRequest? body});

  ///Return to start of a transport
  ///@param body
  Future<chopper.Response<D3apiEmptyResponse>> transportReturntostartPost(
      {required TransportReturnToStartRequest? body}) {
    generatedMapping.putIfAbsent(TransportReturnToStartRequest,
        () => TransportReturnToStartRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _transportReturntostartPost(body: body);
  }

  ///Return to start of a transport
  ///@param body
  @Post(path: '/transport/returntostart')
  Future<chopper.Response<D3apiEmptyResponse>> _transportReturntostartPost(
      {@Body() required TransportReturnToStartRequest? body});

  ///List all SetLists in the project
  Future<chopper.Response<TransportListSetListsResponse>>
      transportSetlistsGet() {
    generatedMapping.putIfAbsent(TransportListSetListsResponse,
        () => TransportListSetListsResponse.fromJsonFactory);

    return _transportSetlistsGet();
  }

  ///List all SetLists in the project
  @Get(path: '/transport/setlists')
  Future<chopper.Response<TransportListSetListsResponse>>
      _transportSetlistsGet();

  ///Stop a transport
  ///@param body
  Future<chopper.Response<D3apiEmptyResponse>> transportStopPost(
      {required TransportStopRequest? body}) {
    generatedMapping.putIfAbsent(
        TransportStopRequest, () => TransportStopRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _transportStopPost(body: body);
  }

  ///Stop a transport
  ///@param body
  @Post(path: '/transport/stop')
  Future<chopper.Response<D3apiEmptyResponse>> _transportStopPost(
      {@Body() required TransportStopRequest? body});

  ///List all tracks in the project
  Future<chopper.Response<TransportListTracksResponse>> transportTracksGet() {
    generatedMapping.putIfAbsent(TransportListTracksResponse,
        () => TransportListTracksResponse.fromJsonFactory);

    return _transportTracksGet();
  }

  ///List all tracks in the project
  @Get(path: '/transport/tracks')
  Future<chopper.Response<TransportListTracksResponse>> _transportTracksGet();

  ///Set the volume of the current transport
  ///@param body
  Future<chopper.Response<D3apiEmptyResponse>> transportVolumePost(
      {required TransportSetVolumeRequest? body}) {
    generatedMapping.putIfAbsent(TransportSetVolumeRequest,
        () => TransportSetVolumeRequest.fromJsonFactory);
    generatedMapping.putIfAbsent(
        D3apiEmptyResponse, () => D3apiEmptyResponse.fromJsonFactory);

    return _transportVolumePost(body: body);
  }

  ///Set the volume of the current transport
  ///@param body
  @Post(path: '/transport/volume')
  Future<chopper.Response<D3apiEmptyResponse>> _transportVolumePost(
      {@Body() required TransportSetVolumeRequest? body});
}

@JsonSerializable(explicitToJson: true)
class ColourCDLInfo {
  ColourCDLInfo({
    this.uid,
    this.name,
    this.slope,
    this.offset,
    this.power,
    this.saturation,
  });

  factory ColourCDLInfo.fromJson(Map<String, dynamic> json) =>
      _$ColourCDLInfoFromJson(json);

  static const toJsonFactory = _$ColourCDLInfoToJson;
  Map<String, dynamic> toJson() => _$ColourCDLInfoToJson(this);

  @JsonKey(name: 'uid', includeIfNull: false)
  final String? uid;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'slope', includeIfNull: false)
  final D3apiVec3Float? slope;
  @JsonKey(name: 'offset', includeIfNull: false)
  final D3apiVec3Float? offset;
  @JsonKey(name: 'power', includeIfNull: false)
  final D3apiVec3Float? power;
  @JsonKey(name: 'saturation', includeIfNull: false)
  final double? saturation;
  static const fromJsonFactory = _$ColourCDLInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ColourCDLInfo &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.slope, slope) ||
                const DeepCollectionEquality().equals(other.slope, slope)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.power, power) ||
                const DeepCollectionEquality().equals(other.power, power)) &&
            (identical(other.saturation, saturation) ||
                const DeepCollectionEquality()
                    .equals(other.saturation, saturation)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(slope) ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(power) ^
      const DeepCollectionEquality().hash(saturation) ^
      runtimeType.hashCode;
}

extension $ColourCDLInfoExtension on ColourCDLInfo {
  ColourCDLInfo copyWith(
      {String? uid,
      String? name,
      D3apiVec3Float? slope,
      D3apiVec3Float? offset,
      D3apiVec3Float? power,
      double? saturation}) {
    return ColourCDLInfo(
        uid: uid ?? this.uid,
        name: name ?? this.name,
        slope: slope ?? this.slope,
        offset: offset ?? this.offset,
        power: power ?? this.power,
        saturation: saturation ?? this.saturation);
  }

  ColourCDLInfo copyWithWrapped(
      {Wrapped<String?>? uid,
      Wrapped<String?>? name,
      Wrapped<D3apiVec3Float?>? slope,
      Wrapped<D3apiVec3Float?>? offset,
      Wrapped<D3apiVec3Float?>? power,
      Wrapped<double?>? saturation}) {
    return ColourCDLInfo(
        uid: (uid != null ? uid.value : this.uid),
        name: (name != null ? name.value : this.name),
        slope: (slope != null ? slope.value : this.slope),
        offset: (offset != null ? offset.value : this.offset),
        power: (power != null ? power.value : this.power),
        saturation: (saturation != null ? saturation.value : this.saturation));
  }
}

@JsonSerializable(explicitToJson: true)
class ColourListCDLsResponse {
  ColourListCDLsResponse({
    this.status,
    this.result,
  });

  factory ColourListCDLsResponse.fromJson(Map<String, dynamic> json) =>
      _$ColourListCDLsResponseFromJson(json);

  static const toJsonFactory = _$ColourListCDLsResponseToJson;
  Map<String, dynamic> toJson() => _$ColourListCDLsResponseToJson(this);

  @JsonKey(name: 'status', includeIfNull: false)
  final RpcStatus? status;
  @JsonKey(
      name: 'result', includeIfNull: false, defaultValue: <ColourCDLInfo>[])
  final List<ColourCDLInfo>? result;
  static const fromJsonFactory = _$ColourListCDLsResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ColourListCDLsResponse &&
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

extension $ColourListCDLsResponseExtension on ColourListCDLsResponse {
  ColourListCDLsResponse copyWith(
      {RpcStatus? status, List<ColourCDLInfo>? result}) {
    return ColourListCDLsResponse(
        status: status ?? this.status, result: result ?? this.result);
  }

  ColourListCDLsResponse copyWithWrapped(
      {Wrapped<RpcStatus?>? status, Wrapped<List<ColourCDLInfo>?>? result}) {
    return ColourListCDLsResponse(
        status: (status != null ? status.value : this.status),
        result: (result != null ? result.value : this.result));
  }
}

@JsonSerializable(explicitToJson: true)
class ColourSetCDLRequest {
  ColourSetCDLRequest({
    this.cdl,
  });

  factory ColourSetCDLRequest.fromJson(Map<String, dynamic> json) =>
      _$ColourSetCDLRequestFromJson(json);

  static const toJsonFactory = _$ColourSetCDLRequestToJson;
  Map<String, dynamic> toJson() => _$ColourSetCDLRequestToJson(this);

  @JsonKey(name: 'cdl', includeIfNull: false)
  final ColourCDLInfo? cdl;
  static const fromJsonFactory = _$ColourSetCDLRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ColourSetCDLRequest &&
            (identical(other.cdl, cdl) ||
                const DeepCollectionEquality().equals(other.cdl, cdl)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(cdl) ^ runtimeType.hashCode;
}

extension $ColourSetCDLRequestExtension on ColourSetCDLRequest {
  ColourSetCDLRequest copyWith({ColourCDLInfo? cdl}) {
    return ColourSetCDLRequest(cdl: cdl ?? this.cdl);
  }

  ColourSetCDLRequest copyWithWrapped({Wrapped<ColourCDLInfo?>? cdl}) {
    return ColourSetCDLRequest(cdl: (cdl != null ? cdl.value : this.cdl));
  }
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
class D3apiVec3Float {
  D3apiVec3Float({
    this.x,
    this.y,
    this.z,
  });

  factory D3apiVec3Float.fromJson(Map<String, dynamic> json) =>
      _$D3apiVec3FloatFromJson(json);

  static const toJsonFactory = _$D3apiVec3FloatToJson;
  Map<String, dynamic> toJson() => _$D3apiVec3FloatToJson(this);

  @JsonKey(name: 'x', includeIfNull: false)
  final double? x;
  @JsonKey(name: 'y', includeIfNull: false)
  final double? y;
  @JsonKey(name: 'z', includeIfNull: false)
  final double? z;
  static const fromJsonFactory = _$D3apiVec3FloatFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is D3apiVec3Float &&
            (identical(other.x, x) ||
                const DeepCollectionEquality().equals(other.x, x)) &&
            (identical(other.y, y) ||
                const DeepCollectionEquality().equals(other.y, y)) &&
            (identical(other.z, z) ||
                const DeepCollectionEquality().equals(other.z, z)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(x) ^
      const DeepCollectionEquality().hash(y) ^
      const DeepCollectionEquality().hash(z) ^
      runtimeType.hashCode;
}

extension $D3apiVec3FloatExtension on D3apiVec3Float {
  D3apiVec3Float copyWith({double? x, double? y, double? z}) {
    return D3apiVec3Float(x: x ?? this.x, y: y ?? this.y, z: z ?? this.z);
  }

  D3apiVec3Float copyWithWrapped(
      {Wrapped<double?>? x, Wrapped<double?>? y, Wrapped<double?>? z}) {
    return D3apiVec3Float(
        x: (x != null ? x.value : this.x),
        y: (y != null ? y.value : this.y),
        z: (z != null ? z.value : this.z));
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
class D3apiBoolResponse {
  D3apiBoolResponse({
    this.status,
    this.result,
  });

  factory D3apiBoolResponse.fromJson(Map<String, dynamic> json) =>
      _$D3apiBoolResponseFromJson(json);

  static const toJsonFactory = _$D3apiBoolResponseToJson;
  Map<String, dynamic> toJson() => _$D3apiBoolResponseToJson(this);

  @JsonKey(name: 'status', includeIfNull: false)
  final RpcStatus? status;
  @JsonKey(name: 'result', includeIfNull: false)
  final bool? result;
  static const fromJsonFactory = _$D3apiBoolResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is D3apiBoolResponse &&
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

extension $D3apiBoolResponseExtension on D3apiBoolResponse {
  D3apiBoolResponse copyWith({RpcStatus? status, bool? result}) {
    return D3apiBoolResponse(
        status: status ?? this.status, result: result ?? this.result);
  }

  D3apiBoolResponse copyWithWrapped(
      {Wrapped<RpcStatus?>? status, Wrapped<bool?>? result}) {
    return D3apiBoolResponse(
        status: (status != null ? status.value : this.status),
        result: (result != null ? result.value : this.result));
  }
}

@JsonSerializable(explicitToJson: true)
class D3apiLocator {
  D3apiLocator({
    this.uid,
    this.name,
  });

  factory D3apiLocator.fromJson(Map<String, dynamic> json) =>
      _$D3apiLocatorFromJson(json);

  static const toJsonFactory = _$D3apiLocatorToJson;
  Map<String, dynamic> toJson() => _$D3apiLocatorToJson(this);

  @JsonKey(name: 'uid', includeIfNull: false)
  final String? uid;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  static const fromJsonFactory = _$D3apiLocatorFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is D3apiLocator &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $D3apiLocatorExtension on D3apiLocator {
  D3apiLocator copyWith({String? uid, String? name}) {
    return D3apiLocator(uid: uid ?? this.uid, name: name ?? this.name);
  }

  D3apiLocator copyWithWrapped(
      {Wrapped<String?>? uid, Wrapped<String?>? name}) {
    return D3apiLocator(
        uid: (uid != null ? uid.value : this.uid),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class MixedrealityCameraIdentityInfo {
  MixedrealityCameraIdentityInfo({
    this.uid,
    this.name,
  });

  factory MixedrealityCameraIdentityInfo.fromJson(Map<String, dynamic> json) =>
      _$MixedrealityCameraIdentityInfoFromJson(json);

  static const toJsonFactory = _$MixedrealityCameraIdentityInfoToJson;
  Map<String, dynamic> toJson() => _$MixedrealityCameraIdentityInfoToJson(this);

  @JsonKey(name: 'uid', includeIfNull: false)
  final String? uid;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  static const fromJsonFactory = _$MixedrealityCameraIdentityInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MixedrealityCameraIdentityInfo &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $MixedrealityCameraIdentityInfoExtension
    on MixedrealityCameraIdentityInfo {
  MixedrealityCameraIdentityInfo copyWith({String? uid, String? name}) {
    return MixedrealityCameraIdentityInfo(
        uid: uid ?? this.uid, name: name ?? this.name);
  }

  MixedrealityCameraIdentityInfo copyWithWrapped(
      {Wrapped<String?>? uid, Wrapped<String?>? name}) {
    return MixedrealityCameraIdentityInfo(
        uid: (uid != null ? uid.value : this.uid),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class MixedrealityCameraInfo {
  MixedrealityCameraInfo({
    this.uid,
    this.name,
    this.spatialCalibration,
  });

  factory MixedrealityCameraInfo.fromJson(Map<String, dynamic> json) =>
      _$MixedrealityCameraInfoFromJson(json);

  static const toJsonFactory = _$MixedrealityCameraInfoToJson;
  Map<String, dynamic> toJson() => _$MixedrealityCameraInfoToJson(this);

  @JsonKey(name: 'uid', includeIfNull: false)
  final String? uid;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'spatialCalibration', includeIfNull: false)
  final MixedrealitySpatialCalibrationInfo? spatialCalibration;
  static const fromJsonFactory = _$MixedrealityCameraInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MixedrealityCameraInfo &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.spatialCalibration, spatialCalibration) ||
                const DeepCollectionEquality()
                    .equals(other.spatialCalibration, spatialCalibration)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(spatialCalibration) ^
      runtimeType.hashCode;
}

extension $MixedrealityCameraInfoExtension on MixedrealityCameraInfo {
  MixedrealityCameraInfo copyWith(
      {String? uid,
      String? name,
      MixedrealitySpatialCalibrationInfo? spatialCalibration}) {
    return MixedrealityCameraInfo(
        uid: uid ?? this.uid,
        name: name ?? this.name,
        spatialCalibration: spatialCalibration ?? this.spatialCalibration);
  }

  MixedrealityCameraInfo copyWithWrapped(
      {Wrapped<String?>? uid,
      Wrapped<String?>? name,
      Wrapped<MixedrealitySpatialCalibrationInfo?>? spatialCalibration}) {
    return MixedrealityCameraInfo(
        uid: (uid != null ? uid.value : this.uid),
        name: (name != null ? name.value : this.name),
        spatialCalibration: (spatialCalibration != null
            ? spatialCalibration.value
            : this.spatialCalibration));
  }
}

@JsonSerializable(explicitToJson: true)
class MixedrealityCaptureObservationRequest {
  MixedrealityCaptureObservationRequest({
    this.camera,
    this.spatialCalibration,
  });

  factory MixedrealityCaptureObservationRequest.fromJson(
          Map<String, dynamic> json) =>
      _$MixedrealityCaptureObservationRequestFromJson(json);

  static const toJsonFactory = _$MixedrealityCaptureObservationRequestToJson;
  Map<String, dynamic> toJson() =>
      _$MixedrealityCaptureObservationRequestToJson(this);

  @JsonKey(name: 'camera', includeIfNull: false)
  final D3apiLocator? camera;
  @JsonKey(name: 'spatialCalibration', includeIfNull: false)
  final D3apiLocator? spatialCalibration;
  static const fromJsonFactory =
      _$MixedrealityCaptureObservationRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MixedrealityCaptureObservationRequest &&
            (identical(other.camera, camera) ||
                const DeepCollectionEquality().equals(other.camera, camera)) &&
            (identical(other.spatialCalibration, spatialCalibration) ||
                const DeepCollectionEquality()
                    .equals(other.spatialCalibration, spatialCalibration)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(camera) ^
      const DeepCollectionEquality().hash(spatialCalibration) ^
      runtimeType.hashCode;
}

extension $MixedrealityCaptureObservationRequestExtension
    on MixedrealityCaptureObservationRequest {
  MixedrealityCaptureObservationRequest copyWith(
      {D3apiLocator? camera, D3apiLocator? spatialCalibration}) {
    return MixedrealityCaptureObservationRequest(
        camera: camera ?? this.camera,
        spatialCalibration: spatialCalibration ?? this.spatialCalibration);
  }

  MixedrealityCaptureObservationRequest copyWithWrapped(
      {Wrapped<D3apiLocator?>? camera,
      Wrapped<D3apiLocator?>? spatialCalibration}) {
    return MixedrealityCaptureObservationRequest(
        camera: (camera != null ? camera.value : this.camera),
        spatialCalibration: (spatialCalibration != null
            ? spatialCalibration.value
            : this.spatialCalibration));
  }
}

@JsonSerializable(explicitToJson: true)
class MixedrealityDeleteAllObservationsRequest {
  MixedrealityDeleteAllObservationsRequest({
    this.spatialCalibration,
  });

  factory MixedrealityDeleteAllObservationsRequest.fromJson(
          Map<String, dynamic> json) =>
      _$MixedrealityDeleteAllObservationsRequestFromJson(json);

  static const toJsonFactory = _$MixedrealityDeleteAllObservationsRequestToJson;
  Map<String, dynamic> toJson() =>
      _$MixedrealityDeleteAllObservationsRequestToJson(this);

  @JsonKey(name: 'spatialCalibration', includeIfNull: false)
  final D3apiLocator? spatialCalibration;
  static const fromJsonFactory =
      _$MixedrealityDeleteAllObservationsRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MixedrealityDeleteAllObservationsRequest &&
            (identical(other.spatialCalibration, spatialCalibration) ||
                const DeepCollectionEquality()
                    .equals(other.spatialCalibration, spatialCalibration)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(spatialCalibration) ^
      runtimeType.hashCode;
}

extension $MixedrealityDeleteAllObservationsRequestExtension
    on MixedrealityDeleteAllObservationsRequest {
  MixedrealityDeleteAllObservationsRequest copyWith(
      {D3apiLocator? spatialCalibration}) {
    return MixedrealityDeleteAllObservationsRequest(
        spatialCalibration: spatialCalibration ?? this.spatialCalibration);
  }

  MixedrealityDeleteAllObservationsRequest copyWithWrapped(
      {Wrapped<D3apiLocator?>? spatialCalibration}) {
    return MixedrealityDeleteAllObservationsRequest(
        spatialCalibration: (spatialCalibration != null
            ? spatialCalibration.value
            : this.spatialCalibration));
  }
}

@JsonSerializable(explicitToJson: true)
class MixedrealityDeleteObservationsRequest {
  MixedrealityDeleteObservationsRequest({
    this.observations,
  });

  factory MixedrealityDeleteObservationsRequest.fromJson(
          Map<String, dynamic> json) =>
      _$MixedrealityDeleteObservationsRequestFromJson(json);

  static const toJsonFactory = _$MixedrealityDeleteObservationsRequestToJson;
  Map<String, dynamic> toJson() =>
      _$MixedrealityDeleteObservationsRequestToJson(this);

  @JsonKey(name: 'observations', includeIfNull: false, defaultValue: <String>[])
  final List<String>? observations;
  static const fromJsonFactory =
      _$MixedrealityDeleteObservationsRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MixedrealityDeleteObservationsRequest &&
            (identical(other.observations, observations) ||
                const DeepCollectionEquality()
                    .equals(other.observations, observations)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(observations) ^ runtimeType.hashCode;
}

extension $MixedrealityDeleteObservationsRequestExtension
    on MixedrealityDeleteObservationsRequest {
  MixedrealityDeleteObservationsRequest copyWith({List<String>? observations}) {
    return MixedrealityDeleteObservationsRequest(
        observations: observations ?? this.observations);
  }

  MixedrealityDeleteObservationsRequest copyWithWrapped(
      {Wrapped<List<String>?>? observations}) {
    return MixedrealityDeleteObservationsRequest(
        observations:
            (observations != null ? observations.value : this.observations));
  }
}

@JsonSerializable(explicitToJson: true)
class MixedrealityEnableObservationParams {
  MixedrealityEnableObservationParams({
    this.uid,
    this.enable,
  });

  factory MixedrealityEnableObservationParams.fromJson(
          Map<String, dynamic> json) =>
      _$MixedrealityEnableObservationParamsFromJson(json);

  static const toJsonFactory = _$MixedrealityEnableObservationParamsToJson;
  Map<String, dynamic> toJson() =>
      _$MixedrealityEnableObservationParamsToJson(this);

  @JsonKey(name: 'uid', includeIfNull: false)
  final String? uid;
  @JsonKey(name: 'enable', includeIfNull: false)
  final bool? enable;
  static const fromJsonFactory = _$MixedrealityEnableObservationParamsFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MixedrealityEnableObservationParams &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.enable, enable) ||
                const DeepCollectionEquality().equals(other.enable, enable)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(enable) ^
      runtimeType.hashCode;
}

extension $MixedrealityEnableObservationParamsExtension
    on MixedrealityEnableObservationParams {
  MixedrealityEnableObservationParams copyWith({String? uid, bool? enable}) {
    return MixedrealityEnableObservationParams(
        uid: uid ?? this.uid, enable: enable ?? this.enable);
  }

  MixedrealityEnableObservationParams copyWithWrapped(
      {Wrapped<String?>? uid, Wrapped<bool?>? enable}) {
    return MixedrealityEnableObservationParams(
        uid: (uid != null ? uid.value : this.uid),
        enable: (enable != null ? enable.value : this.enable));
  }
}

@JsonSerializable(explicitToJson: true)
class MixedrealityEnableObservationsRequest {
  MixedrealityEnableObservationsRequest({
    this.observations,
  });

  factory MixedrealityEnableObservationsRequest.fromJson(
          Map<String, dynamic> json) =>
      _$MixedrealityEnableObservationsRequestFromJson(json);

  static const toJsonFactory = _$MixedrealityEnableObservationsRequestToJson;
  Map<String, dynamic> toJson() =>
      _$MixedrealityEnableObservationsRequestToJson(this);

  @JsonKey(
      name: 'observations',
      includeIfNull: false,
      defaultValue: <MixedrealityEnableObservationParams>[])
  final List<MixedrealityEnableObservationParams>? observations;
  static const fromJsonFactory =
      _$MixedrealityEnableObservationsRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MixedrealityEnableObservationsRequest &&
            (identical(other.observations, observations) ||
                const DeepCollectionEquality()
                    .equals(other.observations, observations)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(observations) ^ runtimeType.hashCode;
}

extension $MixedrealityEnableObservationsRequestExtension
    on MixedrealityEnableObservationsRequest {
  MixedrealityEnableObservationsRequest copyWith(
      {List<MixedrealityEnableObservationParams>? observations}) {
    return MixedrealityEnableObservationsRequest(
        observations: observations ?? this.observations);
  }

  MixedrealityEnableObservationsRequest copyWithWrapped(
      {Wrapped<List<MixedrealityEnableObservationParams>?>? observations}) {
    return MixedrealityEnableObservationsRequest(
        observations:
            (observations != null ? observations.value : this.observations));
  }
}

@JsonSerializable(explicitToJson: true)
class MixedrealityGetCamerasResponse {
  MixedrealityGetCamerasResponse({
    this.status,
    this.result,
  });

  factory MixedrealityGetCamerasResponse.fromJson(Map<String, dynamic> json) =>
      _$MixedrealityGetCamerasResponseFromJson(json);

  static const toJsonFactory = _$MixedrealityGetCamerasResponseToJson;
  Map<String, dynamic> toJson() => _$MixedrealityGetCamerasResponseToJson(this);

  @JsonKey(name: 'status', includeIfNull: false)
  final RpcStatus? status;
  @JsonKey(
      name: 'result',
      includeIfNull: false,
      defaultValue: <MixedrealityCameraInfo>[])
  final List<MixedrealityCameraInfo>? result;
  static const fromJsonFactory = _$MixedrealityGetCamerasResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MixedrealityGetCamerasResponse &&
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

extension $MixedrealityGetCamerasResponseExtension
    on MixedrealityGetCamerasResponse {
  MixedrealityGetCamerasResponse copyWith(
      {RpcStatus? status, List<MixedrealityCameraInfo>? result}) {
    return MixedrealityGetCamerasResponse(
        status: status ?? this.status, result: result ?? this.result);
  }

  MixedrealityGetCamerasResponse copyWithWrapped(
      {Wrapped<RpcStatus?>? status,
      Wrapped<List<MixedrealityCameraInfo>?>? result}) {
    return MixedrealityGetCamerasResponse(
        status: (status != null ? status.value : this.status),
        result: (result != null ? result.value : this.result));
  }
}

@JsonSerializable(explicitToJson: true)
class MixedrealityGetMRSetsResponse {
  MixedrealityGetMRSetsResponse({
    this.status,
    this.result,
  });

  factory MixedrealityGetMRSetsResponse.fromJson(Map<String, dynamic> json) =>
      _$MixedrealityGetMRSetsResponseFromJson(json);

  static const toJsonFactory = _$MixedrealityGetMRSetsResponseToJson;
  Map<String, dynamic> toJson() => _$MixedrealityGetMRSetsResponseToJson(this);

  @JsonKey(name: 'status', includeIfNull: false)
  final RpcStatus? status;
  @JsonKey(
      name: 'result', includeIfNull: false, defaultValue: <MixedrealityMRSet>[])
  final List<MixedrealityMRSet>? result;
  static const fromJsonFactory = _$MixedrealityGetMRSetsResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MixedrealityGetMRSetsResponse &&
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

extension $MixedrealityGetMRSetsResponseExtension
    on MixedrealityGetMRSetsResponse {
  MixedrealityGetMRSetsResponse copyWith(
      {RpcStatus? status, List<MixedrealityMRSet>? result}) {
    return MixedrealityGetMRSetsResponse(
        status: status ?? this.status, result: result ?? this.result);
  }

  MixedrealityGetMRSetsResponse copyWithWrapped(
      {Wrapped<RpcStatus?>? status,
      Wrapped<List<MixedrealityMRSet>?>? result}) {
    return MixedrealityGetMRSetsResponse(
        status: (status != null ? status.value : this.status),
        result: (result != null ? result.value : this.result));
  }
}

@JsonSerializable(explicitToJson: true)
class MixedrealityListSpatialCalibrationsResponse {
  MixedrealityListSpatialCalibrationsResponse({
    this.status,
    this.result,
  });

  factory MixedrealityListSpatialCalibrationsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$MixedrealityListSpatialCalibrationsResponseFromJson(json);

  static const toJsonFactory =
      _$MixedrealityListSpatialCalibrationsResponseToJson;
  Map<String, dynamic> toJson() =>
      _$MixedrealityListSpatialCalibrationsResponseToJson(this);

  @JsonKey(name: 'status', includeIfNull: false)
  final RpcStatus? status;
  @JsonKey(
      name: 'result',
      includeIfNull: false,
      defaultValue: <MixedrealitySpatialCalibrationDetailed>[])
  final List<MixedrealitySpatialCalibrationDetailed>? result;
  static const fromJsonFactory =
      _$MixedrealityListSpatialCalibrationsResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MixedrealityListSpatialCalibrationsResponse &&
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

extension $MixedrealityListSpatialCalibrationsResponseExtension
    on MixedrealityListSpatialCalibrationsResponse {
  MixedrealityListSpatialCalibrationsResponse copyWith(
      {RpcStatus? status,
      List<MixedrealitySpatialCalibrationDetailed>? result}) {
    return MixedrealityListSpatialCalibrationsResponse(
        status: status ?? this.status, result: result ?? this.result);
  }

  MixedrealityListSpatialCalibrationsResponse copyWithWrapped(
      {Wrapped<RpcStatus?>? status,
      Wrapped<List<MixedrealitySpatialCalibrationDetailed>?>? result}) {
    return MixedrealityListSpatialCalibrationsResponse(
        status: (status != null ? status.value : this.status),
        result: (result != null ? result.value : this.result));
  }
}

@JsonSerializable(explicitToJson: true)
class MixedrealityMRSet {
  MixedrealityMRSet({
    this.uid,
    this.name,
    this.currentCamera,
    this.isCameraOverride,
  });

  factory MixedrealityMRSet.fromJson(Map<String, dynamic> json) =>
      _$MixedrealityMRSetFromJson(json);

  static const toJsonFactory = _$MixedrealityMRSetToJson;
  Map<String, dynamic> toJson() => _$MixedrealityMRSetToJson(this);

  @JsonKey(name: 'uid', includeIfNull: false)
  final String? uid;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'currentCamera', includeIfNull: false)
  final MixedrealityCameraIdentityInfo? currentCamera;
  @JsonKey(name: 'isCameraOverride', includeIfNull: false)
  final bool? isCameraOverride;
  static const fromJsonFactory = _$MixedrealityMRSetFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MixedrealityMRSet &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.currentCamera, currentCamera) ||
                const DeepCollectionEquality()
                    .equals(other.currentCamera, currentCamera)) &&
            (identical(other.isCameraOverride, isCameraOverride) ||
                const DeepCollectionEquality()
                    .equals(other.isCameraOverride, isCameraOverride)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(currentCamera) ^
      const DeepCollectionEquality().hash(isCameraOverride) ^
      runtimeType.hashCode;
}

extension $MixedrealityMRSetExtension on MixedrealityMRSet {
  MixedrealityMRSet copyWith(
      {String? uid,
      String? name,
      MixedrealityCameraIdentityInfo? currentCamera,
      bool? isCameraOverride}) {
    return MixedrealityMRSet(
        uid: uid ?? this.uid,
        name: name ?? this.name,
        currentCamera: currentCamera ?? this.currentCamera,
        isCameraOverride: isCameraOverride ?? this.isCameraOverride);
  }

  MixedrealityMRSet copyWithWrapped(
      {Wrapped<String?>? uid,
      Wrapped<String?>? name,
      Wrapped<MixedrealityCameraIdentityInfo?>? currentCamera,
      Wrapped<bool?>? isCameraOverride}) {
    return MixedrealityMRSet(
        uid: (uid != null ? uid.value : this.uid),
        name: (name != null ? name.value : this.name),
        currentCamera:
            (currentCamera != null ? currentCamera.value : this.currentCamera),
        isCameraOverride: (isCameraOverride != null
            ? isCameraOverride.value
            : this.isCameraOverride));
  }
}

@JsonSerializable(explicitToJson: true)
class MixedrealityMRSetInfo {
  MixedrealityMRSetInfo({
    this.uid,
    this.name,
  });

  factory MixedrealityMRSetInfo.fromJson(Map<String, dynamic> json) =>
      _$MixedrealityMRSetInfoFromJson(json);

  static const toJsonFactory = _$MixedrealityMRSetInfoToJson;
  Map<String, dynamic> toJson() => _$MixedrealityMRSetInfoToJson(this);

  @JsonKey(name: 'uid', includeIfNull: false)
  final String? uid;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  static const fromJsonFactory = _$MixedrealityMRSetInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MixedrealityMRSetInfo &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $MixedrealityMRSetInfoExtension on MixedrealityMRSetInfo {
  MixedrealityMRSetInfo copyWith({String? uid, String? name}) {
    return MixedrealityMRSetInfo(uid: uid ?? this.uid, name: name ?? this.name);
  }

  MixedrealityMRSetInfo copyWithWrapped(
      {Wrapped<String?>? uid, Wrapped<String?>? name}) {
    return MixedrealityMRSetInfo(
        uid: (uid != null ? uid.value : this.uid),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class MixedrealityObservationInfo {
  MixedrealityObservationInfo({
    this.uid,
    this.name,
    this.trackedPose,
    this.solvedPose,
    this.isEnabled,
    this.zoom,
    this.focus,
    this.type,
    this.rmsError,
  });

  factory MixedrealityObservationInfo.fromJson(Map<String, dynamic> json) =>
      _$MixedrealityObservationInfoFromJson(json);

  static const toJsonFactory = _$MixedrealityObservationInfoToJson;
  Map<String, dynamic> toJson() => _$MixedrealityObservationInfoToJson(this);

  @JsonKey(name: 'uid', includeIfNull: false)
  final String? uid;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'trackedPose', includeIfNull: false)
  final MixedrealityPose? trackedPose;
  @JsonKey(name: 'solvedPose', includeIfNull: false)
  final MixedrealityPose? solvedPose;
  @JsonKey(name: 'isEnabled', includeIfNull: false)
  final bool? isEnabled;
  @JsonKey(name: 'zoom', includeIfNull: false)
  final double? zoom;
  @JsonKey(name: 'focus', includeIfNull: false)
  final double? focus;
  @JsonKey(
    name: 'type',
    includeIfNull: false,
    toJson: mixedrealityObservationTypeToJson,
    fromJson: mixedrealityObservationTypeFromJson,
  )
  final enums.MixedrealityObservationType? type;
  @JsonKey(name: 'rmsError', includeIfNull: false)
  final double? rmsError;
  static const fromJsonFactory = _$MixedrealityObservationInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MixedrealityObservationInfo &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.trackedPose, trackedPose) ||
                const DeepCollectionEquality()
                    .equals(other.trackedPose, trackedPose)) &&
            (identical(other.solvedPose, solvedPose) ||
                const DeepCollectionEquality()
                    .equals(other.solvedPose, solvedPose)) &&
            (identical(other.isEnabled, isEnabled) ||
                const DeepCollectionEquality()
                    .equals(other.isEnabled, isEnabled)) &&
            (identical(other.zoom, zoom) ||
                const DeepCollectionEquality().equals(other.zoom, zoom)) &&
            (identical(other.focus, focus) ||
                const DeepCollectionEquality().equals(other.focus, focus)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.rmsError, rmsError) ||
                const DeepCollectionEquality()
                    .equals(other.rmsError, rmsError)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(trackedPose) ^
      const DeepCollectionEquality().hash(solvedPose) ^
      const DeepCollectionEquality().hash(isEnabled) ^
      const DeepCollectionEquality().hash(zoom) ^
      const DeepCollectionEquality().hash(focus) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(rmsError) ^
      runtimeType.hashCode;
}

extension $MixedrealityObservationInfoExtension on MixedrealityObservationInfo {
  MixedrealityObservationInfo copyWith(
      {String? uid,
      String? name,
      MixedrealityPose? trackedPose,
      MixedrealityPose? solvedPose,
      bool? isEnabled,
      double? zoom,
      double? focus,
      enums.MixedrealityObservationType? type,
      double? rmsError}) {
    return MixedrealityObservationInfo(
        uid: uid ?? this.uid,
        name: name ?? this.name,
        trackedPose: trackedPose ?? this.trackedPose,
        solvedPose: solvedPose ?? this.solvedPose,
        isEnabled: isEnabled ?? this.isEnabled,
        zoom: zoom ?? this.zoom,
        focus: focus ?? this.focus,
        type: type ?? this.type,
        rmsError: rmsError ?? this.rmsError);
  }

  MixedrealityObservationInfo copyWithWrapped(
      {Wrapped<String?>? uid,
      Wrapped<String?>? name,
      Wrapped<MixedrealityPose?>? trackedPose,
      Wrapped<MixedrealityPose?>? solvedPose,
      Wrapped<bool?>? isEnabled,
      Wrapped<double?>? zoom,
      Wrapped<double?>? focus,
      Wrapped<enums.MixedrealityObservationType?>? type,
      Wrapped<double?>? rmsError}) {
    return MixedrealityObservationInfo(
        uid: (uid != null ? uid.value : this.uid),
        name: (name != null ? name.value : this.name),
        trackedPose:
            (trackedPose != null ? trackedPose.value : this.trackedPose),
        solvedPose: (solvedPose != null ? solvedPose.value : this.solvedPose),
        isEnabled: (isEnabled != null ? isEnabled.value : this.isEnabled),
        zoom: (zoom != null ? zoom.value : this.zoom),
        focus: (focus != null ? focus.value : this.focus),
        type: (type != null ? type.value : this.type),
        rmsError: (rmsError != null ? rmsError.value : this.rmsError));
  }
}

@JsonSerializable(explicitToJson: true)
class MixedrealityPose {
  MixedrealityPose({
    this.position,
    this.rotation,
  });

  factory MixedrealityPose.fromJson(Map<String, dynamic> json) =>
      _$MixedrealityPoseFromJson(json);

  static const toJsonFactory = _$MixedrealityPoseToJson;
  Map<String, dynamic> toJson() => _$MixedrealityPoseToJson(this);

  @JsonKey(name: 'position', includeIfNull: false)
  final D3apiVec3Float? position;
  @JsonKey(name: 'rotation', includeIfNull: false)
  final D3apiVec3Float? rotation;
  static const fromJsonFactory = _$MixedrealityPoseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MixedrealityPose &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)) &&
            (identical(other.rotation, rotation) ||
                const DeepCollectionEquality()
                    .equals(other.rotation, rotation)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(rotation) ^
      runtimeType.hashCode;
}

extension $MixedrealityPoseExtension on MixedrealityPose {
  MixedrealityPose copyWith(
      {D3apiVec3Float? position, D3apiVec3Float? rotation}) {
    return MixedrealityPose(
        position: position ?? this.position,
        rotation: rotation ?? this.rotation);
  }

  MixedrealityPose copyWithWrapped(
      {Wrapped<D3apiVec3Float?>? position,
      Wrapped<D3apiVec3Float?>? rotation}) {
    return MixedrealityPose(
        position: (position != null ? position.value : this.position),
        rotation: (rotation != null ? rotation.value : this.rotation));
  }
}

@JsonSerializable(explicitToJson: true)
class MixedrealitySelectCameraRequest {
  MixedrealitySelectCameraRequest({
    this.mrSet,
    this.cameraOverride,
  });

  factory MixedrealitySelectCameraRequest.fromJson(Map<String, dynamic> json) =>
      _$MixedrealitySelectCameraRequestFromJson(json);

  static const toJsonFactory = _$MixedrealitySelectCameraRequestToJson;
  Map<String, dynamic> toJson() =>
      _$MixedrealitySelectCameraRequestToJson(this);

  @JsonKey(name: 'mrSet', includeIfNull: false)
  final D3apiLocator? mrSet;
  @JsonKey(name: 'cameraOverride', includeIfNull: false)
  final D3apiLocator? cameraOverride;
  static const fromJsonFactory = _$MixedrealitySelectCameraRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MixedrealitySelectCameraRequest &&
            (identical(other.mrSet, mrSet) ||
                const DeepCollectionEquality().equals(other.mrSet, mrSet)) &&
            (identical(other.cameraOverride, cameraOverride) ||
                const DeepCollectionEquality()
                    .equals(other.cameraOverride, cameraOverride)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(mrSet) ^
      const DeepCollectionEquality().hash(cameraOverride) ^
      runtimeType.hashCode;
}

extension $MixedrealitySelectCameraRequestExtension
    on MixedrealitySelectCameraRequest {
  MixedrealitySelectCameraRequest copyWith(
      {D3apiLocator? mrSet, D3apiLocator? cameraOverride}) {
    return MixedrealitySelectCameraRequest(
        mrSet: mrSet ?? this.mrSet,
        cameraOverride: cameraOverride ?? this.cameraOverride);
  }

  MixedrealitySelectCameraRequest copyWithWrapped(
      {Wrapped<D3apiLocator?>? mrSet, Wrapped<D3apiLocator?>? cameraOverride}) {
    return MixedrealitySelectCameraRequest(
        mrSet: (mrSet != null ? mrSet.value : this.mrSet),
        cameraOverride: (cameraOverride != null
            ? cameraOverride.value
            : this.cameraOverride));
  }
}

@JsonSerializable(explicitToJson: true)
class MixedrealitySelectSpatialCalibrationRequest {
  MixedrealitySelectSpatialCalibrationRequest({
    this.camera,
    this.spatialCalibration,
  });

  factory MixedrealitySelectSpatialCalibrationRequest.fromJson(
          Map<String, dynamic> json) =>
      _$MixedrealitySelectSpatialCalibrationRequestFromJson(json);

  static const toJsonFactory =
      _$MixedrealitySelectSpatialCalibrationRequestToJson;
  Map<String, dynamic> toJson() =>
      _$MixedrealitySelectSpatialCalibrationRequestToJson(this);

  @JsonKey(name: 'camera', includeIfNull: false)
  final D3apiLocator? camera;
  @JsonKey(name: 'spatialCalibration', includeIfNull: false)
  final D3apiLocator? spatialCalibration;
  static const fromJsonFactory =
      _$MixedrealitySelectSpatialCalibrationRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MixedrealitySelectSpatialCalibrationRequest &&
            (identical(other.camera, camera) ||
                const DeepCollectionEquality().equals(other.camera, camera)) &&
            (identical(other.spatialCalibration, spatialCalibration) ||
                const DeepCollectionEquality()
                    .equals(other.spatialCalibration, spatialCalibration)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(camera) ^
      const DeepCollectionEquality().hash(spatialCalibration) ^
      runtimeType.hashCode;
}

extension $MixedrealitySelectSpatialCalibrationRequestExtension
    on MixedrealitySelectSpatialCalibrationRequest {
  MixedrealitySelectSpatialCalibrationRequest copyWith(
      {D3apiLocator? camera, D3apiLocator? spatialCalibration}) {
    return MixedrealitySelectSpatialCalibrationRequest(
        camera: camera ?? this.camera,
        spatialCalibration: spatialCalibration ?? this.spatialCalibration);
  }

  MixedrealitySelectSpatialCalibrationRequest copyWithWrapped(
      {Wrapped<D3apiLocator?>? camera,
      Wrapped<D3apiLocator?>? spatialCalibration}) {
    return MixedrealitySelectSpatialCalibrationRequest(
        camera: (camera != null ? camera.value : this.camera),
        spatialCalibration: (spatialCalibration != null
            ? spatialCalibration.value
            : this.spatialCalibration));
  }
}

@JsonSerializable(explicitToJson: true)
class MixedrealitySpatialCalibrationDetailed {
  MixedrealitySpatialCalibrationDetailed({
    this.uid,
    this.name,
    this.mrsets,
    this.observations,
  });

  factory MixedrealitySpatialCalibrationDetailed.fromJson(
          Map<String, dynamic> json) =>
      _$MixedrealitySpatialCalibrationDetailedFromJson(json);

  static const toJsonFactory = _$MixedrealitySpatialCalibrationDetailedToJson;
  Map<String, dynamic> toJson() =>
      _$MixedrealitySpatialCalibrationDetailedToJson(this);

  @JsonKey(name: 'uid', includeIfNull: false)
  final String? uid;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(
      name: 'mrsets',
      includeIfNull: false,
      defaultValue: <MixedrealityMRSetInfo>[])
  final List<MixedrealityMRSetInfo>? mrsets;
  @JsonKey(
      name: 'observations',
      includeIfNull: false,
      defaultValue: <MixedrealityObservationInfo>[])
  final List<MixedrealityObservationInfo>? observations;
  static const fromJsonFactory =
      _$MixedrealitySpatialCalibrationDetailedFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MixedrealitySpatialCalibrationDetailed &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.mrsets, mrsets) ||
                const DeepCollectionEquality().equals(other.mrsets, mrsets)) &&
            (identical(other.observations, observations) ||
                const DeepCollectionEquality()
                    .equals(other.observations, observations)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(mrsets) ^
      const DeepCollectionEquality().hash(observations) ^
      runtimeType.hashCode;
}

extension $MixedrealitySpatialCalibrationDetailedExtension
    on MixedrealitySpatialCalibrationDetailed {
  MixedrealitySpatialCalibrationDetailed copyWith(
      {String? uid,
      String? name,
      List<MixedrealityMRSetInfo>? mrsets,
      List<MixedrealityObservationInfo>? observations}) {
    return MixedrealitySpatialCalibrationDetailed(
        uid: uid ?? this.uid,
        name: name ?? this.name,
        mrsets: mrsets ?? this.mrsets,
        observations: observations ?? this.observations);
  }

  MixedrealitySpatialCalibrationDetailed copyWithWrapped(
      {Wrapped<String?>? uid,
      Wrapped<String?>? name,
      Wrapped<List<MixedrealityMRSetInfo>?>? mrsets,
      Wrapped<List<MixedrealityObservationInfo>?>? observations}) {
    return MixedrealitySpatialCalibrationDetailed(
        uid: (uid != null ? uid.value : this.uid),
        name: (name != null ? name.value : this.name),
        mrsets: (mrsets != null ? mrsets.value : this.mrsets),
        observations:
            (observations != null ? observations.value : this.observations));
  }
}

@JsonSerializable(explicitToJson: true)
class MixedrealitySpatialCalibrationInfo {
  MixedrealitySpatialCalibrationInfo({
    this.uid,
    this.name,
  });

  factory MixedrealitySpatialCalibrationInfo.fromJson(
          Map<String, dynamic> json) =>
      _$MixedrealitySpatialCalibrationInfoFromJson(json);

  static const toJsonFactory = _$MixedrealitySpatialCalibrationInfoToJson;
  Map<String, dynamic> toJson() =>
      _$MixedrealitySpatialCalibrationInfoToJson(this);

  @JsonKey(name: 'uid', includeIfNull: false)
  final String? uid;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  static const fromJsonFactory = _$MixedrealitySpatialCalibrationInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MixedrealitySpatialCalibrationInfo &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $MixedrealitySpatialCalibrationInfoExtension
    on MixedrealitySpatialCalibrationInfo {
  MixedrealitySpatialCalibrationInfo copyWith({String? uid, String? name}) {
    return MixedrealitySpatialCalibrationInfo(
        uid: uid ?? this.uid, name: name ?? this.name);
  }

  MixedrealitySpatialCalibrationInfo copyWithWrapped(
      {Wrapped<String?>? uid, Wrapped<String?>? name}) {
    return MixedrealitySpatialCalibrationInfo(
        uid: (uid != null ? uid.value : this.uid),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class D3apiVec2Float {
  D3apiVec2Float({
    this.x,
    this.y,
  });

  factory D3apiVec2Float.fromJson(Map<String, dynamic> json) =>
      _$D3apiVec2FloatFromJson(json);

  static const toJsonFactory = _$D3apiVec2FloatToJson;
  Map<String, dynamic> toJson() => _$D3apiVec2FloatToJson(this);

  @JsonKey(name: 'x', includeIfNull: false)
  final double? x;
  @JsonKey(name: 'y', includeIfNull: false)
  final double? y;
  static const fromJsonFactory = _$D3apiVec2FloatFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is D3apiVec2Float &&
            (identical(other.x, x) ||
                const DeepCollectionEquality().equals(other.x, x)) &&
            (identical(other.y, y) ||
                const DeepCollectionEquality().equals(other.y, y)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(x) ^
      const DeepCollectionEquality().hash(y) ^
      runtimeType.hashCode;
}

extension $D3apiVec2FloatExtension on D3apiVec2Float {
  D3apiVec2Float copyWith({double? x, double? y}) {
    return D3apiVec2Float(x: x ?? this.x, y: y ?? this.y);
  }

  D3apiVec2Float copyWithWrapped({Wrapped<double?>? x, Wrapped<double?>? y}) {
    return D3apiVec2Float(
        x: (x != null ? x.value : this.x), y: (y != null ? y.value : this.y));
  }
}

@JsonSerializable(explicitToJson: true)
class QuickcalLineUpCurrentPoseRequest {
  QuickcalLineUpCurrentPoseRequest({
    this.projector,
    this.referencePoint,
    this.position,
  });

  factory QuickcalLineUpCurrentPoseRequest.fromJson(
          Map<String, dynamic> json) =>
      _$QuickcalLineUpCurrentPoseRequestFromJson(json);

  static const toJsonFactory = _$QuickcalLineUpCurrentPoseRequestToJson;
  Map<String, dynamic> toJson() =>
      _$QuickcalLineUpCurrentPoseRequestToJson(this);

  @JsonKey(name: 'projector', includeIfNull: false)
  final D3apiLocator? projector;
  @JsonKey(name: 'referencePoint', includeIfNull: false)
  final D3apiLocator? referencePoint;
  @JsonKey(name: 'position', includeIfNull: false)
  final D3apiVec2Float? position;
  static const fromJsonFactory = _$QuickcalLineUpCurrentPoseRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is QuickcalLineUpCurrentPoseRequest &&
            (identical(other.projector, projector) ||
                const DeepCollectionEquality()
                    .equals(other.projector, projector)) &&
            (identical(other.referencePoint, referencePoint) ||
                const DeepCollectionEquality()
                    .equals(other.referencePoint, referencePoint)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(projector) ^
      const DeepCollectionEquality().hash(referencePoint) ^
      const DeepCollectionEquality().hash(position) ^
      runtimeType.hashCode;
}

extension $QuickcalLineUpCurrentPoseRequestExtension
    on QuickcalLineUpCurrentPoseRequest {
  QuickcalLineUpCurrentPoseRequest copyWith(
      {D3apiLocator? projector,
      D3apiLocator? referencePoint,
      D3apiVec2Float? position}) {
    return QuickcalLineUpCurrentPoseRequest(
        projector: projector ?? this.projector,
        referencePoint: referencePoint ?? this.referencePoint,
        position: position ?? this.position);
  }

  QuickcalLineUpCurrentPoseRequest copyWithWrapped(
      {Wrapped<D3apiLocator?>? projector,
      Wrapped<D3apiLocator?>? referencePoint,
      Wrapped<D3apiVec2Float?>? position}) {
    return QuickcalLineUpCurrentPoseRequest(
        projector: (projector != null ? projector.value : this.projector),
        referencePoint: (referencePoint != null
            ? referencePoint.value
            : this.referencePoint),
        position: (position != null ? position.value : this.position));
  }
}

@JsonSerializable(explicitToJson: true)
class QuickcalListReferencePointsResponse {
  QuickcalListReferencePointsResponse({
    this.status,
    this.result,
  });

  factory QuickcalListReferencePointsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$QuickcalListReferencePointsResponseFromJson(json);

  static const toJsonFactory = _$QuickcalListReferencePointsResponseToJson;
  Map<String, dynamic> toJson() =>
      _$QuickcalListReferencePointsResponseToJson(this);

  @JsonKey(name: 'status', includeIfNull: false)
  final RpcStatus? status;
  @JsonKey(
      name: 'result',
      includeIfNull: false,
      defaultValue: <QuickcalReferencePointInfo>[])
  final List<QuickcalReferencePointInfo>? result;
  static const fromJsonFactory = _$QuickcalListReferencePointsResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is QuickcalListReferencePointsResponse &&
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

extension $QuickcalListReferencePointsResponseExtension
    on QuickcalListReferencePointsResponse {
  QuickcalListReferencePointsResponse copyWith(
      {RpcStatus? status, List<QuickcalReferencePointInfo>? result}) {
    return QuickcalListReferencePointsResponse(
        status: status ?? this.status, result: result ?? this.result);
  }

  QuickcalListReferencePointsResponse copyWithWrapped(
      {Wrapped<RpcStatus?>? status,
      Wrapped<List<QuickcalReferencePointInfo>?>? result}) {
    return QuickcalListReferencePointsResponse(
        status: (status != null ? status.value : this.status),
        result: (result != null ? result.value : this.result));
  }
}

@JsonSerializable(explicitToJson: true)
class QuickcalReferencePointInfo {
  QuickcalReferencePointInfo({
    this.uid,
    this.name,
  });

  factory QuickcalReferencePointInfo.fromJson(Map<String, dynamic> json) =>
      _$QuickcalReferencePointInfoFromJson(json);

  static const toJsonFactory = _$QuickcalReferencePointInfoToJson;
  Map<String, dynamic> toJson() => _$QuickcalReferencePointInfoToJson(this);

  @JsonKey(name: 'uid', includeIfNull: false)
  final String? uid;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  static const fromJsonFactory = _$QuickcalReferencePointInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is QuickcalReferencePointInfo &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $QuickcalReferencePointInfoExtension on QuickcalReferencePointInfo {
  QuickcalReferencePointInfo copyWith({String? uid, String? name}) {
    return QuickcalReferencePointInfo(
        uid: uid ?? this.uid, name: name ?? this.name);
  }

  QuickcalReferencePointInfo copyWithWrapped(
      {Wrapped<String?>? uid, Wrapped<String?>? name}) {
    return QuickcalReferencePointInfo(
        uid: (uid != null ? uid.value : this.uid),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class QuickcalResetLineUpRequest {
  QuickcalResetLineUpRequest({
    this.projector,
  });

  factory QuickcalResetLineUpRequest.fromJson(Map<String, dynamic> json) =>
      _$QuickcalResetLineUpRequestFromJson(json);

  static const toJsonFactory = _$QuickcalResetLineUpRequestToJson;
  Map<String, dynamic> toJson() => _$QuickcalResetLineUpRequestToJson(this);

  @JsonKey(name: 'projector', includeIfNull: false)
  final D3apiLocator? projector;
  static const fromJsonFactory = _$QuickcalResetLineUpRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is QuickcalResetLineUpRequest &&
            (identical(other.projector, projector) ||
                const DeepCollectionEquality()
                    .equals(other.projector, projector)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(projector) ^ runtimeType.hashCode;
}

extension $QuickcalResetLineUpRequestExtension on QuickcalResetLineUpRequest {
  QuickcalResetLineUpRequest copyWith({D3apiLocator? projector}) {
    return QuickcalResetLineUpRequest(projector: projector ?? this.projector);
  }

  QuickcalResetLineUpRequest copyWithWrapped(
      {Wrapped<D3apiLocator?>? projector}) {
    return QuickcalResetLineUpRequest(
        projector: (projector != null ? projector.value : this.projector));
  }
}

@JsonSerializable(explicitToJson: true)
class RenderstreamAdapterInfo {
  RenderstreamAdapterInfo({
    this.name,
    this.ipAddress,
    this.subnet,
  });

  factory RenderstreamAdapterInfo.fromJson(Map<String, dynamic> json) =>
      _$RenderstreamAdapterInfoFromJson(json);

  static const toJsonFactory = _$RenderstreamAdapterInfoToJson;
  Map<String, dynamic> toJson() => _$RenderstreamAdapterInfoToJson(this);

  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'ipAddress', includeIfNull: false)
  final String? ipAddress;
  @JsonKey(name: 'subnet', includeIfNull: false)
  final String? subnet;
  static const fromJsonFactory = _$RenderstreamAdapterInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RenderstreamAdapterInfo &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.ipAddress, ipAddress) ||
                const DeepCollectionEquality()
                    .equals(other.ipAddress, ipAddress)) &&
            (identical(other.subnet, subnet) ||
                const DeepCollectionEquality().equals(other.subnet, subnet)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(ipAddress) ^
      const DeepCollectionEquality().hash(subnet) ^
      runtimeType.hashCode;
}

extension $RenderstreamAdapterInfoExtension on RenderstreamAdapterInfo {
  RenderstreamAdapterInfo copyWith(
      {String? name, String? ipAddress, String? subnet}) {
    return RenderstreamAdapterInfo(
        name: name ?? this.name,
        ipAddress: ipAddress ?? this.ipAddress,
        subnet: subnet ?? this.subnet);
  }

  RenderstreamAdapterInfo copyWithWrapped(
      {Wrapped<String?>? name,
      Wrapped<String?>? ipAddress,
      Wrapped<String?>? subnet}) {
    return RenderstreamAdapterInfo(
        name: (name != null ? name.value : this.name),
        ipAddress: (ipAddress != null ? ipAddress.value : this.ipAddress),
        subnet: (subnet != null ? subnet.value : this.subnet));
  }
}

@JsonSerializable(explicitToJson: true)
class RenderstreamAsset {
  RenderstreamAsset({
    this.uid,
    this.name,
  });

  factory RenderstreamAsset.fromJson(Map<String, dynamic> json) =>
      _$RenderstreamAssetFromJson(json);

  static const toJsonFactory = _$RenderstreamAssetToJson;
  Map<String, dynamic> toJson() => _$RenderstreamAssetToJson(this);

  @JsonKey(name: 'uid', includeIfNull: false)
  final String? uid;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  static const fromJsonFactory = _$RenderstreamAssetFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RenderstreamAsset &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $RenderstreamAssetExtension on RenderstreamAsset {
  RenderstreamAsset copyWith({String? uid, String? name}) {
    return RenderstreamAsset(uid: uid ?? this.uid, name: name ?? this.name);
  }

  RenderstreamAsset copyWithWrapped(
      {Wrapped<String?>? uid, Wrapped<String?>? name}) {
    return RenderstreamAsset(
        uid: (uid != null ? uid.value : this.uid),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class RenderstreamAssigner {
  RenderstreamAssigner({
    this.uid,
    this.name,
  });

  factory RenderstreamAssigner.fromJson(Map<String, dynamic> json) =>
      _$RenderstreamAssignerFromJson(json);

  static const toJsonFactory = _$RenderstreamAssignerToJson;
  Map<String, dynamic> toJson() => _$RenderstreamAssignerToJson(this);

  @JsonKey(name: 'uid', includeIfNull: false)
  final String? uid;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  static const fromJsonFactory = _$RenderstreamAssignerFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RenderstreamAssigner &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $RenderstreamAssignerExtension on RenderstreamAssigner {
  RenderstreamAssigner copyWith({String? uid, String? name}) {
    return RenderstreamAssigner(uid: uid ?? this.uid, name: name ?? this.name);
  }

  RenderstreamAssigner copyWithWrapped(
      {Wrapped<String?>? uid, Wrapped<String?>? name}) {
    return RenderstreamAssigner(
        uid: (uid != null ? uid.value : this.uid),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class RenderstreamAssignerInfo {
  RenderstreamAssignerInfo({
    this.uid,
    this.name,
    this.transport,
    this.alpha,
    this.overlapPixels,
    this.paddingPixels,
    this.preferredNetwork,
  });

  factory RenderstreamAssignerInfo.fromJson(Map<String, dynamic> json) =>
      _$RenderstreamAssignerInfoFromJson(json);

  static const toJsonFactory = _$RenderstreamAssignerInfoToJson;
  Map<String, dynamic> toJson() => _$RenderstreamAssignerInfoToJson(this);

  @JsonKey(name: 'uid', includeIfNull: false)
  final String? uid;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'transport', includeIfNull: false)
  final RenderstreamTransportInfo? transport;
  @JsonKey(name: 'alpha', includeIfNull: false)
  final bool? alpha;
  @JsonKey(name: 'overlapPixels', includeIfNull: false)
  final int? overlapPixels;
  @JsonKey(name: 'paddingPixels', includeIfNull: false)
  final int? paddingPixels;
  @JsonKey(name: 'preferredNetwork', includeIfNull: false)
  final RenderstreamNetworkInfo? preferredNetwork;
  static const fromJsonFactory = _$RenderstreamAssignerInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RenderstreamAssignerInfo &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.transport, transport) ||
                const DeepCollectionEquality()
                    .equals(other.transport, transport)) &&
            (identical(other.alpha, alpha) ||
                const DeepCollectionEquality().equals(other.alpha, alpha)) &&
            (identical(other.overlapPixels, overlapPixels) ||
                const DeepCollectionEquality()
                    .equals(other.overlapPixels, overlapPixels)) &&
            (identical(other.paddingPixels, paddingPixels) ||
                const DeepCollectionEquality()
                    .equals(other.paddingPixels, paddingPixels)) &&
            (identical(other.preferredNetwork, preferredNetwork) ||
                const DeepCollectionEquality()
                    .equals(other.preferredNetwork, preferredNetwork)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(transport) ^
      const DeepCollectionEquality().hash(alpha) ^
      const DeepCollectionEquality().hash(overlapPixels) ^
      const DeepCollectionEquality().hash(paddingPixels) ^
      const DeepCollectionEquality().hash(preferredNetwork) ^
      runtimeType.hashCode;
}

extension $RenderstreamAssignerInfoExtension on RenderstreamAssignerInfo {
  RenderstreamAssignerInfo copyWith(
      {String? uid,
      String? name,
      RenderstreamTransportInfo? transport,
      bool? alpha,
      int? overlapPixels,
      int? paddingPixels,
      RenderstreamNetworkInfo? preferredNetwork}) {
    return RenderstreamAssignerInfo(
        uid: uid ?? this.uid,
        name: name ?? this.name,
        transport: transport ?? this.transport,
        alpha: alpha ?? this.alpha,
        overlapPixels: overlapPixels ?? this.overlapPixels,
        paddingPixels: paddingPixels ?? this.paddingPixels,
        preferredNetwork: preferredNetwork ?? this.preferredNetwork);
  }

  RenderstreamAssignerInfo copyWithWrapped(
      {Wrapped<String?>? uid,
      Wrapped<String?>? name,
      Wrapped<RenderstreamTransportInfo?>? transport,
      Wrapped<bool?>? alpha,
      Wrapped<int?>? overlapPixels,
      Wrapped<int?>? paddingPixels,
      Wrapped<RenderstreamNetworkInfo?>? preferredNetwork}) {
    return RenderstreamAssignerInfo(
        uid: (uid != null ? uid.value : this.uid),
        name: (name != null ? name.value : this.name),
        transport: (transport != null ? transport.value : this.transport),
        alpha: (alpha != null ? alpha.value : this.alpha),
        overlapPixels:
            (overlapPixels != null ? overlapPixels.value : this.overlapPixels),
        paddingPixels:
            (paddingPixels != null ? paddingPixels.value : this.paddingPixels),
        preferredNetwork: (preferredNetwork != null
            ? preferredNetwork.value
            : this.preferredNetwork));
  }
}

@JsonSerializable(explicitToJson: true)
class RenderstreamChannelMappingInfo {
  RenderstreamChannelMappingInfo({
    this.channel,
    this.mapping,
    this.assigner,
  });

  factory RenderstreamChannelMappingInfo.fromJson(Map<String, dynamic> json) =>
      _$RenderstreamChannelMappingInfoFromJson(json);

  static const toJsonFactory = _$RenderstreamChannelMappingInfoToJson;
  Map<String, dynamic> toJson() => _$RenderstreamChannelMappingInfoToJson(this);

  @JsonKey(name: 'channel', includeIfNull: false)
  final String? channel;
  @JsonKey(name: 'mapping', includeIfNull: false)
  final RenderstreamMapping? mapping;
  @JsonKey(name: 'assigner', includeIfNull: false)
  final RenderstreamAssigner? assigner;
  static const fromJsonFactory = _$RenderstreamChannelMappingInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RenderstreamChannelMappingInfo &&
            (identical(other.channel, channel) ||
                const DeepCollectionEquality()
                    .equals(other.channel, channel)) &&
            (identical(other.mapping, mapping) ||
                const DeepCollectionEquality()
                    .equals(other.mapping, mapping)) &&
            (identical(other.assigner, assigner) ||
                const DeepCollectionEquality()
                    .equals(other.assigner, assigner)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(channel) ^
      const DeepCollectionEquality().hash(mapping) ^
      const DeepCollectionEquality().hash(assigner) ^
      runtimeType.hashCode;
}

extension $RenderstreamChannelMappingInfoExtension
    on RenderstreamChannelMappingInfo {
  RenderstreamChannelMappingInfo copyWith(
      {String? channel,
      RenderstreamMapping? mapping,
      RenderstreamAssigner? assigner}) {
    return RenderstreamChannelMappingInfo(
        channel: channel ?? this.channel,
        mapping: mapping ?? this.mapping,
        assigner: assigner ?? this.assigner);
  }

  RenderstreamChannelMappingInfo copyWithWrapped(
      {Wrapped<String?>? channel,
      Wrapped<RenderstreamMapping?>? mapping,
      Wrapped<RenderstreamAssigner?>? assigner}) {
    return RenderstreamChannelMappingInfo(
        channel: (channel != null ? channel.value : this.channel),
        mapping: (mapping != null ? mapping.value : this.mapping),
        assigner: (assigner != null ? assigner.value : this.assigner));
  }
}

@JsonSerializable(explicitToJson: true)
class RenderstreamFailoverRequest {
  RenderstreamFailoverRequest({
    this.machine,
  });

  factory RenderstreamFailoverRequest.fromJson(Map<String, dynamic> json) =>
      _$RenderstreamFailoverRequestFromJson(json);

  static const toJsonFactory = _$RenderstreamFailoverRequestToJson;
  Map<String, dynamic> toJson() => _$RenderstreamFailoverRequestToJson(this);

  @JsonKey(name: 'machine', includeIfNull: false)
  final D3apiLocator? machine;
  static const fromJsonFactory = _$RenderstreamFailoverRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RenderstreamFailoverRequest &&
            (identical(other.machine, machine) ||
                const DeepCollectionEquality().equals(other.machine, machine)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(machine) ^ runtimeType.hashCode;
}

extension $RenderstreamFailoverRequestExtension on RenderstreamFailoverRequest {
  RenderstreamFailoverRequest copyWith({D3apiLocator? machine}) {
    return RenderstreamFailoverRequest(machine: machine ?? this.machine);
  }

  RenderstreamFailoverRequest copyWithWrapped(
      {Wrapped<D3apiLocator?>? machine}) {
    return RenderstreamFailoverRequest(
        machine: (machine != null ? machine.value : this.machine));
  }
}

@JsonSerializable(explicitToJson: true)
class RenderstreamGetAssignersResponse {
  RenderstreamGetAssignersResponse({
    this.status,
    this.result,
  });

  factory RenderstreamGetAssignersResponse.fromJson(
          Map<String, dynamic> json) =>
      _$RenderstreamGetAssignersResponseFromJson(json);

  static const toJsonFactory = _$RenderstreamGetAssignersResponseToJson;
  Map<String, dynamic> toJson() =>
      _$RenderstreamGetAssignersResponseToJson(this);

  @JsonKey(name: 'status', includeIfNull: false)
  final RpcStatus? status;
  @JsonKey(
      name: 'result',
      includeIfNull: false,
      defaultValue: <RenderstreamAssignerInfo>[])
  final List<RenderstreamAssignerInfo>? result;
  static const fromJsonFactory = _$RenderstreamGetAssignersResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RenderstreamGetAssignersResponse &&
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

extension $RenderstreamGetAssignersResponseExtension
    on RenderstreamGetAssignersResponse {
  RenderstreamGetAssignersResponse copyWith(
      {RpcStatus? status, List<RenderstreamAssignerInfo>? result}) {
    return RenderstreamGetAssignersResponse(
        status: status ?? this.status, result: result ?? this.result);
  }

  RenderstreamGetAssignersResponse copyWithWrapped(
      {Wrapped<RpcStatus?>? status,
      Wrapped<List<RenderstreamAssignerInfo>?>? result}) {
    return RenderstreamGetAssignersResponse(
        status: (status != null ? status.value : this.status),
        result: (result != null ? result.value : this.result));
  }
}

@JsonSerializable(explicitToJson: true)
class RenderstreamGetLayerConfigResponse {
  RenderstreamGetLayerConfigResponse({
    this.status,
    this.result,
  });

  factory RenderstreamGetLayerConfigResponse.fromJson(
          Map<String, dynamic> json) =>
      _$RenderstreamGetLayerConfigResponseFromJson(json);

  static const toJsonFactory = _$RenderstreamGetLayerConfigResponseToJson;
  Map<String, dynamic> toJson() =>
      _$RenderstreamGetLayerConfigResponseToJson(this);

  @JsonKey(name: 'status', includeIfNull: false)
  final RpcStatus? status;
  @JsonKey(name: 'result', includeIfNull: false)
  final RenderstreamGetLayerConfigResult? result;
  static const fromJsonFactory = _$RenderstreamGetLayerConfigResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RenderstreamGetLayerConfigResponse &&
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

extension $RenderstreamGetLayerConfigResponseExtension
    on RenderstreamGetLayerConfigResponse {
  RenderstreamGetLayerConfigResponse copyWith(
      {RpcStatus? status, RenderstreamGetLayerConfigResult? result}) {
    return RenderstreamGetLayerConfigResponse(
        status: status ?? this.status, result: result ?? this.result);
  }

  RenderstreamGetLayerConfigResponse copyWithWrapped(
      {Wrapped<RpcStatus?>? status,
      Wrapped<RenderstreamGetLayerConfigResult?>? result}) {
    return RenderstreamGetLayerConfigResponse(
        status: (status != null ? status.value : this.status),
        result: (result != null ? result.value : this.result));
  }
}

@JsonSerializable(explicitToJson: true)
class RenderstreamGetLayerConfigResult {
  RenderstreamGetLayerConfigResult({
    this.framerateFractionDivisor,
    this.asset,
    this.pool,
    this.channelMappings,
    this.defaultAssigner,
  });

  factory RenderstreamGetLayerConfigResult.fromJson(
          Map<String, dynamic> json) =>
      _$RenderstreamGetLayerConfigResultFromJson(json);

  static const toJsonFactory = _$RenderstreamGetLayerConfigResultToJson;
  Map<String, dynamic> toJson() =>
      _$RenderstreamGetLayerConfigResultToJson(this);

  @JsonKey(name: 'framerateFractionDivisor', includeIfNull: false)
  final int? framerateFractionDivisor;
  @JsonKey(name: 'asset', includeIfNull: false)
  final RenderstreamAsset? asset;
  @JsonKey(name: 'pool', includeIfNull: false)
  final RenderstreamPool? pool;
  @JsonKey(
      name: 'channelMappings',
      includeIfNull: false,
      defaultValue: <RenderstreamChannelMappingInfo>[])
  final List<RenderstreamChannelMappingInfo>? channelMappings;
  @JsonKey(name: 'defaultAssigner', includeIfNull: false)
  final RenderstreamAssigner? defaultAssigner;
  static const fromJsonFactory = _$RenderstreamGetLayerConfigResultFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RenderstreamGetLayerConfigResult &&
            (identical(
                    other.framerateFractionDivisor, framerateFractionDivisor) ||
                const DeepCollectionEquality().equals(
                    other.framerateFractionDivisor,
                    framerateFractionDivisor)) &&
            (identical(other.asset, asset) ||
                const DeepCollectionEquality().equals(other.asset, asset)) &&
            (identical(other.pool, pool) ||
                const DeepCollectionEquality().equals(other.pool, pool)) &&
            (identical(other.channelMappings, channelMappings) ||
                const DeepCollectionEquality()
                    .equals(other.channelMappings, channelMappings)) &&
            (identical(other.defaultAssigner, defaultAssigner) ||
                const DeepCollectionEquality()
                    .equals(other.defaultAssigner, defaultAssigner)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(framerateFractionDivisor) ^
      const DeepCollectionEquality().hash(asset) ^
      const DeepCollectionEquality().hash(pool) ^
      const DeepCollectionEquality().hash(channelMappings) ^
      const DeepCollectionEquality().hash(defaultAssigner) ^
      runtimeType.hashCode;
}

extension $RenderstreamGetLayerConfigResultExtension
    on RenderstreamGetLayerConfigResult {
  RenderstreamGetLayerConfigResult copyWith(
      {int? framerateFractionDivisor,
      RenderstreamAsset? asset,
      RenderstreamPool? pool,
      List<RenderstreamChannelMappingInfo>? channelMappings,
      RenderstreamAssigner? defaultAssigner}) {
    return RenderstreamGetLayerConfigResult(
        framerateFractionDivisor:
            framerateFractionDivisor ?? this.framerateFractionDivisor,
        asset: asset ?? this.asset,
        pool: pool ?? this.pool,
        channelMappings: channelMappings ?? this.channelMappings,
        defaultAssigner: defaultAssigner ?? this.defaultAssigner);
  }

  RenderstreamGetLayerConfigResult copyWithWrapped(
      {Wrapped<int?>? framerateFractionDivisor,
      Wrapped<RenderstreamAsset?>? asset,
      Wrapped<RenderstreamPool?>? pool,
      Wrapped<List<RenderstreamChannelMappingInfo>?>? channelMappings,
      Wrapped<RenderstreamAssigner?>? defaultAssigner}) {
    return RenderstreamGetLayerConfigResult(
        framerateFractionDivisor: (framerateFractionDivisor != null
            ? framerateFractionDivisor.value
            : this.framerateFractionDivisor),
        asset: (asset != null ? asset.value : this.asset),
        pool: (pool != null ? pool.value : this.pool),
        channelMappings: (channelMappings != null
            ? channelMappings.value
            : this.channelMappings),
        defaultAssigner: (defaultAssigner != null
            ? defaultAssigner.value
            : this.defaultAssigner));
  }
}

@JsonSerializable(explicitToJson: true)
class RenderstreamGetLayerStatusResponse {
  RenderstreamGetLayerStatusResponse({
    this.status,
    this.result,
  });

  factory RenderstreamGetLayerStatusResponse.fromJson(
          Map<String, dynamic> json) =>
      _$RenderstreamGetLayerStatusResponseFromJson(json);

  static const toJsonFactory = _$RenderstreamGetLayerStatusResponseToJson;
  Map<String, dynamic> toJson() =>
      _$RenderstreamGetLayerStatusResponseToJson(this);

  @JsonKey(name: 'status', includeIfNull: false)
  final RpcStatus? status;
  @JsonKey(name: 'result', includeIfNull: false)
  final RenderstreamGetLayerStatusResult? result;
  static const fromJsonFactory = _$RenderstreamGetLayerStatusResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RenderstreamGetLayerStatusResponse &&
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

extension $RenderstreamGetLayerStatusResponseExtension
    on RenderstreamGetLayerStatusResponse {
  RenderstreamGetLayerStatusResponse copyWith(
      {RpcStatus? status, RenderstreamGetLayerStatusResult? result}) {
    return RenderstreamGetLayerStatusResponse(
        status: status ?? this.status, result: result ?? this.result);
  }

  RenderstreamGetLayerStatusResponse copyWithWrapped(
      {Wrapped<RpcStatus?>? status,
      Wrapped<RenderstreamGetLayerStatusResult?>? result}) {
    return RenderstreamGetLayerStatusResponse(
        status: (status != null ? status.value : this.status),
        result: (result != null ? result.value : this.result));
  }
}

@JsonSerializable(explicitToJson: true)
class RenderstreamGetLayerStatusResult {
  RenderstreamGetLayerStatusResult({
    this.reference,
    this.workload,
    this.streams,
    this.assetErrors,
  });

  factory RenderstreamGetLayerStatusResult.fromJson(
          Map<String, dynamic> json) =>
      _$RenderstreamGetLayerStatusResultFromJson(json);

  static const toJsonFactory = _$RenderstreamGetLayerStatusResultToJson;
  Map<String, dynamic> toJson() =>
      _$RenderstreamGetLayerStatusResultToJson(this);

  @JsonKey(name: 'reference', includeIfNull: false)
  final RenderstreamReferenceInfo? reference;
  @JsonKey(name: 'workload', includeIfNull: false)
  final RenderstreamWorkloadInfo? workload;
  @JsonKey(
      name: 'streams',
      includeIfNull: false,
      defaultValue: <RenderstreamStreamInfo>[])
  final List<RenderstreamStreamInfo>? streams;
  @JsonKey(name: 'assetErrors', includeIfNull: false, defaultValue: <String>[])
  final List<String>? assetErrors;
  static const fromJsonFactory = _$RenderstreamGetLayerStatusResultFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RenderstreamGetLayerStatusResult &&
            (identical(other.reference, reference) ||
                const DeepCollectionEquality()
                    .equals(other.reference, reference)) &&
            (identical(other.workload, workload) ||
                const DeepCollectionEquality()
                    .equals(other.workload, workload)) &&
            (identical(other.streams, streams) ||
                const DeepCollectionEquality()
                    .equals(other.streams, streams)) &&
            (identical(other.assetErrors, assetErrors) ||
                const DeepCollectionEquality()
                    .equals(other.assetErrors, assetErrors)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(reference) ^
      const DeepCollectionEquality().hash(workload) ^
      const DeepCollectionEquality().hash(streams) ^
      const DeepCollectionEquality().hash(assetErrors) ^
      runtimeType.hashCode;
}

extension $RenderstreamGetLayerStatusResultExtension
    on RenderstreamGetLayerStatusResult {
  RenderstreamGetLayerStatusResult copyWith(
      {RenderstreamReferenceInfo? reference,
      RenderstreamWorkloadInfo? workload,
      List<RenderstreamStreamInfo>? streams,
      List<String>? assetErrors}) {
    return RenderstreamGetLayerStatusResult(
        reference: reference ?? this.reference,
        workload: workload ?? this.workload,
        streams: streams ?? this.streams,
        assetErrors: assetErrors ?? this.assetErrors);
  }

  RenderstreamGetLayerStatusResult copyWithWrapped(
      {Wrapped<RenderstreamReferenceInfo?>? reference,
      Wrapped<RenderstreamWorkloadInfo?>? workload,
      Wrapped<List<RenderstreamStreamInfo>?>? streams,
      Wrapped<List<String>?>? assetErrors}) {
    return RenderstreamGetLayerStatusResult(
        reference: (reference != null ? reference.value : this.reference),
        workload: (workload != null ? workload.value : this.workload),
        streams: (streams != null ? streams.value : this.streams),
        assetErrors:
            (assetErrors != null ? assetErrors.value : this.assetErrors));
  }
}

@JsonSerializable(explicitToJson: true)
class RenderstreamGetLayersResponse {
  RenderstreamGetLayersResponse({
    this.status,
    this.result,
  });

  factory RenderstreamGetLayersResponse.fromJson(Map<String, dynamic> json) =>
      _$RenderstreamGetLayersResponseFromJson(json);

  static const toJsonFactory = _$RenderstreamGetLayersResponseToJson;
  Map<String, dynamic> toJson() => _$RenderstreamGetLayersResponseToJson(this);

  @JsonKey(name: 'status', includeIfNull: false)
  final RpcStatus? status;
  @JsonKey(
      name: 'result',
      includeIfNull: false,
      defaultValue: <RenderstreamRenderStreamInfo>[])
  final List<RenderstreamRenderStreamInfo>? result;
  static const fromJsonFactory = _$RenderstreamGetLayersResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RenderstreamGetLayersResponse &&
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

extension $RenderstreamGetLayersResponseExtension
    on RenderstreamGetLayersResponse {
  RenderstreamGetLayersResponse copyWith(
      {RpcStatus? status, List<RenderstreamRenderStreamInfo>? result}) {
    return RenderstreamGetLayersResponse(
        status: status ?? this.status, result: result ?? this.result);
  }

  RenderstreamGetLayersResponse copyWithWrapped(
      {Wrapped<RpcStatus?>? status,
      Wrapped<List<RenderstreamRenderStreamInfo>?>? result}) {
    return RenderstreamGetLayersResponse(
        status: (status != null ? status.value : this.status),
        result: (result != null ? result.value : this.result));
  }
}

@JsonSerializable(explicitToJson: true)
class RenderstreamGetPoolsResponse {
  RenderstreamGetPoolsResponse({
    this.status,
    this.result,
  });

  factory RenderstreamGetPoolsResponse.fromJson(Map<String, dynamic> json) =>
      _$RenderstreamGetPoolsResponseFromJson(json);

  static const toJsonFactory = _$RenderstreamGetPoolsResponseToJson;
  Map<String, dynamic> toJson() => _$RenderstreamGetPoolsResponseToJson(this);

  @JsonKey(name: 'status', includeIfNull: false)
  final RpcStatus? status;
  @JsonKey(
      name: 'result',
      includeIfNull: false,
      defaultValue: <RenderstreamPoolInfo>[])
  final List<RenderstreamPoolInfo>? result;
  static const fromJsonFactory = _$RenderstreamGetPoolsResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RenderstreamGetPoolsResponse &&
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

extension $RenderstreamGetPoolsResponseExtension
    on RenderstreamGetPoolsResponse {
  RenderstreamGetPoolsResponse copyWith(
      {RpcStatus? status, List<RenderstreamPoolInfo>? result}) {
    return RenderstreamGetPoolsResponse(
        status: status ?? this.status, result: result ?? this.result);
  }

  RenderstreamGetPoolsResponse copyWithWrapped(
      {Wrapped<RpcStatus?>? status,
      Wrapped<List<RenderstreamPoolInfo>?>? result}) {
    return RenderstreamGetPoolsResponse(
        status: (status != null ? status.value : this.status),
        result: (result != null ? result.value : this.result));
  }
}

@JsonSerializable(explicitToJson: true)
class RenderstreamMachineInfo {
  RenderstreamMachineInfo({
    this.uid,
    this.name,
    this.preferredSyncAdapter,
    this.adapters,
  });

  factory RenderstreamMachineInfo.fromJson(Map<String, dynamic> json) =>
      _$RenderstreamMachineInfoFromJson(json);

  static const toJsonFactory = _$RenderstreamMachineInfoToJson;
  Map<String, dynamic> toJson() => _$RenderstreamMachineInfoToJson(this);

  @JsonKey(name: 'uid', includeIfNull: false)
  final String? uid;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'preferredSyncAdapter', includeIfNull: false)
  final String? preferredSyncAdapter;
  @JsonKey(
      name: 'adapters',
      includeIfNull: false,
      defaultValue: <RenderstreamAdapterInfo>[])
  final List<RenderstreamAdapterInfo>? adapters;
  static const fromJsonFactory = _$RenderstreamMachineInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RenderstreamMachineInfo &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.preferredSyncAdapter, preferredSyncAdapter) ||
                const DeepCollectionEquality().equals(
                    other.preferredSyncAdapter, preferredSyncAdapter)) &&
            (identical(other.adapters, adapters) ||
                const DeepCollectionEquality()
                    .equals(other.adapters, adapters)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(preferredSyncAdapter) ^
      const DeepCollectionEquality().hash(adapters) ^
      runtimeType.hashCode;
}

extension $RenderstreamMachineInfoExtension on RenderstreamMachineInfo {
  RenderstreamMachineInfo copyWith(
      {String? uid,
      String? name,
      String? preferredSyncAdapter,
      List<RenderstreamAdapterInfo>? adapters}) {
    return RenderstreamMachineInfo(
        uid: uid ?? this.uid,
        name: name ?? this.name,
        preferredSyncAdapter: preferredSyncAdapter ?? this.preferredSyncAdapter,
        adapters: adapters ?? this.adapters);
  }

  RenderstreamMachineInfo copyWithWrapped(
      {Wrapped<String?>? uid,
      Wrapped<String?>? name,
      Wrapped<String?>? preferredSyncAdapter,
      Wrapped<List<RenderstreamAdapterInfo>?>? adapters}) {
    return RenderstreamMachineInfo(
        uid: (uid != null ? uid.value : this.uid),
        name: (name != null ? name.value : this.name),
        preferredSyncAdapter: (preferredSyncAdapter != null
            ? preferredSyncAdapter.value
            : this.preferredSyncAdapter),
        adapters: (adapters != null ? adapters.value : this.adapters));
  }
}

@JsonSerializable(explicitToJson: true)
class RenderstreamMapping {
  RenderstreamMapping({
    this.uid,
    this.name,
  });

  factory RenderstreamMapping.fromJson(Map<String, dynamic> json) =>
      _$RenderstreamMappingFromJson(json);

  static const toJsonFactory = _$RenderstreamMappingToJson;
  Map<String, dynamic> toJson() => _$RenderstreamMappingToJson(this);

  @JsonKey(name: 'uid', includeIfNull: false)
  final String? uid;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  static const fromJsonFactory = _$RenderstreamMappingFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RenderstreamMapping &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $RenderstreamMappingExtension on RenderstreamMapping {
  RenderstreamMapping copyWith({String? uid, String? name}) {
    return RenderstreamMapping(uid: uid ?? this.uid, name: name ?? this.name);
  }

  RenderstreamMapping copyWithWrapped(
      {Wrapped<String?>? uid, Wrapped<String?>? name}) {
    return RenderstreamMapping(
        uid: (uid != null ? uid.value : this.uid),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class RenderstreamNetworkInfo {
  RenderstreamNetworkInfo({
    this.ip,
    this.name,
  });

  factory RenderstreamNetworkInfo.fromJson(Map<String, dynamic> json) =>
      _$RenderstreamNetworkInfoFromJson(json);

  static const toJsonFactory = _$RenderstreamNetworkInfoToJson;
  Map<String, dynamic> toJson() => _$RenderstreamNetworkInfoToJson(this);

  @JsonKey(name: 'ip', includeIfNull: false)
  final String? ip;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  static const fromJsonFactory = _$RenderstreamNetworkInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RenderstreamNetworkInfo &&
            (identical(other.ip, ip) ||
                const DeepCollectionEquality().equals(other.ip, ip)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ip) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $RenderstreamNetworkInfoExtension on RenderstreamNetworkInfo {
  RenderstreamNetworkInfo copyWith({String? ip, String? name}) {
    return RenderstreamNetworkInfo(ip: ip ?? this.ip, name: name ?? this.name);
  }

  RenderstreamNetworkInfo copyWithWrapped(
      {Wrapped<String?>? ip, Wrapped<String?>? name}) {
    return RenderstreamNetworkInfo(
        ip: (ip != null ? ip.value : this.ip),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class RenderstreamPool {
  RenderstreamPool({
    this.uid,
    this.name,
  });

  factory RenderstreamPool.fromJson(Map<String, dynamic> json) =>
      _$RenderstreamPoolFromJson(json);

  static const toJsonFactory = _$RenderstreamPoolToJson;
  Map<String, dynamic> toJson() => _$RenderstreamPoolToJson(this);

  @JsonKey(name: 'uid', includeIfNull: false)
  final String? uid;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  static const fromJsonFactory = _$RenderstreamPoolFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RenderstreamPool &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $RenderstreamPoolExtension on RenderstreamPool {
  RenderstreamPool copyWith({String? uid, String? name}) {
    return RenderstreamPool(uid: uid ?? this.uid, name: name ?? this.name);
  }

  RenderstreamPool copyWithWrapped(
      {Wrapped<String?>? uid, Wrapped<String?>? name}) {
    return RenderstreamPool(
        uid: (uid != null ? uid.value : this.uid),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class RenderstreamPoolInfo {
  RenderstreamPoolInfo({
    this.uid,
    this.name,
    this.machines,
    this.understudies,
  });

  factory RenderstreamPoolInfo.fromJson(Map<String, dynamic> json) =>
      _$RenderstreamPoolInfoFromJson(json);

  static const toJsonFactory = _$RenderstreamPoolInfoToJson;
  Map<String, dynamic> toJson() => _$RenderstreamPoolInfoToJson(this);

  @JsonKey(name: 'uid', includeIfNull: false)
  final String? uid;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(
      name: 'machines',
      includeIfNull: false,
      defaultValue: <RenderstreamMachineInfo>[])
  final List<RenderstreamMachineInfo>? machines;
  @JsonKey(
      name: 'understudies',
      includeIfNull: false,
      defaultValue: <RenderstreamMachineInfo>[])
  final List<RenderstreamMachineInfo>? understudies;
  static const fromJsonFactory = _$RenderstreamPoolInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RenderstreamPoolInfo &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.machines, machines) ||
                const DeepCollectionEquality()
                    .equals(other.machines, machines)) &&
            (identical(other.understudies, understudies) ||
                const DeepCollectionEquality()
                    .equals(other.understudies, understudies)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(machines) ^
      const DeepCollectionEquality().hash(understudies) ^
      runtimeType.hashCode;
}

extension $RenderstreamPoolInfoExtension on RenderstreamPoolInfo {
  RenderstreamPoolInfo copyWith(
      {String? uid,
      String? name,
      List<RenderstreamMachineInfo>? machines,
      List<RenderstreamMachineInfo>? understudies}) {
    return RenderstreamPoolInfo(
        uid: uid ?? this.uid,
        name: name ?? this.name,
        machines: machines ?? this.machines,
        understudies: understudies ?? this.understudies);
  }

  RenderstreamPoolInfo copyWithWrapped(
      {Wrapped<String?>? uid,
      Wrapped<String?>? name,
      Wrapped<List<RenderstreamMachineInfo>?>? machines,
      Wrapped<List<RenderstreamMachineInfo>?>? understudies}) {
    return RenderstreamPoolInfo(
        uid: (uid != null ? uid.value : this.uid),
        name: (name != null ? name.value : this.name),
        machines: (machines != null ? machines.value : this.machines),
        understudies:
            (understudies != null ? understudies.value : this.understudies));
  }
}

@JsonSerializable(explicitToJson: true)
class RenderstreamReferenceInfo {
  RenderstreamReferenceInfo({
    this.tNow,
  });

  factory RenderstreamReferenceInfo.fromJson(Map<String, dynamic> json) =>
      _$RenderstreamReferenceInfoFromJson(json);

  static const toJsonFactory = _$RenderstreamReferenceInfoToJson;
  Map<String, dynamic> toJson() => _$RenderstreamReferenceInfoToJson(this);

  @JsonKey(name: 'tNow', includeIfNull: false)
  final double? tNow;
  static const fromJsonFactory = _$RenderstreamReferenceInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RenderstreamReferenceInfo &&
            (identical(other.tNow, tNow) ||
                const DeepCollectionEquality().equals(other.tNow, tNow)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(tNow) ^ runtimeType.hashCode;
}

extension $RenderstreamReferenceInfoExtension on RenderstreamReferenceInfo {
  RenderstreamReferenceInfo copyWith({double? tNow}) {
    return RenderstreamReferenceInfo(tNow: tNow ?? this.tNow);
  }

  RenderstreamReferenceInfo copyWithWrapped({Wrapped<double?>? tNow}) {
    return RenderstreamReferenceInfo(
        tNow: (tNow != null ? tNow.value : this.tNow));
  }
}

@JsonSerializable(explicitToJson: true)
class RenderstreamRenderStreamInfo {
  RenderstreamRenderStreamInfo({
    this.uid,
    this.name,
  });

  factory RenderstreamRenderStreamInfo.fromJson(Map<String, dynamic> json) =>
      _$RenderstreamRenderStreamInfoFromJson(json);

  static const toJsonFactory = _$RenderstreamRenderStreamInfoToJson;
  Map<String, dynamic> toJson() => _$RenderstreamRenderStreamInfoToJson(this);

  @JsonKey(name: 'uid', includeIfNull: false)
  final String? uid;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  static const fromJsonFactory = _$RenderstreamRenderStreamInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RenderstreamRenderStreamInfo &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $RenderstreamRenderStreamInfoExtension
    on RenderstreamRenderStreamInfo {
  RenderstreamRenderStreamInfo copyWith({String? uid, String? name}) {
    return RenderstreamRenderStreamInfo(
        uid: uid ?? this.uid, name: name ?? this.name);
  }

  RenderstreamRenderStreamInfo copyWithWrapped(
      {Wrapped<String?>? uid, Wrapped<String?>? name}) {
    return RenderstreamRenderStreamInfo(
        uid: (uid != null ? uid.value : this.uid),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class RenderstreamRestartLayersRequest {
  RenderstreamRestartLayersRequest({
    this.layers,
  });

  factory RenderstreamRestartLayersRequest.fromJson(
          Map<String, dynamic> json) =>
      _$RenderstreamRestartLayersRequestFromJson(json);

  static const toJsonFactory = _$RenderstreamRestartLayersRequestToJson;
  Map<String, dynamic> toJson() =>
      _$RenderstreamRestartLayersRequestToJson(this);

  @JsonKey(name: 'layers', includeIfNull: false, defaultValue: <D3apiLocator>[])
  final List<D3apiLocator>? layers;
  static const fromJsonFactory = _$RenderstreamRestartLayersRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RenderstreamRestartLayersRequest &&
            (identical(other.layers, layers) ||
                const DeepCollectionEquality().equals(other.layers, layers)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(layers) ^ runtimeType.hashCode;
}

extension $RenderstreamRestartLayersRequestExtension
    on RenderstreamRestartLayersRequest {
  RenderstreamRestartLayersRequest copyWith({List<D3apiLocator>? layers}) {
    return RenderstreamRestartLayersRequest(layers: layers ?? this.layers);
  }

  RenderstreamRestartLayersRequest copyWithWrapped(
      {Wrapped<List<D3apiLocator>?>? layers}) {
    return RenderstreamRestartLayersRequest(
        layers: (layers != null ? layers.value : this.layers));
  }
}

@JsonSerializable(explicitToJson: true)
class RenderstreamStartLayersRequest {
  RenderstreamStartLayersRequest({
    this.layers,
  });

  factory RenderstreamStartLayersRequest.fromJson(Map<String, dynamic> json) =>
      _$RenderstreamStartLayersRequestFromJson(json);

  static const toJsonFactory = _$RenderstreamStartLayersRequestToJson;
  Map<String, dynamic> toJson() => _$RenderstreamStartLayersRequestToJson(this);

  @JsonKey(name: 'layers', includeIfNull: false, defaultValue: <D3apiLocator>[])
  final List<D3apiLocator>? layers;
  static const fromJsonFactory = _$RenderstreamStartLayersRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RenderstreamStartLayersRequest &&
            (identical(other.layers, layers) ||
                const DeepCollectionEquality().equals(other.layers, layers)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(layers) ^ runtimeType.hashCode;
}

extension $RenderstreamStartLayersRequestExtension
    on RenderstreamStartLayersRequest {
  RenderstreamStartLayersRequest copyWith({List<D3apiLocator>? layers}) {
    return RenderstreamStartLayersRequest(layers: layers ?? this.layers);
  }

  RenderstreamStartLayersRequest copyWithWrapped(
      {Wrapped<List<D3apiLocator>?>? layers}) {
    return RenderstreamStartLayersRequest(
        layers: (layers != null ? layers.value : this.layers));
  }
}

@JsonSerializable(explicitToJson: true)
class RenderstreamStopLayersRequest {
  RenderstreamStopLayersRequest({
    this.layers,
  });

  factory RenderstreamStopLayersRequest.fromJson(Map<String, dynamic> json) =>
      _$RenderstreamStopLayersRequestFromJson(json);

  static const toJsonFactory = _$RenderstreamStopLayersRequestToJson;
  Map<String, dynamic> toJson() => _$RenderstreamStopLayersRequestToJson(this);

  @JsonKey(name: 'layers', includeIfNull: false, defaultValue: <D3apiLocator>[])
  final List<D3apiLocator>? layers;
  static const fromJsonFactory = _$RenderstreamStopLayersRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RenderstreamStopLayersRequest &&
            (identical(other.layers, layers) ||
                const DeepCollectionEquality().equals(other.layers, layers)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(layers) ^ runtimeType.hashCode;
}

extension $RenderstreamStopLayersRequestExtension
    on RenderstreamStopLayersRequest {
  RenderstreamStopLayersRequest copyWith({List<D3apiLocator>? layers}) {
    return RenderstreamStopLayersRequest(layers: layers ?? this.layers);
  }

  RenderstreamStopLayersRequest copyWithWrapped(
      {Wrapped<List<D3apiLocator>?>? layers}) {
    return RenderstreamStopLayersRequest(
        layers: (layers != null ? layers.value : this.layers));
  }
}

@JsonSerializable(explicitToJson: true)
class RenderstreamStreamInfo {
  RenderstreamStreamInfo({
    this.uid,
    this.name,
    this.sourceMachine,
    this.receiverMachine,
    this.status,
    this.statusString,
  });

  factory RenderstreamStreamInfo.fromJson(Map<String, dynamic> json) =>
      _$RenderstreamStreamInfoFromJson(json);

  static const toJsonFactory = _$RenderstreamStreamInfoToJson;
  Map<String, dynamic> toJson() => _$RenderstreamStreamInfoToJson(this);

  @JsonKey(name: 'uid', includeIfNull: false)
  final String? uid;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'sourceMachine', includeIfNull: false)
  final String? sourceMachine;
  @JsonKey(name: 'receiverMachine', includeIfNull: false)
  final String? receiverMachine;
  @JsonKey(name: 'status', includeIfNull: false)
  final RenderstreamStreamStatus? status;
  @JsonKey(name: 'statusString', includeIfNull: false)
  final String? statusString;
  static const fromJsonFactory = _$RenderstreamStreamInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RenderstreamStreamInfo &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.sourceMachine, sourceMachine) ||
                const DeepCollectionEquality()
                    .equals(other.sourceMachine, sourceMachine)) &&
            (identical(other.receiverMachine, receiverMachine) ||
                const DeepCollectionEquality()
                    .equals(other.receiverMachine, receiverMachine)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.statusString, statusString) ||
                const DeepCollectionEquality()
                    .equals(other.statusString, statusString)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(sourceMachine) ^
      const DeepCollectionEquality().hash(receiverMachine) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(statusString) ^
      runtimeType.hashCode;
}

extension $RenderstreamStreamInfoExtension on RenderstreamStreamInfo {
  RenderstreamStreamInfo copyWith(
      {String? uid,
      String? name,
      String? sourceMachine,
      String? receiverMachine,
      RenderstreamStreamStatus? status,
      String? statusString}) {
    return RenderstreamStreamInfo(
        uid: uid ?? this.uid,
        name: name ?? this.name,
        sourceMachine: sourceMachine ?? this.sourceMachine,
        receiverMachine: receiverMachine ?? this.receiverMachine,
        status: status ?? this.status,
        statusString: statusString ?? this.statusString);
  }

  RenderstreamStreamInfo copyWithWrapped(
      {Wrapped<String?>? uid,
      Wrapped<String?>? name,
      Wrapped<String?>? sourceMachine,
      Wrapped<String?>? receiverMachine,
      Wrapped<RenderstreamStreamStatus?>? status,
      Wrapped<String?>? statusString}) {
    return RenderstreamStreamInfo(
        uid: (uid != null ? uid.value : this.uid),
        name: (name != null ? name.value : this.name),
        sourceMachine:
            (sourceMachine != null ? sourceMachine.value : this.sourceMachine),
        receiverMachine: (receiverMachine != null
            ? receiverMachine.value
            : this.receiverMachine),
        status: (status != null ? status.value : this.status),
        statusString:
            (statusString != null ? statusString.value : this.statusString));
  }
}

@JsonSerializable(explicitToJson: true)
class RenderstreamStreamStatus {
  RenderstreamStreamStatus({
    this.subscriptionWanted,
    this.subscribeSuccessful,
    this.tLastDropped,
    this.tLastError,
    this.lastErrorMessage,
  });

  factory RenderstreamStreamStatus.fromJson(Map<String, dynamic> json) =>
      _$RenderstreamStreamStatusFromJson(json);

  static const toJsonFactory = _$RenderstreamStreamStatusToJson;
  Map<String, dynamic> toJson() => _$RenderstreamStreamStatusToJson(this);

  @JsonKey(name: 'subscriptionWanted', includeIfNull: false)
  final bool? subscriptionWanted;
  @JsonKey(name: 'subscribeSuccessful', includeIfNull: false)
  final bool? subscribeSuccessful;
  @JsonKey(name: 'tLastDropped', includeIfNull: false)
  final double? tLastDropped;
  @JsonKey(name: 'tLastError', includeIfNull: false)
  final double? tLastError;
  @JsonKey(name: 'lastErrorMessage', includeIfNull: false)
  final String? lastErrorMessage;
  static const fromJsonFactory = _$RenderstreamStreamStatusFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RenderstreamStreamStatus &&
            (identical(other.subscriptionWanted, subscriptionWanted) ||
                const DeepCollectionEquality()
                    .equals(other.subscriptionWanted, subscriptionWanted)) &&
            (identical(other.subscribeSuccessful, subscribeSuccessful) ||
                const DeepCollectionEquality()
                    .equals(other.subscribeSuccessful, subscribeSuccessful)) &&
            (identical(other.tLastDropped, tLastDropped) ||
                const DeepCollectionEquality()
                    .equals(other.tLastDropped, tLastDropped)) &&
            (identical(other.tLastError, tLastError) ||
                const DeepCollectionEquality()
                    .equals(other.tLastError, tLastError)) &&
            (identical(other.lastErrorMessage, lastErrorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.lastErrorMessage, lastErrorMessage)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(subscriptionWanted) ^
      const DeepCollectionEquality().hash(subscribeSuccessful) ^
      const DeepCollectionEquality().hash(tLastDropped) ^
      const DeepCollectionEquality().hash(tLastError) ^
      const DeepCollectionEquality().hash(lastErrorMessage) ^
      runtimeType.hashCode;
}

extension $RenderstreamStreamStatusExtension on RenderstreamStreamStatus {
  RenderstreamStreamStatus copyWith(
      {bool? subscriptionWanted,
      bool? subscribeSuccessful,
      double? tLastDropped,
      double? tLastError,
      String? lastErrorMessage}) {
    return RenderstreamStreamStatus(
        subscriptionWanted: subscriptionWanted ?? this.subscriptionWanted,
        subscribeSuccessful: subscribeSuccessful ?? this.subscribeSuccessful,
        tLastDropped: tLastDropped ?? this.tLastDropped,
        tLastError: tLastError ?? this.tLastError,
        lastErrorMessage: lastErrorMessage ?? this.lastErrorMessage);
  }

  RenderstreamStreamStatus copyWithWrapped(
      {Wrapped<bool?>? subscriptionWanted,
      Wrapped<bool?>? subscribeSuccessful,
      Wrapped<double?>? tLastDropped,
      Wrapped<double?>? tLastError,
      Wrapped<String?>? lastErrorMessage}) {
    return RenderstreamStreamStatus(
        subscriptionWanted: (subscriptionWanted != null
            ? subscriptionWanted.value
            : this.subscriptionWanted),
        subscribeSuccessful: (subscribeSuccessful != null
            ? subscribeSuccessful.value
            : this.subscribeSuccessful),
        tLastDropped:
            (tLastDropped != null ? tLastDropped.value : this.tLastDropped),
        tLastError: (tLastError != null ? tLastError.value : this.tLastError),
        lastErrorMessage: (lastErrorMessage != null
            ? lastErrorMessage.value
            : this.lastErrorMessage));
  }
}

@JsonSerializable(explicitToJson: true)
class RenderstreamSyncLayersRequest {
  RenderstreamSyncLayersRequest({
    this.layers,
  });

  factory RenderstreamSyncLayersRequest.fromJson(Map<String, dynamic> json) =>
      _$RenderstreamSyncLayersRequestFromJson(json);

  static const toJsonFactory = _$RenderstreamSyncLayersRequestToJson;
  Map<String, dynamic> toJson() => _$RenderstreamSyncLayersRequestToJson(this);

  @JsonKey(name: 'layers', includeIfNull: false, defaultValue: <D3apiLocator>[])
  final List<D3apiLocator>? layers;
  static const fromJsonFactory = _$RenderstreamSyncLayersRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RenderstreamSyncLayersRequest &&
            (identical(other.layers, layers) ||
                const DeepCollectionEquality().equals(other.layers, layers)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(layers) ^ runtimeType.hashCode;
}

extension $RenderstreamSyncLayersRequestExtension
    on RenderstreamSyncLayersRequest {
  RenderstreamSyncLayersRequest copyWith({List<D3apiLocator>? layers}) {
    return RenderstreamSyncLayersRequest(layers: layers ?? this.layers);
  }

  RenderstreamSyncLayersRequest copyWithWrapped(
      {Wrapped<List<D3apiLocator>?>? layers}) {
    return RenderstreamSyncLayersRequest(
        layers: (layers != null ? layers.value : this.layers));
  }
}

@JsonSerializable(explicitToJson: true)
class RenderstreamTransportInfo {
  RenderstreamTransportInfo({
    this.type,
    this.format,
    this.bitDepth,
  });

  factory RenderstreamTransportInfo.fromJson(Map<String, dynamic> json) =>
      _$RenderstreamTransportInfoFromJson(json);

  static const toJsonFactory = _$RenderstreamTransportInfoToJson;
  Map<String, dynamic> toJson() => _$RenderstreamTransportInfoToJson(this);

  @JsonKey(name: 'type', includeIfNull: false)
  final String? type;
  @JsonKey(name: 'format', includeIfNull: false)
  final String? format;
  @JsonKey(name: 'bitDepth', includeIfNull: false)
  final int? bitDepth;
  static const fromJsonFactory = _$RenderstreamTransportInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RenderstreamTransportInfo &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.format, format) ||
                const DeepCollectionEquality().equals(other.format, format)) &&
            (identical(other.bitDepth, bitDepth) ||
                const DeepCollectionEquality()
                    .equals(other.bitDepth, bitDepth)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(format) ^
      const DeepCollectionEquality().hash(bitDepth) ^
      runtimeType.hashCode;
}

extension $RenderstreamTransportInfoExtension on RenderstreamTransportInfo {
  RenderstreamTransportInfo copyWith(
      {String? type, String? format, int? bitDepth}) {
    return RenderstreamTransportInfo(
        type: type ?? this.type,
        format: format ?? this.format,
        bitDepth: bitDepth ?? this.bitDepth);
  }

  RenderstreamTransportInfo copyWithWrapped(
      {Wrapped<String?>? type,
      Wrapped<String?>? format,
      Wrapped<int?>? bitDepth}) {
    return RenderstreamTransportInfo(
        type: (type != null ? type.value : this.type),
        format: (format != null ? format.value : this.format),
        bitDepth: (bitDepth != null ? bitDepth.value : this.bitDepth));
  }
}

@JsonSerializable(explicitToJson: true)
class RenderstreamWorkloadInfo {
  RenderstreamWorkloadInfo({
    this.uid,
    this.name,
    this.instances,
  });

  factory RenderstreamWorkloadInfo.fromJson(Map<String, dynamic> json) =>
      _$RenderstreamWorkloadInfoFromJson(json);

  static const toJsonFactory = _$RenderstreamWorkloadInfoToJson;
  Map<String, dynamic> toJson() => _$RenderstreamWorkloadInfoToJson(this);

  @JsonKey(name: 'uid', includeIfNull: false)
  final String? uid;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(
      name: 'instances',
      includeIfNull: false,
      defaultValue: <RenderstreamWorkloadInstanceInfo>[])
  final List<RenderstreamWorkloadInstanceInfo>? instances;
  static const fromJsonFactory = _$RenderstreamWorkloadInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RenderstreamWorkloadInfo &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.instances, instances) ||
                const DeepCollectionEquality()
                    .equals(other.instances, instances)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(instances) ^
      runtimeType.hashCode;
}

extension $RenderstreamWorkloadInfoExtension on RenderstreamWorkloadInfo {
  RenderstreamWorkloadInfo copyWith(
      {String? uid,
      String? name,
      List<RenderstreamWorkloadInstanceInfo>? instances}) {
    return RenderstreamWorkloadInfo(
        uid: uid ?? this.uid,
        name: name ?? this.name,
        instances: instances ?? this.instances);
  }

  RenderstreamWorkloadInfo copyWithWrapped(
      {Wrapped<String?>? uid,
      Wrapped<String?>? name,
      Wrapped<List<RenderstreamWorkloadInstanceInfo>?>? instances}) {
    return RenderstreamWorkloadInfo(
        uid: (uid != null ? uid.value : this.uid),
        name: (name != null ? name.value : this.name),
        instances: (instances != null ? instances.value : this.instances));
  }
}

@JsonSerializable(explicitToJson: true)
class RenderstreamWorkloadInstanceInfo {
  RenderstreamWorkloadInstanceInfo({
    this.machineUid,
    this.machineName,
    this.state,
    this.healthMessage,
    this.healthDetails,
  });

  factory RenderstreamWorkloadInstanceInfo.fromJson(
          Map<String, dynamic> json) =>
      _$RenderstreamWorkloadInstanceInfoFromJson(json);

  static const toJsonFactory = _$RenderstreamWorkloadInstanceInfoToJson;
  Map<String, dynamic> toJson() =>
      _$RenderstreamWorkloadInstanceInfoToJson(this);

  @JsonKey(name: 'machineUid', includeIfNull: false)
  final String? machineUid;
  @JsonKey(name: 'machineName', includeIfNull: false)
  final String? machineName;
  @JsonKey(name: 'state', includeIfNull: false)
  final String? state;
  @JsonKey(name: 'healthMessage', includeIfNull: false)
  final String? healthMessage;
  @JsonKey(name: 'healthDetails', includeIfNull: false)
  final String? healthDetails;
  static const fromJsonFactory = _$RenderstreamWorkloadInstanceInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RenderstreamWorkloadInstanceInfo &&
            (identical(other.machineUid, machineUid) ||
                const DeepCollectionEquality()
                    .equals(other.machineUid, machineUid)) &&
            (identical(other.machineName, machineName) ||
                const DeepCollectionEquality()
                    .equals(other.machineName, machineName)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.healthMessage, healthMessage) ||
                const DeepCollectionEquality()
                    .equals(other.healthMessage, healthMessage)) &&
            (identical(other.healthDetails, healthDetails) ||
                const DeepCollectionEquality()
                    .equals(other.healthDetails, healthDetails)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(machineUid) ^
      const DeepCollectionEquality().hash(machineName) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(healthMessage) ^
      const DeepCollectionEquality().hash(healthDetails) ^
      runtimeType.hashCode;
}

extension $RenderstreamWorkloadInstanceInfoExtension
    on RenderstreamWorkloadInstanceInfo {
  RenderstreamWorkloadInstanceInfo copyWith(
      {String? machineUid,
      String? machineName,
      String? state,
      String? healthMessage,
      String? healthDetails}) {
    return RenderstreamWorkloadInstanceInfo(
        machineUid: machineUid ?? this.machineUid,
        machineName: machineName ?? this.machineName,
        state: state ?? this.state,
        healthMessage: healthMessage ?? this.healthMessage,
        healthDetails: healthDetails ?? this.healthDetails);
  }

  RenderstreamWorkloadInstanceInfo copyWithWrapped(
      {Wrapped<String?>? machineUid,
      Wrapped<String?>? machineName,
      Wrapped<String?>? state,
      Wrapped<String?>? healthMessage,
      Wrapped<String?>? healthDetails}) {
    return RenderstreamWorkloadInstanceInfo(
        machineUid: (machineUid != null ? machineUid.value : this.machineUid),
        machineName:
            (machineName != null ? machineName.value : this.machineName),
        state: (state != null ? state.value : this.state),
        healthMessage:
            (healthMessage != null ? healthMessage.value : this.healthMessage),
        healthDetails:
            (healthDetails != null ? healthDetails.value : this.healthDetails));
  }
}

@JsonSerializable(explicitToJson: true)
class SequencingChangeIndirectionsRequest {
  SequencingChangeIndirectionsRequest({
    this.changes,
  });

  factory SequencingChangeIndirectionsRequest.fromJson(
          Map<String, dynamic> json) =>
      _$SequencingChangeIndirectionsRequestFromJson(json);

  static const toJsonFactory = _$SequencingChangeIndirectionsRequestToJson;
  Map<String, dynamic> toJson() =>
      _$SequencingChangeIndirectionsRequestToJson(this);

  @JsonKey(
      name: 'changes',
      includeIfNull: false,
      defaultValue: <SequencingIndirectionChangeAssignment>[])
  final List<SequencingIndirectionChangeAssignment>? changes;
  static const fromJsonFactory = _$SequencingChangeIndirectionsRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SequencingChangeIndirectionsRequest &&
            (identical(other.changes, changes) ||
                const DeepCollectionEquality().equals(other.changes, changes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(changes) ^ runtimeType.hashCode;
}

extension $SequencingChangeIndirectionsRequestExtension
    on SequencingChangeIndirectionsRequest {
  SequencingChangeIndirectionsRequest copyWith(
      {List<SequencingIndirectionChangeAssignment>? changes}) {
    return SequencingChangeIndirectionsRequest(
        changes: changes ?? this.changes);
  }

  SequencingChangeIndirectionsRequest copyWithWrapped(
      {Wrapped<List<SequencingIndirectionChangeAssignment>?>? changes}) {
    return SequencingChangeIndirectionsRequest(
        changes: (changes != null ? changes.value : this.changes));
  }
}

@JsonSerializable(explicitToJson: true)
class SequencingIndirectionChangeAssignment {
  SequencingIndirectionChangeAssignment({
    this.indirection,
    this.resource,
  });

  factory SequencingIndirectionChangeAssignment.fromJson(
          Map<String, dynamic> json) =>
      _$SequencingIndirectionChangeAssignmentFromJson(json);

  static const toJsonFactory = _$SequencingIndirectionChangeAssignmentToJson;
  Map<String, dynamic> toJson() =>
      _$SequencingIndirectionChangeAssignmentToJson(this);

  @JsonKey(name: 'indirection', includeIfNull: false)
  final D3apiLocator? indirection;
  @JsonKey(name: 'resource', includeIfNull: false)
  final D3apiLocator? resource;
  static const fromJsonFactory =
      _$SequencingIndirectionChangeAssignmentFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SequencingIndirectionChangeAssignment &&
            (identical(other.indirection, indirection) ||
                const DeepCollectionEquality()
                    .equals(other.indirection, indirection)) &&
            (identical(other.resource, resource) ||
                const DeepCollectionEquality()
                    .equals(other.resource, resource)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(indirection) ^
      const DeepCollectionEquality().hash(resource) ^
      runtimeType.hashCode;
}

extension $SequencingIndirectionChangeAssignmentExtension
    on SequencingIndirectionChangeAssignment {
  SequencingIndirectionChangeAssignment copyWith(
      {D3apiLocator? indirection, D3apiLocator? resource}) {
    return SequencingIndirectionChangeAssignment(
        indirection: indirection ?? this.indirection,
        resource: resource ?? this.resource);
  }

  SequencingIndirectionChangeAssignment copyWithWrapped(
      {Wrapped<D3apiLocator?>? indirection, Wrapped<D3apiLocator?>? resource}) {
    return SequencingIndirectionChangeAssignment(
        indirection:
            (indirection != null ? indirection.value : this.indirection),
        resource: (resource != null ? resource.value : this.resource));
  }
}

@JsonSerializable(explicitToJson: true)
class SequencingIndirectionResource {
  SequencingIndirectionResource({
    this.uid,
    this.name,
  });

  factory SequencingIndirectionResource.fromJson(Map<String, dynamic> json) =>
      _$SequencingIndirectionResourceFromJson(json);

  static const toJsonFactory = _$SequencingIndirectionResourceToJson;
  Map<String, dynamic> toJson() => _$SequencingIndirectionResourceToJson(this);

  @JsonKey(name: 'uid', includeIfNull: false)
  final String? uid;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  static const fromJsonFactory = _$SequencingIndirectionResourceFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SequencingIndirectionResource &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $SequencingIndirectionResourceExtension
    on SequencingIndirectionResource {
  SequencingIndirectionResource copyWith({String? uid, String? name}) {
    return SequencingIndirectionResource(
        uid: uid ?? this.uid, name: name ?? this.name);
  }

  SequencingIndirectionResource copyWithWrapped(
      {Wrapped<String?>? uid, Wrapped<String?>? name}) {
    return SequencingIndirectionResource(
        uid: (uid != null ? uid.value : this.uid),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class SequencingListAvailableResourcesResponse {
  SequencingListAvailableResourcesResponse({
    this.status,
    this.result,
  });

  factory SequencingListAvailableResourcesResponse.fromJson(
          Map<String, dynamic> json) =>
      _$SequencingListAvailableResourcesResponseFromJson(json);

  static const toJsonFactory = _$SequencingListAvailableResourcesResponseToJson;
  Map<String, dynamic> toJson() =>
      _$SequencingListAvailableResourcesResponseToJson(this);

  @JsonKey(name: 'status', includeIfNull: false)
  final RpcStatus? status;
  @JsonKey(
      name: 'result',
      includeIfNull: false,
      defaultValue: <SequencingIndirectionResource>[])
  final List<SequencingIndirectionResource>? result;
  static const fromJsonFactory =
      _$SequencingListAvailableResourcesResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SequencingListAvailableResourcesResponse &&
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

extension $SequencingListAvailableResourcesResponseExtension
    on SequencingListAvailableResourcesResponse {
  SequencingListAvailableResourcesResponse copyWith(
      {RpcStatus? status, List<SequencingIndirectionResource>? result}) {
    return SequencingListAvailableResourcesResponse(
        status: status ?? this.status, result: result ?? this.result);
  }

  SequencingListAvailableResourcesResponse copyWithWrapped(
      {Wrapped<RpcStatus?>? status,
      Wrapped<List<SequencingIndirectionResource>?>? result}) {
    return SequencingListAvailableResourcesResponse(
        status: (status != null ? status.value : this.status),
        result: (result != null ? result.value : this.result));
  }
}

@JsonSerializable(explicitToJson: true)
class SequencingListIndirectionItem {
  SequencingListIndirectionItem({
    this.uid,
    this.name,
    this.resourceType,
    this.currentResource,
  });

  factory SequencingListIndirectionItem.fromJson(Map<String, dynamic> json) =>
      _$SequencingListIndirectionItemFromJson(json);

  static const toJsonFactory = _$SequencingListIndirectionItemToJson;
  Map<String, dynamic> toJson() => _$SequencingListIndirectionItemToJson(this);

  @JsonKey(name: 'uid', includeIfNull: false)
  final String? uid;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'resourceType', includeIfNull: false)
  final String? resourceType;
  @JsonKey(name: 'currentResource', includeIfNull: false)
  final SequencingIndirectionResource? currentResource;
  static const fromJsonFactory = _$SequencingListIndirectionItemFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SequencingListIndirectionItem &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.resourceType, resourceType) ||
                const DeepCollectionEquality()
                    .equals(other.resourceType, resourceType)) &&
            (identical(other.currentResource, currentResource) ||
                const DeepCollectionEquality()
                    .equals(other.currentResource, currentResource)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(resourceType) ^
      const DeepCollectionEquality().hash(currentResource) ^
      runtimeType.hashCode;
}

extension $SequencingListIndirectionItemExtension
    on SequencingListIndirectionItem {
  SequencingListIndirectionItem copyWith(
      {String? uid,
      String? name,
      String? resourceType,
      SequencingIndirectionResource? currentResource}) {
    return SequencingListIndirectionItem(
        uid: uid ?? this.uid,
        name: name ?? this.name,
        resourceType: resourceType ?? this.resourceType,
        currentResource: currentResource ?? this.currentResource);
  }

  SequencingListIndirectionItem copyWithWrapped(
      {Wrapped<String?>? uid,
      Wrapped<String?>? name,
      Wrapped<String?>? resourceType,
      Wrapped<SequencingIndirectionResource?>? currentResource}) {
    return SequencingListIndirectionItem(
        uid: (uid != null ? uid.value : this.uid),
        name: (name != null ? name.value : this.name),
        resourceType:
            (resourceType != null ? resourceType.value : this.resourceType),
        currentResource: (currentResource != null
            ? currentResource.value
            : this.currentResource));
  }
}

@JsonSerializable(explicitToJson: true)
class SequencingListIndirectionsResponse {
  SequencingListIndirectionsResponse({
    this.status,
    this.result,
  });

  factory SequencingListIndirectionsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$SequencingListIndirectionsResponseFromJson(json);

  static const toJsonFactory = _$SequencingListIndirectionsResponseToJson;
  Map<String, dynamic> toJson() =>
      _$SequencingListIndirectionsResponseToJson(this);

  @JsonKey(name: 'status', includeIfNull: false)
  final RpcStatus? status;
  @JsonKey(
      name: 'result',
      includeIfNull: false,
      defaultValue: <SequencingListIndirectionItem>[])
  final List<SequencingListIndirectionItem>? result;
  static const fromJsonFactory = _$SequencingListIndirectionsResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SequencingListIndirectionsResponse &&
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

extension $SequencingListIndirectionsResponseExtension
    on SequencingListIndirectionsResponse {
  SequencingListIndirectionsResponse copyWith(
      {RpcStatus? status, List<SequencingListIndirectionItem>? result}) {
    return SequencingListIndirectionsResponse(
        status: status ?? this.status, result: result ?? this.result);
  }

  SequencingListIndirectionsResponse copyWithWrapped(
      {Wrapped<RpcStatus?>? status,
      Wrapped<List<SequencingListIndirectionItem>?>? result}) {
    return SequencingListIndirectionsResponse(
        status: (status != null ? status.value : this.status),
        result: (result != null ? result.value : this.result));
  }
}

@JsonSerializable(explicitToJson: true)
class StatusD3VersionInfo {
  StatusD3VersionInfo({
    this.major,
    this.minor,
    this.hotfix,
    this.revision,
  });

  factory StatusD3VersionInfo.fromJson(Map<String, dynamic> json) =>
      _$StatusD3VersionInfoFromJson(json);

  static const toJsonFactory = _$StatusD3VersionInfoToJson;
  Map<String, dynamic> toJson() => _$StatusD3VersionInfoToJson(this);

  @JsonKey(name: 'major', includeIfNull: false)
  final int? major;
  @JsonKey(name: 'minor', includeIfNull: false)
  final int? minor;
  @JsonKey(name: 'hotfix', includeIfNull: false)
  final int? hotfix;
  @JsonKey(name: 'revision', includeIfNull: false)
  final int? revision;
  static const fromJsonFactory = _$StatusD3VersionInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StatusD3VersionInfo &&
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

extension $StatusD3VersionInfoExtension on StatusD3VersionInfo {
  StatusD3VersionInfo copyWith(
      {int? major, int? minor, int? hotfix, int? revision}) {
    return StatusD3VersionInfo(
        major: major ?? this.major,
        minor: minor ?? this.minor,
        hotfix: hotfix ?? this.hotfix,
        revision: revision ?? this.revision);
  }

  StatusD3VersionInfo copyWithWrapped(
      {Wrapped<int?>? major,
      Wrapped<int?>? minor,
      Wrapped<int?>? hotfix,
      Wrapped<int?>? revision}) {
    return StatusD3VersionInfo(
        major: (major != null ? major.value : this.major),
        minor: (minor != null ? minor.value : this.minor),
        hotfix: (hotfix != null ? hotfix.value : this.hotfix),
        revision: (revision != null ? revision.value : this.revision));
  }
}

@JsonSerializable(explicitToJson: true)
class StatusGetProjectResponse {
  StatusGetProjectResponse({
    this.status,
    this.result,
  });

  factory StatusGetProjectResponse.fromJson(Map<String, dynamic> json) =>
      _$StatusGetProjectResponseFromJson(json);

  static const toJsonFactory = _$StatusGetProjectResponseToJson;
  Map<String, dynamic> toJson() => _$StatusGetProjectResponseToJson(this);

  @JsonKey(name: 'status', includeIfNull: false)
  final RpcStatus? status;
  @JsonKey(name: 'result', includeIfNull: false)
  final StatusGetProjectResult? result;
  static const fromJsonFactory = _$StatusGetProjectResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StatusGetProjectResponse &&
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

extension $StatusGetProjectResponseExtension on StatusGetProjectResponse {
  StatusGetProjectResponse copyWith(
      {RpcStatus? status, StatusGetProjectResult? result}) {
    return StatusGetProjectResponse(
        status: status ?? this.status, result: result ?? this.result);
  }

  StatusGetProjectResponse copyWithWrapped(
      {Wrapped<RpcStatus?>? status, Wrapped<StatusGetProjectResult?>? result}) {
    return StatusGetProjectResponse(
        status: (status != null ? status.value : this.status),
        result: (result != null ? result.value : this.result));
  }
}

@JsonSerializable(explicitToJson: true)
class StatusGetProjectResult {
  StatusGetProjectResult({
    this.projectPath,
    this.version,
  });

  factory StatusGetProjectResult.fromJson(Map<String, dynamic> json) =>
      _$StatusGetProjectResultFromJson(json);

  static const toJsonFactory = _$StatusGetProjectResultToJson;
  Map<String, dynamic> toJson() => _$StatusGetProjectResultToJson(this);

  @JsonKey(name: 'projectPath', includeIfNull: false)
  final String? projectPath;
  @JsonKey(name: 'version', includeIfNull: false)
  final StatusD3VersionInfo? version;
  static const fromJsonFactory = _$StatusGetProjectResultFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StatusGetProjectResult &&
            (identical(other.projectPath, projectPath) ||
                const DeepCollectionEquality()
                    .equals(other.projectPath, projectPath)) &&
            (identical(other.version, version) ||
                const DeepCollectionEquality().equals(other.version, version)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(projectPath) ^
      const DeepCollectionEquality().hash(version) ^
      runtimeType.hashCode;
}

extension $StatusGetProjectResultExtension on StatusGetProjectResult {
  StatusGetProjectResult copyWith(
      {String? projectPath, StatusD3VersionInfo? version}) {
    return StatusGetProjectResult(
        projectPath: projectPath ?? this.projectPath,
        version: version ?? this.version);
  }

  StatusGetProjectResult copyWithWrapped(
      {Wrapped<String?>? projectPath, Wrapped<StatusD3VersionInfo?>? version}) {
    return StatusGetProjectResult(
        projectPath:
            (projectPath != null ? projectPath.value : this.projectPath),
        version: (version != null ? version.value : this.version));
  }
}

@JsonSerializable(explicitToJson: true)
class StatusGetSessionResponse {
  StatusGetSessionResponse({
    this.status,
    this.result,
  });

  factory StatusGetSessionResponse.fromJson(Map<String, dynamic> json) =>
      _$StatusGetSessionResponseFromJson(json);

  static const toJsonFactory = _$StatusGetSessionResponseToJson;
  Map<String, dynamic> toJson() => _$StatusGetSessionResponseToJson(this);

  @JsonKey(name: 'status', includeIfNull: false)
  final RpcStatus? status;
  @JsonKey(name: 'result', includeIfNull: false)
  final StatusGetSessionResult? result;
  static const fromJsonFactory = _$StatusGetSessionResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StatusGetSessionResponse &&
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

extension $StatusGetSessionResponseExtension on StatusGetSessionResponse {
  StatusGetSessionResponse copyWith(
      {RpcStatus? status, StatusGetSessionResult? result}) {
    return StatusGetSessionResponse(
        status: status ?? this.status, result: result ?? this.result);
  }

  StatusGetSessionResponse copyWithWrapped(
      {Wrapped<RpcStatus?>? status, Wrapped<StatusGetSessionResult?>? result}) {
    return StatusGetSessionResponse(
        status: (status != null ? status.value : this.status),
        result: (result != null ? result.value : this.result));
  }
}

@JsonSerializable(explicitToJson: true)
class StatusGetSessionResult {
  StatusGetSessionResult({
    this.isRunningSolo,
    this.isDirectorDedicated,
    this.director,
    this.actors,
    this.understudies,
  });

  factory StatusGetSessionResult.fromJson(Map<String, dynamic> json) =>
      _$StatusGetSessionResultFromJson(json);

  static const toJsonFactory = _$StatusGetSessionResultToJson;
  Map<String, dynamic> toJson() => _$StatusGetSessionResultToJson(this);

  @JsonKey(name: 'isRunningSolo', includeIfNull: false)
  final bool? isRunningSolo;
  @JsonKey(name: 'isDirectorDedicated', includeIfNull: false)
  final bool? isDirectorDedicated;
  @JsonKey(name: 'director', includeIfNull: false)
  final StatusMachineInfo? director;
  @JsonKey(
      name: 'actors', includeIfNull: false, defaultValue: <StatusMachineInfo>[])
  final List<StatusMachineInfo>? actors;
  @JsonKey(
      name: 'understudies',
      includeIfNull: false,
      defaultValue: <StatusMachineInfo>[])
  final List<StatusMachineInfo>? understudies;
  static const fromJsonFactory = _$StatusGetSessionResultFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StatusGetSessionResult &&
            (identical(other.isRunningSolo, isRunningSolo) ||
                const DeepCollectionEquality()
                    .equals(other.isRunningSolo, isRunningSolo)) &&
            (identical(other.isDirectorDedicated, isDirectorDedicated) ||
                const DeepCollectionEquality()
                    .equals(other.isDirectorDedicated, isDirectorDedicated)) &&
            (identical(other.director, director) ||
                const DeepCollectionEquality()
                    .equals(other.director, director)) &&
            (identical(other.actors, actors) ||
                const DeepCollectionEquality().equals(other.actors, actors)) &&
            (identical(other.understudies, understudies) ||
                const DeepCollectionEquality()
                    .equals(other.understudies, understudies)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isRunningSolo) ^
      const DeepCollectionEquality().hash(isDirectorDedicated) ^
      const DeepCollectionEquality().hash(director) ^
      const DeepCollectionEquality().hash(actors) ^
      const DeepCollectionEquality().hash(understudies) ^
      runtimeType.hashCode;
}

extension $StatusGetSessionResultExtension on StatusGetSessionResult {
  StatusGetSessionResult copyWith(
      {bool? isRunningSolo,
      bool? isDirectorDedicated,
      StatusMachineInfo? director,
      List<StatusMachineInfo>? actors,
      List<StatusMachineInfo>? understudies}) {
    return StatusGetSessionResult(
        isRunningSolo: isRunningSolo ?? this.isRunningSolo,
        isDirectorDedicated: isDirectorDedicated ?? this.isDirectorDedicated,
        director: director ?? this.director,
        actors: actors ?? this.actors,
        understudies: understudies ?? this.understudies);
  }

  StatusGetSessionResult copyWithWrapped(
      {Wrapped<bool?>? isRunningSolo,
      Wrapped<bool?>? isDirectorDedicated,
      Wrapped<StatusMachineInfo?>? director,
      Wrapped<List<StatusMachineInfo>?>? actors,
      Wrapped<List<StatusMachineInfo>?>? understudies}) {
    return StatusGetSessionResult(
        isRunningSolo:
            (isRunningSolo != null ? isRunningSolo.value : this.isRunningSolo),
        isDirectorDedicated: (isDirectorDedicated != null
            ? isDirectorDedicated.value
            : this.isDirectorDedicated),
        director: (director != null ? director.value : this.director),
        actors: (actors != null ? actors.value : this.actors),
        understudies:
            (understudies != null ? understudies.value : this.understudies));
  }
}

@JsonSerializable(explicitToJson: true)
class StatusHealthReport {
  StatusHealthReport({
    this.machine,
    this.runningAsMachine,
    this.status,
  });

  factory StatusHealthReport.fromJson(Map<String, dynamic> json) =>
      _$StatusHealthReportFromJson(json);

  static const toJsonFactory = _$StatusHealthReportToJson;
  Map<String, dynamic> toJson() => _$StatusHealthReportToJson(this);

  @JsonKey(name: 'machine', includeIfNull: false)
  final Statusd3Machine? machine;
  @JsonKey(name: 'runningAsMachine', includeIfNull: false)
  final Statusd3Machine? runningAsMachine;
  @JsonKey(name: 'status', includeIfNull: false)
  final StatusHealthStatus? status;
  static const fromJsonFactory = _$StatusHealthReportFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StatusHealthReport &&
            (identical(other.machine, machine) ||
                const DeepCollectionEquality()
                    .equals(other.machine, machine)) &&
            (identical(other.runningAsMachine, runningAsMachine) ||
                const DeepCollectionEquality()
                    .equals(other.runningAsMachine, runningAsMachine)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(machine) ^
      const DeepCollectionEquality().hash(runningAsMachine) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $StatusHealthReportExtension on StatusHealthReport {
  StatusHealthReport copyWith(
      {Statusd3Machine? machine,
      Statusd3Machine? runningAsMachine,
      StatusHealthStatus? status}) {
    return StatusHealthReport(
        machine: machine ?? this.machine,
        runningAsMachine: runningAsMachine ?? this.runningAsMachine,
        status: status ?? this.status);
  }

  StatusHealthReport copyWithWrapped(
      {Wrapped<Statusd3Machine?>? machine,
      Wrapped<Statusd3Machine?>? runningAsMachine,
      Wrapped<StatusHealthStatus?>? status}) {
    return StatusHealthReport(
        machine: (machine != null ? machine.value : this.machine),
        runningAsMachine: (runningAsMachine != null
            ? runningAsMachine.value
            : this.runningAsMachine),
        status: (status != null ? status.value : this.status));
  }
}

@JsonSerializable(explicitToJson: true)
class StatusHealthStates {
  StatusHealthStates({
    this.name,
    this.detail,
    this.category,
    this.severity,
  });

  factory StatusHealthStates.fromJson(Map<String, dynamic> json) =>
      _$StatusHealthStatesFromJson(json);

  static const toJsonFactory = _$StatusHealthStatesToJson;
  Map<String, dynamic> toJson() => _$StatusHealthStatesToJson(this);

  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'detail', includeIfNull: false)
  final String? detail;
  @JsonKey(name: 'category', includeIfNull: false)
  final String? category;
  @JsonKey(name: 'severity', includeIfNull: false)
  final String? severity;
  static const fromJsonFactory = _$StatusHealthStatesFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StatusHealthStates &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.severity, severity) ||
                const DeepCollectionEquality()
                    .equals(other.severity, severity)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(detail) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(severity) ^
      runtimeType.hashCode;
}

extension $StatusHealthStatesExtension on StatusHealthStates {
  StatusHealthStates copyWith(
      {String? name, String? detail, String? category, String? severity}) {
    return StatusHealthStates(
        name: name ?? this.name,
        detail: detail ?? this.detail,
        category: category ?? this.category,
        severity: severity ?? this.severity);
  }

  StatusHealthStates copyWithWrapped(
      {Wrapped<String?>? name,
      Wrapped<String?>? detail,
      Wrapped<String?>? category,
      Wrapped<String?>? severity}) {
    return StatusHealthStates(
        name: (name != null ? name.value : this.name),
        detail: (detail != null ? detail.value : this.detail),
        category: (category != null ? category.value : this.category),
        severity: (severity != null ? severity.value : this.severity));
  }
}

@JsonSerializable(explicitToJson: true)
class StatusHealthStatus {
  StatusHealthStatus({
    this.averageFPS,
    this.videoDroppedFrames,
    this.videoMissedFrames,
    this.states,
  });

  factory StatusHealthStatus.fromJson(Map<String, dynamic> json) =>
      _$StatusHealthStatusFromJson(json);

  static const toJsonFactory = _$StatusHealthStatusToJson;
  Map<String, dynamic> toJson() => _$StatusHealthStatusToJson(this);

  @JsonKey(name: 'averageFPS', includeIfNull: false)
  final double? averageFPS;
  @JsonKey(name: 'videoDroppedFrames', includeIfNull: false)
  final double? videoDroppedFrames;
  @JsonKey(name: 'videoMissedFrames', includeIfNull: false)
  final double? videoMissedFrames;
  @JsonKey(
      name: 'states',
      includeIfNull: false,
      defaultValue: <StatusHealthStates>[])
  final List<StatusHealthStates>? states;
  static const fromJsonFactory = _$StatusHealthStatusFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StatusHealthStatus &&
            (identical(other.averageFPS, averageFPS) ||
                const DeepCollectionEquality()
                    .equals(other.averageFPS, averageFPS)) &&
            (identical(other.videoDroppedFrames, videoDroppedFrames) ||
                const DeepCollectionEquality()
                    .equals(other.videoDroppedFrames, videoDroppedFrames)) &&
            (identical(other.videoMissedFrames, videoMissedFrames) ||
                const DeepCollectionEquality()
                    .equals(other.videoMissedFrames, videoMissedFrames)) &&
            (identical(other.states, states) ||
                const DeepCollectionEquality().equals(other.states, states)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(averageFPS) ^
      const DeepCollectionEquality().hash(videoDroppedFrames) ^
      const DeepCollectionEquality().hash(videoMissedFrames) ^
      const DeepCollectionEquality().hash(states) ^
      runtimeType.hashCode;
}

extension $StatusHealthStatusExtension on StatusHealthStatus {
  StatusHealthStatus copyWith(
      {double? averageFPS,
      double? videoDroppedFrames,
      double? videoMissedFrames,
      List<StatusHealthStates>? states}) {
    return StatusHealthStatus(
        averageFPS: averageFPS ?? this.averageFPS,
        videoDroppedFrames: videoDroppedFrames ?? this.videoDroppedFrames,
        videoMissedFrames: videoMissedFrames ?? this.videoMissedFrames,
        states: states ?? this.states);
  }

  StatusHealthStatus copyWithWrapped(
      {Wrapped<double?>? averageFPS,
      Wrapped<double?>? videoDroppedFrames,
      Wrapped<double?>? videoMissedFrames,
      Wrapped<List<StatusHealthStates>?>? states}) {
    return StatusHealthStatus(
        averageFPS: (averageFPS != null ? averageFPS.value : this.averageFPS),
        videoDroppedFrames: (videoDroppedFrames != null
            ? videoDroppedFrames.value
            : this.videoDroppedFrames),
        videoMissedFrames: (videoMissedFrames != null
            ? videoMissedFrames.value
            : this.videoMissedFrames),
        states: (states != null ? states.value : this.states));
  }
}

@JsonSerializable(explicitToJson: true)
class StatusListHealthResponse {
  StatusListHealthResponse({
    this.status,
    this.result,
  });

  factory StatusListHealthResponse.fromJson(Map<String, dynamic> json) =>
      _$StatusListHealthResponseFromJson(json);

  static const toJsonFactory = _$StatusListHealthResponseToJson;
  Map<String, dynamic> toJson() => _$StatusListHealthResponseToJson(this);

  @JsonKey(name: 'status', includeIfNull: false)
  final RpcStatus? status;
  @JsonKey(
      name: 'result',
      includeIfNull: false,
      defaultValue: <StatusHealthReport>[])
  final List<StatusHealthReport>? result;
  static const fromJsonFactory = _$StatusListHealthResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StatusListHealthResponse &&
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

extension $StatusListHealthResponseExtension on StatusListHealthResponse {
  StatusListHealthResponse copyWith(
      {RpcStatus? status, List<StatusHealthReport>? result}) {
    return StatusListHealthResponse(
        status: status ?? this.status, result: result ?? this.result);
  }

  StatusListHealthResponse copyWithWrapped(
      {Wrapped<RpcStatus?>? status,
      Wrapped<List<StatusHealthReport>?>? result}) {
    return StatusListHealthResponse(
        status: (status != null ? status.value : this.status),
        result: (result != null ? result.value : this.result));
  }
}

@JsonSerializable(explicitToJson: true)
class StatusListNotificationsResponse {
  StatusListNotificationsResponse({
    this.status,
    this.result,
  });

  factory StatusListNotificationsResponse.fromJson(Map<String, dynamic> json) =>
      _$StatusListNotificationsResponseFromJson(json);

  static const toJsonFactory = _$StatusListNotificationsResponseToJson;
  Map<String, dynamic> toJson() =>
      _$StatusListNotificationsResponseToJson(this);

  @JsonKey(name: 'status', includeIfNull: false)
  final RpcStatus? status;
  @JsonKey(
      name: 'result',
      includeIfNull: false,
      defaultValue: <StatusNotificationsReport>[])
  final List<StatusNotificationsReport>? result;
  static const fromJsonFactory = _$StatusListNotificationsResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StatusListNotificationsResponse &&
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

extension $StatusListNotificationsResponseExtension
    on StatusListNotificationsResponse {
  StatusListNotificationsResponse copyWith(
      {RpcStatus? status, List<StatusNotificationsReport>? result}) {
    return StatusListNotificationsResponse(
        status: status ?? this.status, result: result ?? this.result);
  }

  StatusListNotificationsResponse copyWithWrapped(
      {Wrapped<RpcStatus?>? status,
      Wrapped<List<StatusNotificationsReport>?>? result}) {
    return StatusListNotificationsResponse(
        status: (status != null ? status.value : this.status),
        result: (result != null ? result.value : this.result));
  }
}

@JsonSerializable(explicitToJson: true)
class StatusMachineInfo {
  StatusMachineInfo({
    this.uid,
    this.name,
    this.hostname,
    this.type,
  });

  factory StatusMachineInfo.fromJson(Map<String, dynamic> json) =>
      _$StatusMachineInfoFromJson(json);

  static const toJsonFactory = _$StatusMachineInfoToJson;
  Map<String, dynamic> toJson() => _$StatusMachineInfoToJson(this);

  @JsonKey(name: 'uid', includeIfNull: false)
  final String? uid;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'hostname', includeIfNull: false)
  final String? hostname;
  @JsonKey(
    name: 'type',
    includeIfNull: false,
    toJson: machineInfoMachineTypeToJson,
    fromJson: machineInfoMachineTypeFromJson,
  )
  final enums.MachineInfoMachineType? type;
  static const fromJsonFactory = _$StatusMachineInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StatusMachineInfo &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.hostname, hostname) ||
                const DeepCollectionEquality()
                    .equals(other.hostname, hostname)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(hostname) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $StatusMachineInfoExtension on StatusMachineInfo {
  StatusMachineInfo copyWith(
      {String? uid,
      String? name,
      String? hostname,
      enums.MachineInfoMachineType? type}) {
    return StatusMachineInfo(
        uid: uid ?? this.uid,
        name: name ?? this.name,
        hostname: hostname ?? this.hostname,
        type: type ?? this.type);
  }

  StatusMachineInfo copyWithWrapped(
      {Wrapped<String?>? uid,
      Wrapped<String?>? name,
      Wrapped<String?>? hostname,
      Wrapped<enums.MachineInfoMachineType?>? type}) {
    return StatusMachineInfo(
        uid: (uid != null ? uid.value : this.uid),
        name: (name != null ? name.value : this.name),
        hostname: (hostname != null ? hostname.value : this.hostname),
        type: (type != null ? type.value : this.type));
  }
}

@JsonSerializable(explicitToJson: true)
class StatusNotification {
  StatusNotification({
    this.summary,
    this.detail,
  });

  factory StatusNotification.fromJson(Map<String, dynamic> json) =>
      _$StatusNotificationFromJson(json);

  static const toJsonFactory = _$StatusNotificationToJson;
  Map<String, dynamic> toJson() => _$StatusNotificationToJson(this);

  @JsonKey(name: 'summary', includeIfNull: false)
  final String? summary;
  @JsonKey(name: 'detail', includeIfNull: false)
  final String? detail;
  static const fromJsonFactory = _$StatusNotificationFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StatusNotification &&
            (identical(other.summary, summary) ||
                const DeepCollectionEquality()
                    .equals(other.summary, summary)) &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(summary) ^
      const DeepCollectionEquality().hash(detail) ^
      runtimeType.hashCode;
}

extension $StatusNotificationExtension on StatusNotification {
  StatusNotification copyWith({String? summary, String? detail}) {
    return StatusNotification(
        summary: summary ?? this.summary, detail: detail ?? this.detail);
  }

  StatusNotification copyWithWrapped(
      {Wrapped<String?>? summary, Wrapped<String?>? detail}) {
    return StatusNotification(
        summary: (summary != null ? summary.value : this.summary),
        detail: (detail != null ? detail.value : this.detail));
  }
}

@JsonSerializable(explicitToJson: true)
class StatusNotificationsReport {
  StatusNotificationsReport({
    this.machine,
    this.notifications,
  });

  factory StatusNotificationsReport.fromJson(Map<String, dynamic> json) =>
      _$StatusNotificationsReportFromJson(json);

  static const toJsonFactory = _$StatusNotificationsReportToJson;
  Map<String, dynamic> toJson() => _$StatusNotificationsReportToJson(this);

  @JsonKey(name: 'machine', includeIfNull: false)
  final Statusd3Machine? machine;
  @JsonKey(
      name: 'notifications',
      includeIfNull: false,
      defaultValue: <StatusNotification>[])
  final List<StatusNotification>? notifications;
  static const fromJsonFactory = _$StatusNotificationsReportFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StatusNotificationsReport &&
            (identical(other.machine, machine) ||
                const DeepCollectionEquality()
                    .equals(other.machine, machine)) &&
            (identical(other.notifications, notifications) ||
                const DeepCollectionEquality()
                    .equals(other.notifications, notifications)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(machine) ^
      const DeepCollectionEquality().hash(notifications) ^
      runtimeType.hashCode;
}

extension $StatusNotificationsReportExtension on StatusNotificationsReport {
  StatusNotificationsReport copyWith(
      {Statusd3Machine? machine, List<StatusNotification>? notifications}) {
    return StatusNotificationsReport(
        machine: machine ?? this.machine,
        notifications: notifications ?? this.notifications);
  }

  StatusNotificationsReport copyWithWrapped(
      {Wrapped<Statusd3Machine?>? machine,
      Wrapped<List<StatusNotification>?>? notifications}) {
    return StatusNotificationsReport(
        machine: (machine != null ? machine.value : this.machine),
        notifications:
            (notifications != null ? notifications.value : this.notifications));
  }
}

@JsonSerializable(explicitToJson: true)
class Statusd3Machine {
  Statusd3Machine({
    this.uid,
    this.name,
    this.hostname,
  });

  factory Statusd3Machine.fromJson(Map<String, dynamic> json) =>
      _$Statusd3MachineFromJson(json);

  static const toJsonFactory = _$Statusd3MachineToJson;
  Map<String, dynamic> toJson() => _$Statusd3MachineToJson(this);

  @JsonKey(name: 'uid', includeIfNull: false)
  final String? uid;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'hostname', includeIfNull: false)
  final String? hostname;
  static const fromJsonFactory = _$Statusd3MachineFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Statusd3Machine &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.hostname, hostname) ||
                const DeepCollectionEquality()
                    .equals(other.hostname, hostname)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(hostname) ^
      runtimeType.hashCode;
}

extension $Statusd3MachineExtension on Statusd3Machine {
  Statusd3Machine copyWith({String? uid, String? name, String? hostname}) {
    return Statusd3Machine(
        uid: uid ?? this.uid,
        name: name ?? this.name,
        hostname: hostname ?? this.hostname);
  }

  Statusd3Machine copyWithWrapped(
      {Wrapped<String?>? uid,
      Wrapped<String?>? name,
      Wrapped<String?>? hostname}) {
    return Statusd3Machine(
        uid: (uid != null ? uid.value : this.uid),
        name: (name != null ? name.value : this.name),
        hostname: (hostname != null ? hostname.value : this.hostname));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportAnnotationInfo {
  TransportAnnotationInfo({
    this.notes,
    this.tags,
    this.sections,
  });

  factory TransportAnnotationInfo.fromJson(Map<String, dynamic> json) =>
      _$TransportAnnotationInfoFromJson(json);

  static const toJsonFactory = _$TransportAnnotationInfoToJson;
  Map<String, dynamic> toJson() => _$TransportAnnotationInfoToJson(this);

  @JsonKey(
      name: 'notes', includeIfNull: false, defaultValue: <TransportNoteInfo>[])
  final List<TransportNoteInfo>? notes;
  @JsonKey(
      name: 'tags', includeIfNull: false, defaultValue: <TransportTagInfo>[])
  final List<TransportTagInfo>? tags;
  @JsonKey(
      name: 'sections',
      includeIfNull: false,
      defaultValue: <TransportSectionInfo>[])
  final List<TransportSectionInfo>? sections;
  static const fromJsonFactory = _$TransportAnnotationInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportAnnotationInfo &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.sections, sections) ||
                const DeepCollectionEquality()
                    .equals(other.sections, sections)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(sections) ^
      runtimeType.hashCode;
}

extension $TransportAnnotationInfoExtension on TransportAnnotationInfo {
  TransportAnnotationInfo copyWith(
      {List<TransportNoteInfo>? notes,
      List<TransportTagInfo>? tags,
      List<TransportSectionInfo>? sections}) {
    return TransportAnnotationInfo(
        notes: notes ?? this.notes,
        tags: tags ?? this.tags,
        sections: sections ?? this.sections);
  }

  TransportAnnotationInfo copyWithWrapped(
      {Wrapped<List<TransportNoteInfo>?>? notes,
      Wrapped<List<TransportTagInfo>?>? tags,
      Wrapped<List<TransportSectionInfo>?>? sections}) {
    return TransportAnnotationInfo(
        notes: (notes != null ? notes.value : this.notes),
        tags: (tags != null ? tags.value : this.tags),
        sections: (sections != null ? sections.value : this.sections));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportGetActiveTransportResponse {
  TransportGetActiveTransportResponse({
    this.status,
    this.result,
  });

  factory TransportGetActiveTransportResponse.fromJson(
          Map<String, dynamic> json) =>
      _$TransportGetActiveTransportResponseFromJson(json);

  static const toJsonFactory = _$TransportGetActiveTransportResponseToJson;
  Map<String, dynamic> toJson() =>
      _$TransportGetActiveTransportResponseToJson(this);

  @JsonKey(name: 'status', includeIfNull: false)
  final RpcStatus? status;
  @JsonKey(
      name: 'result',
      includeIfNull: false,
      defaultValue: <TransportTransportInfo>[])
  final List<TransportTransportInfo>? result;
  static const fromJsonFactory = _$TransportGetActiveTransportResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportGetActiveTransportResponse &&
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

extension $TransportGetActiveTransportResponseExtension
    on TransportGetActiveTransportResponse {
  TransportGetActiveTransportResponse copyWith(
      {RpcStatus? status, List<TransportTransportInfo>? result}) {
    return TransportGetActiveTransportResponse(
        status: status ?? this.status, result: result ?? this.result);
  }

  TransportGetActiveTransportResponse copyWithWrapped(
      {Wrapped<RpcStatus?>? status,
      Wrapped<List<TransportTransportInfo>?>? result}) {
    return TransportGetActiveTransportResponse(
        status: (status != null ? status.value : this.status),
        result: (result != null ? result.value : this.result));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportGoToFrameInfo {
  TransportGoToFrameInfo({
    this.transport,
    this.frame,
    this.playmode,
  });

  factory TransportGoToFrameInfo.fromJson(Map<String, dynamic> json) =>
      _$TransportGoToFrameInfoFromJson(json);

  static const toJsonFactory = _$TransportGoToFrameInfoToJson;
  Map<String, dynamic> toJson() => _$TransportGoToFrameInfoToJson(this);

  @JsonKey(name: 'transport', includeIfNull: false)
  final D3apiLocator? transport;
  @JsonKey(name: 'frame', includeIfNull: false)
  final int? frame;
  @JsonKey(
    name: 'playmode',
    includeIfNull: false,
    toJson: transportAPIPlayModeToJson,
    fromJson: transportAPIPlayModeFromJson,
  )
  final enums.TransportAPIPlayMode? playmode;
  static const fromJsonFactory = _$TransportGoToFrameInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportGoToFrameInfo &&
            (identical(other.transport, transport) ||
                const DeepCollectionEquality()
                    .equals(other.transport, transport)) &&
            (identical(other.frame, frame) ||
                const DeepCollectionEquality().equals(other.frame, frame)) &&
            (identical(other.playmode, playmode) ||
                const DeepCollectionEquality()
                    .equals(other.playmode, playmode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transport) ^
      const DeepCollectionEquality().hash(frame) ^
      const DeepCollectionEquality().hash(playmode) ^
      runtimeType.hashCode;
}

extension $TransportGoToFrameInfoExtension on TransportGoToFrameInfo {
  TransportGoToFrameInfo copyWith(
      {D3apiLocator? transport,
      int? frame,
      enums.TransportAPIPlayMode? playmode}) {
    return TransportGoToFrameInfo(
        transport: transport ?? this.transport,
        frame: frame ?? this.frame,
        playmode: playmode ?? this.playmode);
  }

  TransportGoToFrameInfo copyWithWrapped(
      {Wrapped<D3apiLocator?>? transport,
      Wrapped<int?>? frame,
      Wrapped<enums.TransportAPIPlayMode?>? playmode}) {
    return TransportGoToFrameInfo(
        transport: (transport != null ? transport.value : this.transport),
        frame: (frame != null ? frame.value : this.frame),
        playmode: (playmode != null ? playmode.value : this.playmode));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportGoToFrameRequest {
  TransportGoToFrameRequest({
    this.transports,
  });

  factory TransportGoToFrameRequest.fromJson(Map<String, dynamic> json) =>
      _$TransportGoToFrameRequestFromJson(json);

  static const toJsonFactory = _$TransportGoToFrameRequestToJson;
  Map<String, dynamic> toJson() => _$TransportGoToFrameRequestToJson(this);

  @JsonKey(
      name: 'transports',
      includeIfNull: false,
      defaultValue: <TransportGoToFrameInfo>[])
  final List<TransportGoToFrameInfo>? transports;
  static const fromJsonFactory = _$TransportGoToFrameRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportGoToFrameRequest &&
            (identical(other.transports, transports) ||
                const DeepCollectionEquality()
                    .equals(other.transports, transports)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transports) ^ runtimeType.hashCode;
}

extension $TransportGoToFrameRequestExtension on TransportGoToFrameRequest {
  TransportGoToFrameRequest copyWith(
      {List<TransportGoToFrameInfo>? transports}) {
    return TransportGoToFrameRequest(transports: transports ?? this.transports);
  }

  TransportGoToFrameRequest copyWithWrapped(
      {Wrapped<List<TransportGoToFrameInfo>?>? transports}) {
    return TransportGoToFrameRequest(
        transports: (transports != null ? transports.value : this.transports));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportGoToNextPrevInfo {
  TransportGoToNextPrevInfo({
    this.transport,
    this.playmode,
  });

  factory TransportGoToNextPrevInfo.fromJson(Map<String, dynamic> json) =>
      _$TransportGoToNextPrevInfoFromJson(json);

  static const toJsonFactory = _$TransportGoToNextPrevInfoToJson;
  Map<String, dynamic> toJson() => _$TransportGoToNextPrevInfoToJson(this);

  @JsonKey(name: 'transport', includeIfNull: false)
  final D3apiLocator? transport;
  @JsonKey(
    name: 'playmode',
    includeIfNull: false,
    toJson: transportAPIPlayModeToJson,
    fromJson: transportAPIPlayModeFromJson,
  )
  final enums.TransportAPIPlayMode? playmode;
  static const fromJsonFactory = _$TransportGoToNextPrevInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportGoToNextPrevInfo &&
            (identical(other.transport, transport) ||
                const DeepCollectionEquality()
                    .equals(other.transport, transport)) &&
            (identical(other.playmode, playmode) ||
                const DeepCollectionEquality()
                    .equals(other.playmode, playmode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transport) ^
      const DeepCollectionEquality().hash(playmode) ^
      runtimeType.hashCode;
}

extension $TransportGoToNextPrevInfoExtension on TransportGoToNextPrevInfo {
  TransportGoToNextPrevInfo copyWith(
      {D3apiLocator? transport, enums.TransportAPIPlayMode? playmode}) {
    return TransportGoToNextPrevInfo(
        transport: transport ?? this.transport,
        playmode: playmode ?? this.playmode);
  }

  TransportGoToNextPrevInfo copyWithWrapped(
      {Wrapped<D3apiLocator?>? transport,
      Wrapped<enums.TransportAPIPlayMode?>? playmode}) {
    return TransportGoToNextPrevInfo(
        transport: (transport != null ? transport.value : this.transport),
        playmode: (playmode != null ? playmode.value : this.playmode));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportGoToNextSectionRequest {
  TransportGoToNextSectionRequest({
    this.transports,
  });

  factory TransportGoToNextSectionRequest.fromJson(Map<String, dynamic> json) =>
      _$TransportGoToNextSectionRequestFromJson(json);

  static const toJsonFactory = _$TransportGoToNextSectionRequestToJson;
  Map<String, dynamic> toJson() =>
      _$TransportGoToNextSectionRequestToJson(this);

  @JsonKey(
      name: 'transports',
      includeIfNull: false,
      defaultValue: <TransportGoToNextPrevInfo>[])
  final List<TransportGoToNextPrevInfo>? transports;
  static const fromJsonFactory = _$TransportGoToNextSectionRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportGoToNextSectionRequest &&
            (identical(other.transports, transports) ||
                const DeepCollectionEquality()
                    .equals(other.transports, transports)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transports) ^ runtimeType.hashCode;
}

extension $TransportGoToNextSectionRequestExtension
    on TransportGoToNextSectionRequest {
  TransportGoToNextSectionRequest copyWith(
      {List<TransportGoToNextPrevInfo>? transports}) {
    return TransportGoToNextSectionRequest(
        transports: transports ?? this.transports);
  }

  TransportGoToNextSectionRequest copyWithWrapped(
      {Wrapped<List<TransportGoToNextPrevInfo>?>? transports}) {
    return TransportGoToNextSectionRequest(
        transports: (transports != null ? transports.value : this.transports));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportGoToNextTrackRequest {
  TransportGoToNextTrackRequest({
    this.transports,
  });

  factory TransportGoToNextTrackRequest.fromJson(Map<String, dynamic> json) =>
      _$TransportGoToNextTrackRequestFromJson(json);

  static const toJsonFactory = _$TransportGoToNextTrackRequestToJson;
  Map<String, dynamic> toJson() => _$TransportGoToNextTrackRequestToJson(this);

  @JsonKey(
      name: 'transports',
      includeIfNull: false,
      defaultValue: <TransportGoToNextPrevInfo>[])
  final List<TransportGoToNextPrevInfo>? transports;
  static const fromJsonFactory = _$TransportGoToNextTrackRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportGoToNextTrackRequest &&
            (identical(other.transports, transports) ||
                const DeepCollectionEquality()
                    .equals(other.transports, transports)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transports) ^ runtimeType.hashCode;
}

extension $TransportGoToNextTrackRequestExtension
    on TransportGoToNextTrackRequest {
  TransportGoToNextTrackRequest copyWith(
      {List<TransportGoToNextPrevInfo>? transports}) {
    return TransportGoToNextTrackRequest(
        transports: transports ?? this.transports);
  }

  TransportGoToNextTrackRequest copyWithWrapped(
      {Wrapped<List<TransportGoToNextPrevInfo>?>? transports}) {
    return TransportGoToNextTrackRequest(
        transports: (transports != null ? transports.value : this.transports));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportGoToNoteRequest {
  TransportGoToNoteRequest({
    this.transports,
  });

  factory TransportGoToNoteRequest.fromJson(Map<String, dynamic> json) =>
      _$TransportGoToNoteRequestFromJson(json);

  static const toJsonFactory = _$TransportGoToNoteRequestToJson;
  Map<String, dynamic> toJson() => _$TransportGoToNoteRequestToJson(this);

  @JsonKey(
      name: 'transports',
      includeIfNull: false,
      defaultValue: <TransportGotoNoteInfo>[])
  final List<TransportGotoNoteInfo>? transports;
  static const fromJsonFactory = _$TransportGoToNoteRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportGoToNoteRequest &&
            (identical(other.transports, transports) ||
                const DeepCollectionEquality()
                    .equals(other.transports, transports)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transports) ^ runtimeType.hashCode;
}

extension $TransportGoToNoteRequestExtension on TransportGoToNoteRequest {
  TransportGoToNoteRequest copyWith({List<TransportGotoNoteInfo>? transports}) {
    return TransportGoToNoteRequest(transports: transports ?? this.transports);
  }

  TransportGoToNoteRequest copyWithWrapped(
      {Wrapped<List<TransportGotoNoteInfo>?>? transports}) {
    return TransportGoToNoteRequest(
        transports: (transports != null ? transports.value : this.transports));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportGoToPrevSectionRequest {
  TransportGoToPrevSectionRequest({
    this.transports,
  });

  factory TransportGoToPrevSectionRequest.fromJson(Map<String, dynamic> json) =>
      _$TransportGoToPrevSectionRequestFromJson(json);

  static const toJsonFactory = _$TransportGoToPrevSectionRequestToJson;
  Map<String, dynamic> toJson() =>
      _$TransportGoToPrevSectionRequestToJson(this);

  @JsonKey(
      name: 'transports',
      includeIfNull: false,
      defaultValue: <TransportGoToNextPrevInfo>[])
  final List<TransportGoToNextPrevInfo>? transports;
  static const fromJsonFactory = _$TransportGoToPrevSectionRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportGoToPrevSectionRequest &&
            (identical(other.transports, transports) ||
                const DeepCollectionEquality()
                    .equals(other.transports, transports)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transports) ^ runtimeType.hashCode;
}

extension $TransportGoToPrevSectionRequestExtension
    on TransportGoToPrevSectionRequest {
  TransportGoToPrevSectionRequest copyWith(
      {List<TransportGoToNextPrevInfo>? transports}) {
    return TransportGoToPrevSectionRequest(
        transports: transports ?? this.transports);
  }

  TransportGoToPrevSectionRequest copyWithWrapped(
      {Wrapped<List<TransportGoToNextPrevInfo>?>? transports}) {
    return TransportGoToPrevSectionRequest(
        transports: (transports != null ? transports.value : this.transports));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportGoToPrevTrackRequest {
  TransportGoToPrevTrackRequest({
    this.transports,
  });

  factory TransportGoToPrevTrackRequest.fromJson(Map<String, dynamic> json) =>
      _$TransportGoToPrevTrackRequestFromJson(json);

  static const toJsonFactory = _$TransportGoToPrevTrackRequestToJson;
  Map<String, dynamic> toJson() => _$TransportGoToPrevTrackRequestToJson(this);

  @JsonKey(
      name: 'transports',
      includeIfNull: false,
      defaultValue: <TransportGoToNextPrevInfo>[])
  final List<TransportGoToNextPrevInfo>? transports;
  static const fromJsonFactory = _$TransportGoToPrevTrackRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportGoToPrevTrackRequest &&
            (identical(other.transports, transports) ||
                const DeepCollectionEquality()
                    .equals(other.transports, transports)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transports) ^ runtimeType.hashCode;
}

extension $TransportGoToPrevTrackRequestExtension
    on TransportGoToPrevTrackRequest {
  TransportGoToPrevTrackRequest copyWith(
      {List<TransportGoToNextPrevInfo>? transports}) {
    return TransportGoToPrevTrackRequest(
        transports: transports ?? this.transports);
  }

  TransportGoToPrevTrackRequest copyWithWrapped(
      {Wrapped<List<TransportGoToNextPrevInfo>?>? transports}) {
    return TransportGoToPrevTrackRequest(
        transports: (transports != null ? transports.value : this.transports));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportGoToSectionInfo {
  TransportGoToSectionInfo({
    this.transport,
    this.section,
    this.playmode,
  });

  factory TransportGoToSectionInfo.fromJson(Map<String, dynamic> json) =>
      _$TransportGoToSectionInfoFromJson(json);

  static const toJsonFactory = _$TransportGoToSectionInfoToJson;
  Map<String, dynamic> toJson() => _$TransportGoToSectionInfoToJson(this);

  @JsonKey(name: 'transport', includeIfNull: false)
  final D3apiLocator? transport;
  @JsonKey(name: 'section', includeIfNull: false)
  final String? section;
  @JsonKey(
    name: 'playmode',
    includeIfNull: false,
    toJson: transportAPIPlayModeToJson,
    fromJson: transportAPIPlayModeFromJson,
  )
  final enums.TransportAPIPlayMode? playmode;
  static const fromJsonFactory = _$TransportGoToSectionInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportGoToSectionInfo &&
            (identical(other.transport, transport) ||
                const DeepCollectionEquality()
                    .equals(other.transport, transport)) &&
            (identical(other.section, section) ||
                const DeepCollectionEquality()
                    .equals(other.section, section)) &&
            (identical(other.playmode, playmode) ||
                const DeepCollectionEquality()
                    .equals(other.playmode, playmode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transport) ^
      const DeepCollectionEquality().hash(section) ^
      const DeepCollectionEquality().hash(playmode) ^
      runtimeType.hashCode;
}

extension $TransportGoToSectionInfoExtension on TransportGoToSectionInfo {
  TransportGoToSectionInfo copyWith(
      {D3apiLocator? transport,
      String? section,
      enums.TransportAPIPlayMode? playmode}) {
    return TransportGoToSectionInfo(
        transport: transport ?? this.transport,
        section: section ?? this.section,
        playmode: playmode ?? this.playmode);
  }

  TransportGoToSectionInfo copyWithWrapped(
      {Wrapped<D3apiLocator?>? transport,
      Wrapped<String?>? section,
      Wrapped<enums.TransportAPIPlayMode?>? playmode}) {
    return TransportGoToSectionInfo(
        transport: (transport != null ? transport.value : this.transport),
        section: (section != null ? section.value : this.section),
        playmode: (playmode != null ? playmode.value : this.playmode));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportGoToSectionRequest {
  TransportGoToSectionRequest({
    this.transports,
  });

  factory TransportGoToSectionRequest.fromJson(Map<String, dynamic> json) =>
      _$TransportGoToSectionRequestFromJson(json);

  static const toJsonFactory = _$TransportGoToSectionRequestToJson;
  Map<String, dynamic> toJson() => _$TransportGoToSectionRequestToJson(this);

  @JsonKey(
      name: 'transports',
      includeIfNull: false,
      defaultValue: <TransportGoToSectionInfo>[])
  final List<TransportGoToSectionInfo>? transports;
  static const fromJsonFactory = _$TransportGoToSectionRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportGoToSectionRequest &&
            (identical(other.transports, transports) ||
                const DeepCollectionEquality()
                    .equals(other.transports, transports)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transports) ^ runtimeType.hashCode;
}

extension $TransportGoToSectionRequestExtension on TransportGoToSectionRequest {
  TransportGoToSectionRequest copyWith(
      {List<TransportGoToSectionInfo>? transports}) {
    return TransportGoToSectionRequest(
        transports: transports ?? this.transports);
  }

  TransportGoToSectionRequest copyWithWrapped(
      {Wrapped<List<TransportGoToSectionInfo>?>? transports}) {
    return TransportGoToSectionRequest(
        transports: (transports != null ? transports.value : this.transports));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportGoToTagInfo {
  TransportGoToTagInfo({
    this.transport,
    this.type,
    this.value,
    this.allowGlobalJump,
    this.playmode,
  });

  factory TransportGoToTagInfo.fromJson(Map<String, dynamic> json) =>
      _$TransportGoToTagInfoFromJson(json);

  static const toJsonFactory = _$TransportGoToTagInfoToJson;
  Map<String, dynamic> toJson() => _$TransportGoToTagInfoToJson(this);

  @JsonKey(name: 'transport', includeIfNull: false)
  final D3apiLocator? transport;
  @JsonKey(
    name: 'type',
    includeIfNull: false,
    toJson: transportTagTypeToJson,
    fromJson: transportTagTypeFromJson,
  )
  final enums.TransportTagType? type;
  @JsonKey(name: 'value', includeIfNull: false)
  final String? value;
  @JsonKey(name: 'allowGlobalJump', includeIfNull: false)
  final bool? allowGlobalJump;
  @JsonKey(
    name: 'playmode',
    includeIfNull: false,
    toJson: transportAPIPlayModeToJson,
    fromJson: transportAPIPlayModeFromJson,
  )
  final enums.TransportAPIPlayMode? playmode;
  static const fromJsonFactory = _$TransportGoToTagInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportGoToTagInfo &&
            (identical(other.transport, transport) ||
                const DeepCollectionEquality()
                    .equals(other.transport, transport)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.allowGlobalJump, allowGlobalJump) ||
                const DeepCollectionEquality()
                    .equals(other.allowGlobalJump, allowGlobalJump)) &&
            (identical(other.playmode, playmode) ||
                const DeepCollectionEquality()
                    .equals(other.playmode, playmode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transport) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(allowGlobalJump) ^
      const DeepCollectionEquality().hash(playmode) ^
      runtimeType.hashCode;
}

extension $TransportGoToTagInfoExtension on TransportGoToTagInfo {
  TransportGoToTagInfo copyWith(
      {D3apiLocator? transport,
      enums.TransportTagType? type,
      String? value,
      bool? allowGlobalJump,
      enums.TransportAPIPlayMode? playmode}) {
    return TransportGoToTagInfo(
        transport: transport ?? this.transport,
        type: type ?? this.type,
        value: value ?? this.value,
        allowGlobalJump: allowGlobalJump ?? this.allowGlobalJump,
        playmode: playmode ?? this.playmode);
  }

  TransportGoToTagInfo copyWithWrapped(
      {Wrapped<D3apiLocator?>? transport,
      Wrapped<enums.TransportTagType?>? type,
      Wrapped<String?>? value,
      Wrapped<bool?>? allowGlobalJump,
      Wrapped<enums.TransportAPIPlayMode?>? playmode}) {
    return TransportGoToTagInfo(
        transport: (transport != null ? transport.value : this.transport),
        type: (type != null ? type.value : this.type),
        value: (value != null ? value.value : this.value),
        allowGlobalJump: (allowGlobalJump != null
            ? allowGlobalJump.value
            : this.allowGlobalJump),
        playmode: (playmode != null ? playmode.value : this.playmode));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportGoToTagRequest {
  TransportGoToTagRequest({
    this.transports,
  });

  factory TransportGoToTagRequest.fromJson(Map<String, dynamic> json) =>
      _$TransportGoToTagRequestFromJson(json);

  static const toJsonFactory = _$TransportGoToTagRequestToJson;
  Map<String, dynamic> toJson() => _$TransportGoToTagRequestToJson(this);

  @JsonKey(
      name: 'transports',
      includeIfNull: false,
      defaultValue: <TransportGoToTagInfo>[])
  final List<TransportGoToTagInfo>? transports;
  static const fromJsonFactory = _$TransportGoToTagRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportGoToTagRequest &&
            (identical(other.transports, transports) ||
                const DeepCollectionEquality()
                    .equals(other.transports, transports)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transports) ^ runtimeType.hashCode;
}

extension $TransportGoToTagRequestExtension on TransportGoToTagRequest {
  TransportGoToTagRequest copyWith({List<TransportGoToTagInfo>? transports}) {
    return TransportGoToTagRequest(transports: transports ?? this.transports);
  }

  TransportGoToTagRequest copyWithWrapped(
      {Wrapped<List<TransportGoToTagInfo>?>? transports}) {
    return TransportGoToTagRequest(
        transports: (transports != null ? transports.value : this.transports));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportGoToTimeCodeInfo {
  TransportGoToTimeCodeInfo({
    this.transport,
    this.timecode,
    this.ignoreTags,
    this.playmode,
  });

  factory TransportGoToTimeCodeInfo.fromJson(Map<String, dynamic> json) =>
      _$TransportGoToTimeCodeInfoFromJson(json);

  static const toJsonFactory = _$TransportGoToTimeCodeInfoToJson;
  Map<String, dynamic> toJson() => _$TransportGoToTimeCodeInfoToJson(this);

  @JsonKey(name: 'transport', includeIfNull: false)
  final D3apiLocator? transport;
  @JsonKey(name: 'timecode', includeIfNull: false)
  final String? timecode;
  @JsonKey(name: 'ignoreTags', includeIfNull: false)
  final bool? ignoreTags;
  @JsonKey(
    name: 'playmode',
    includeIfNull: false,
    toJson: transportAPIPlayModeToJson,
    fromJson: transportAPIPlayModeFromJson,
  )
  final enums.TransportAPIPlayMode? playmode;
  static const fromJsonFactory = _$TransportGoToTimeCodeInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportGoToTimeCodeInfo &&
            (identical(other.transport, transport) ||
                const DeepCollectionEquality()
                    .equals(other.transport, transport)) &&
            (identical(other.timecode, timecode) ||
                const DeepCollectionEquality()
                    .equals(other.timecode, timecode)) &&
            (identical(other.ignoreTags, ignoreTags) ||
                const DeepCollectionEquality()
                    .equals(other.ignoreTags, ignoreTags)) &&
            (identical(other.playmode, playmode) ||
                const DeepCollectionEquality()
                    .equals(other.playmode, playmode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transport) ^
      const DeepCollectionEquality().hash(timecode) ^
      const DeepCollectionEquality().hash(ignoreTags) ^
      const DeepCollectionEquality().hash(playmode) ^
      runtimeType.hashCode;
}

extension $TransportGoToTimeCodeInfoExtension on TransportGoToTimeCodeInfo {
  TransportGoToTimeCodeInfo copyWith(
      {D3apiLocator? transport,
      String? timecode,
      bool? ignoreTags,
      enums.TransportAPIPlayMode? playmode}) {
    return TransportGoToTimeCodeInfo(
        transport: transport ?? this.transport,
        timecode: timecode ?? this.timecode,
        ignoreTags: ignoreTags ?? this.ignoreTags,
        playmode: playmode ?? this.playmode);
  }

  TransportGoToTimeCodeInfo copyWithWrapped(
      {Wrapped<D3apiLocator?>? transport,
      Wrapped<String?>? timecode,
      Wrapped<bool?>? ignoreTags,
      Wrapped<enums.TransportAPIPlayMode?>? playmode}) {
    return TransportGoToTimeCodeInfo(
        transport: (transport != null ? transport.value : this.transport),
        timecode: (timecode != null ? timecode.value : this.timecode),
        ignoreTags: (ignoreTags != null ? ignoreTags.value : this.ignoreTags),
        playmode: (playmode != null ? playmode.value : this.playmode));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportGoToTimeCodeRequest {
  TransportGoToTimeCodeRequest({
    this.transports,
  });

  factory TransportGoToTimeCodeRequest.fromJson(Map<String, dynamic> json) =>
      _$TransportGoToTimeCodeRequestFromJson(json);

  static const toJsonFactory = _$TransportGoToTimeCodeRequestToJson;
  Map<String, dynamic> toJson() => _$TransportGoToTimeCodeRequestToJson(this);

  @JsonKey(
      name: 'transports',
      includeIfNull: false,
      defaultValue: <TransportGoToTimeCodeInfo>[])
  final List<TransportGoToTimeCodeInfo>? transports;
  static const fromJsonFactory = _$TransportGoToTimeCodeRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportGoToTimeCodeRequest &&
            (identical(other.transports, transports) ||
                const DeepCollectionEquality()
                    .equals(other.transports, transports)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transports) ^ runtimeType.hashCode;
}

extension $TransportGoToTimeCodeRequestExtension
    on TransportGoToTimeCodeRequest {
  TransportGoToTimeCodeRequest copyWith(
      {List<TransportGoToTimeCodeInfo>? transports}) {
    return TransportGoToTimeCodeRequest(
        transports: transports ?? this.transports);
  }

  TransportGoToTimeCodeRequest copyWithWrapped(
      {Wrapped<List<TransportGoToTimeCodeInfo>?>? transports}) {
    return TransportGoToTimeCodeRequest(
        transports: (transports != null ? transports.value : this.transports));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportGoToTimeInfo {
  TransportGoToTimeInfo({
    this.transport,
    this.time,
    this.playmode,
  });

  factory TransportGoToTimeInfo.fromJson(Map<String, dynamic> json) =>
      _$TransportGoToTimeInfoFromJson(json);

  static const toJsonFactory = _$TransportGoToTimeInfoToJson;
  Map<String, dynamic> toJson() => _$TransportGoToTimeInfoToJson(this);

  @JsonKey(name: 'transport', includeIfNull: false)
  final D3apiLocator? transport;
  @JsonKey(name: 'time', includeIfNull: false)
  final double? time;
  @JsonKey(
    name: 'playmode',
    includeIfNull: false,
    toJson: transportAPIPlayModeToJson,
    fromJson: transportAPIPlayModeFromJson,
  )
  final enums.TransportAPIPlayMode? playmode;
  static const fromJsonFactory = _$TransportGoToTimeInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportGoToTimeInfo &&
            (identical(other.transport, transport) ||
                const DeepCollectionEquality()
                    .equals(other.transport, transport)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.playmode, playmode) ||
                const DeepCollectionEquality()
                    .equals(other.playmode, playmode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transport) ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(playmode) ^
      runtimeType.hashCode;
}

extension $TransportGoToTimeInfoExtension on TransportGoToTimeInfo {
  TransportGoToTimeInfo copyWith(
      {D3apiLocator? transport,
      double? time,
      enums.TransportAPIPlayMode? playmode}) {
    return TransportGoToTimeInfo(
        transport: transport ?? this.transport,
        time: time ?? this.time,
        playmode: playmode ?? this.playmode);
  }

  TransportGoToTimeInfo copyWithWrapped(
      {Wrapped<D3apiLocator?>? transport,
      Wrapped<double?>? time,
      Wrapped<enums.TransportAPIPlayMode?>? playmode}) {
    return TransportGoToTimeInfo(
        transport: (transport != null ? transport.value : this.transport),
        time: (time != null ? time.value : this.time),
        playmode: (playmode != null ? playmode.value : this.playmode));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportGoToTimeRequest {
  TransportGoToTimeRequest({
    this.transports,
  });

  factory TransportGoToTimeRequest.fromJson(Map<String, dynamic> json) =>
      _$TransportGoToTimeRequestFromJson(json);

  static const toJsonFactory = _$TransportGoToTimeRequestToJson;
  Map<String, dynamic> toJson() => _$TransportGoToTimeRequestToJson(this);

  @JsonKey(
      name: 'transports',
      includeIfNull: false,
      defaultValue: <TransportGoToTimeInfo>[])
  final List<TransportGoToTimeInfo>? transports;
  static const fromJsonFactory = _$TransportGoToTimeRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportGoToTimeRequest &&
            (identical(other.transports, transports) ||
                const DeepCollectionEquality()
                    .equals(other.transports, transports)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transports) ^ runtimeType.hashCode;
}

extension $TransportGoToTimeRequestExtension on TransportGoToTimeRequest {
  TransportGoToTimeRequest copyWith({List<TransportGoToTimeInfo>? transports}) {
    return TransportGoToTimeRequest(transports: transports ?? this.transports);
  }

  TransportGoToTimeRequest copyWithWrapped(
      {Wrapped<List<TransportGoToTimeInfo>?>? transports}) {
    return TransportGoToTimeRequest(
        transports: (transports != null ? transports.value : this.transports));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportGoToTrackInfo {
  TransportGoToTrackInfo({
    this.transport,
    this.track,
    this.playmode,
  });

  factory TransportGoToTrackInfo.fromJson(Map<String, dynamic> json) =>
      _$TransportGoToTrackInfoFromJson(json);

  static const toJsonFactory = _$TransportGoToTrackInfoToJson;
  Map<String, dynamic> toJson() => _$TransportGoToTrackInfoToJson(this);

  @JsonKey(name: 'transport', includeIfNull: false)
  final D3apiLocator? transport;
  @JsonKey(name: 'track', includeIfNull: false)
  final D3apiLocator? track;
  @JsonKey(
    name: 'playmode',
    includeIfNull: false,
    toJson: transportAPIPlayModeToJson,
    fromJson: transportAPIPlayModeFromJson,
  )
  final enums.TransportAPIPlayMode? playmode;
  static const fromJsonFactory = _$TransportGoToTrackInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportGoToTrackInfo &&
            (identical(other.transport, transport) ||
                const DeepCollectionEquality()
                    .equals(other.transport, transport)) &&
            (identical(other.track, track) ||
                const DeepCollectionEquality().equals(other.track, track)) &&
            (identical(other.playmode, playmode) ||
                const DeepCollectionEquality()
                    .equals(other.playmode, playmode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transport) ^
      const DeepCollectionEquality().hash(track) ^
      const DeepCollectionEquality().hash(playmode) ^
      runtimeType.hashCode;
}

extension $TransportGoToTrackInfoExtension on TransportGoToTrackInfo {
  TransportGoToTrackInfo copyWith(
      {D3apiLocator? transport,
      D3apiLocator? track,
      enums.TransportAPIPlayMode? playmode}) {
    return TransportGoToTrackInfo(
        transport: transport ?? this.transport,
        track: track ?? this.track,
        playmode: playmode ?? this.playmode);
  }

  TransportGoToTrackInfo copyWithWrapped(
      {Wrapped<D3apiLocator?>? transport,
      Wrapped<D3apiLocator?>? track,
      Wrapped<enums.TransportAPIPlayMode?>? playmode}) {
    return TransportGoToTrackInfo(
        transport: (transport != null ? transport.value : this.transport),
        track: (track != null ? track.value : this.track),
        playmode: (playmode != null ? playmode.value : this.playmode));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportGoToTrackRequest {
  TransportGoToTrackRequest({
    this.transports,
  });

  factory TransportGoToTrackRequest.fromJson(Map<String, dynamic> json) =>
      _$TransportGoToTrackRequestFromJson(json);

  static const toJsonFactory = _$TransportGoToTrackRequestToJson;
  Map<String, dynamic> toJson() => _$TransportGoToTrackRequestToJson(this);

  @JsonKey(
      name: 'transports',
      includeIfNull: false,
      defaultValue: <TransportGoToTrackInfo>[])
  final List<TransportGoToTrackInfo>? transports;
  static const fromJsonFactory = _$TransportGoToTrackRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportGoToTrackRequest &&
            (identical(other.transports, transports) ||
                const DeepCollectionEquality()
                    .equals(other.transports, transports)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transports) ^ runtimeType.hashCode;
}

extension $TransportGoToTrackRequestExtension on TransportGoToTrackRequest {
  TransportGoToTrackRequest copyWith(
      {List<TransportGoToTrackInfo>? transports}) {
    return TransportGoToTrackRequest(transports: transports ?? this.transports);
  }

  TransportGoToTrackRequest copyWithWrapped(
      {Wrapped<List<TransportGoToTrackInfo>?>? transports}) {
    return TransportGoToTrackRequest(
        transports: (transports != null ? transports.value : this.transports));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportGotoNoteInfo {
  TransportGotoNoteInfo({
    this.transport,
    this.note,
    this.playmode,
  });

  factory TransportGotoNoteInfo.fromJson(Map<String, dynamic> json) =>
      _$TransportGotoNoteInfoFromJson(json);

  static const toJsonFactory = _$TransportGotoNoteInfoToJson;
  Map<String, dynamic> toJson() => _$TransportGotoNoteInfoToJson(this);

  @JsonKey(name: 'transport', includeIfNull: false)
  final D3apiLocator? transport;
  @JsonKey(name: 'note', includeIfNull: false)
  final String? note;
  @JsonKey(
    name: 'playmode',
    includeIfNull: false,
    toJson: transportAPIPlayModeToJson,
    fromJson: transportAPIPlayModeFromJson,
  )
  final enums.TransportAPIPlayMode? playmode;
  static const fromJsonFactory = _$TransportGotoNoteInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportGotoNoteInfo &&
            (identical(other.transport, transport) ||
                const DeepCollectionEquality()
                    .equals(other.transport, transport)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.playmode, playmode) ||
                const DeepCollectionEquality()
                    .equals(other.playmode, playmode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transport) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(playmode) ^
      runtimeType.hashCode;
}

extension $TransportGotoNoteInfoExtension on TransportGotoNoteInfo {
  TransportGotoNoteInfo copyWith(
      {D3apiLocator? transport,
      String? note,
      enums.TransportAPIPlayMode? playmode}) {
    return TransportGotoNoteInfo(
        transport: transport ?? this.transport,
        note: note ?? this.note,
        playmode: playmode ?? this.playmode);
  }

  TransportGotoNoteInfo copyWithWrapped(
      {Wrapped<D3apiLocator?>? transport,
      Wrapped<String?>? note,
      Wrapped<enums.TransportAPIPlayMode?>? playmode}) {
    return TransportGotoNoteInfo(
        transport: (transport != null ? transport.value : this.transport),
        note: (note != null ? note.value : this.note),
        playmode: (playmode != null ? playmode.value : this.playmode));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportListAnnotationsResponse {
  TransportListAnnotationsResponse({
    this.status,
    this.result,
  });

  factory TransportListAnnotationsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$TransportListAnnotationsResponseFromJson(json);

  static const toJsonFactory = _$TransportListAnnotationsResponseToJson;
  Map<String, dynamic> toJson() =>
      _$TransportListAnnotationsResponseToJson(this);

  @JsonKey(name: 'status', includeIfNull: false)
  final RpcStatus? status;
  @JsonKey(name: 'result', includeIfNull: false)
  final TransportListAnnotationsResult? result;
  static const fromJsonFactory = _$TransportListAnnotationsResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportListAnnotationsResponse &&
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

extension $TransportListAnnotationsResponseExtension
    on TransportListAnnotationsResponse {
  TransportListAnnotationsResponse copyWith(
      {RpcStatus? status, TransportListAnnotationsResult? result}) {
    return TransportListAnnotationsResponse(
        status: status ?? this.status, result: result ?? this.result);
  }

  TransportListAnnotationsResponse copyWithWrapped(
      {Wrapped<RpcStatus?>? status,
      Wrapped<TransportListAnnotationsResult?>? result}) {
    return TransportListAnnotationsResponse(
        status: (status != null ? status.value : this.status),
        result: (result != null ? result.value : this.result));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportListAnnotationsResult {
  TransportListAnnotationsResult({
    this.uid,
    this.name,
    this.annotations,
  });

  factory TransportListAnnotationsResult.fromJson(Map<String, dynamic> json) =>
      _$TransportListAnnotationsResultFromJson(json);

  static const toJsonFactory = _$TransportListAnnotationsResultToJson;
  Map<String, dynamic> toJson() => _$TransportListAnnotationsResultToJson(this);

  @JsonKey(name: 'uid', includeIfNull: false)
  final String? uid;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'annotations', includeIfNull: false)
  final TransportAnnotationInfo? annotations;
  static const fromJsonFactory = _$TransportListAnnotationsResultFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportListAnnotationsResult &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.annotations, annotations) ||
                const DeepCollectionEquality()
                    .equals(other.annotations, annotations)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(annotations) ^
      runtimeType.hashCode;
}

extension $TransportListAnnotationsResultExtension
    on TransportListAnnotationsResult {
  TransportListAnnotationsResult copyWith(
      {String? uid, String? name, TransportAnnotationInfo? annotations}) {
    return TransportListAnnotationsResult(
        uid: uid ?? this.uid,
        name: name ?? this.name,
        annotations: annotations ?? this.annotations);
  }

  TransportListAnnotationsResult copyWithWrapped(
      {Wrapped<String?>? uid,
      Wrapped<String?>? name,
      Wrapped<TransportAnnotationInfo?>? annotations}) {
    return TransportListAnnotationsResult(
        uid: (uid != null ? uid.value : this.uid),
        name: (name != null ? name.value : this.name),
        annotations:
            (annotations != null ? annotations.value : this.annotations));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportListSetListsResponse {
  TransportListSetListsResponse({
    this.status,
    this.result,
  });

  factory TransportListSetListsResponse.fromJson(Map<String, dynamic> json) =>
      _$TransportListSetListsResponseFromJson(json);

  static const toJsonFactory = _$TransportListSetListsResponseToJson;
  Map<String, dynamic> toJson() => _$TransportListSetListsResponseToJson(this);

  @JsonKey(name: 'status', includeIfNull: false)
  final RpcStatus? status;
  @JsonKey(
      name: 'result',
      includeIfNull: false,
      defaultValue: <TransportSetListInfo>[])
  final List<TransportSetListInfo>? result;
  static const fromJsonFactory = _$TransportListSetListsResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportListSetListsResponse &&
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

extension $TransportListSetListsResponseExtension
    on TransportListSetListsResponse {
  TransportListSetListsResponse copyWith(
      {RpcStatus? status, List<TransportSetListInfo>? result}) {
    return TransportListSetListsResponse(
        status: status ?? this.status, result: result ?? this.result);
  }

  TransportListSetListsResponse copyWithWrapped(
      {Wrapped<RpcStatus?>? status,
      Wrapped<List<TransportSetListInfo>?>? result}) {
    return TransportListSetListsResponse(
        status: (status != null ? status.value : this.status),
        result: (result != null ? result.value : this.result));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportListTracksResponse {
  TransportListTracksResponse({
    this.status,
    this.result,
  });

  factory TransportListTracksResponse.fromJson(Map<String, dynamic> json) =>
      _$TransportListTracksResponseFromJson(json);

  static const toJsonFactory = _$TransportListTracksResponseToJson;
  Map<String, dynamic> toJson() => _$TransportListTracksResponseToJson(this);

  @JsonKey(name: 'status', includeIfNull: false)
  final RpcStatus? status;
  @JsonKey(
      name: 'result',
      includeIfNull: false,
      defaultValue: <TransportTrackInfo>[])
  final List<TransportTrackInfo>? result;
  static const fromJsonFactory = _$TransportListTracksResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportListTracksResponse &&
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

extension $TransportListTracksResponseExtension on TransportListTracksResponse {
  TransportListTracksResponse copyWith(
      {RpcStatus? status, List<TransportTrackInfo>? result}) {
    return TransportListTracksResponse(
        status: status ?? this.status, result: result ?? this.result);
  }

  TransportListTracksResponse copyWithWrapped(
      {Wrapped<RpcStatus?>? status,
      Wrapped<List<TransportTrackInfo>?>? result}) {
    return TransportListTracksResponse(
        status: (status != null ? status.value : this.status),
        result: (result != null ? result.value : this.result));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportNoteInfo {
  TransportNoteInfo({
    this.time,
    this.text,
  });

  factory TransportNoteInfo.fromJson(Map<String, dynamic> json) =>
      _$TransportNoteInfoFromJson(json);

  static const toJsonFactory = _$TransportNoteInfoToJson;
  Map<String, dynamic> toJson() => _$TransportNoteInfoToJson(this);

  @JsonKey(name: 'time', includeIfNull: false)
  final double? time;
  @JsonKey(name: 'text', includeIfNull: false)
  final String? text;
  static const fromJsonFactory = _$TransportNoteInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportNoteInfo &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(text) ^
      runtimeType.hashCode;
}

extension $TransportNoteInfoExtension on TransportNoteInfo {
  TransportNoteInfo copyWith({double? time, String? text}) {
    return TransportNoteInfo(time: time ?? this.time, text: text ?? this.text);
  }

  TransportNoteInfo copyWithWrapped(
      {Wrapped<double?>? time, Wrapped<String?>? text}) {
    return TransportNoteInfo(
        time: (time != null ? time.value : this.time),
        text: (text != null ? text.value : this.text));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportPlayLoopSectionRequest {
  TransportPlayLoopSectionRequest({
    this.transports,
  });

  factory TransportPlayLoopSectionRequest.fromJson(Map<String, dynamic> json) =>
      _$TransportPlayLoopSectionRequestFromJson(json);

  static const toJsonFactory = _$TransportPlayLoopSectionRequestToJson;
  Map<String, dynamic> toJson() =>
      _$TransportPlayLoopSectionRequestToJson(this);

  @JsonKey(
      name: 'transports', includeIfNull: false, defaultValue: <D3apiLocator>[])
  final List<D3apiLocator>? transports;
  static const fromJsonFactory = _$TransportPlayLoopSectionRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportPlayLoopSectionRequest &&
            (identical(other.transports, transports) ||
                const DeepCollectionEquality()
                    .equals(other.transports, transports)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transports) ^ runtimeType.hashCode;
}

extension $TransportPlayLoopSectionRequestExtension
    on TransportPlayLoopSectionRequest {
  TransportPlayLoopSectionRequest copyWith({List<D3apiLocator>? transports}) {
    return TransportPlayLoopSectionRequest(
        transports: transports ?? this.transports);
  }

  TransportPlayLoopSectionRequest copyWithWrapped(
      {Wrapped<List<D3apiLocator>?>? transports}) {
    return TransportPlayLoopSectionRequest(
        transports: (transports != null ? transports.value : this.transports));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportPlayRequest {
  TransportPlayRequest({
    this.transports,
  });

  factory TransportPlayRequest.fromJson(Map<String, dynamic> json) =>
      _$TransportPlayRequestFromJson(json);

  static const toJsonFactory = _$TransportPlayRequestToJson;
  Map<String, dynamic> toJson() => _$TransportPlayRequestToJson(this);

  @JsonKey(
      name: 'transports', includeIfNull: false, defaultValue: <D3apiLocator>[])
  final List<D3apiLocator>? transports;
  static const fromJsonFactory = _$TransportPlayRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportPlayRequest &&
            (identical(other.transports, transports) ||
                const DeepCollectionEquality()
                    .equals(other.transports, transports)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transports) ^ runtimeType.hashCode;
}

extension $TransportPlayRequestExtension on TransportPlayRequest {
  TransportPlayRequest copyWith({List<D3apiLocator>? transports}) {
    return TransportPlayRequest(transports: transports ?? this.transports);
  }

  TransportPlayRequest copyWithWrapped(
      {Wrapped<List<D3apiLocator>?>? transports}) {
    return TransportPlayRequest(
        transports: (transports != null ? transports.value : this.transports));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportPlaySectionRequest {
  TransportPlaySectionRequest({
    this.transports,
  });

  factory TransportPlaySectionRequest.fromJson(Map<String, dynamic> json) =>
      _$TransportPlaySectionRequestFromJson(json);

  static const toJsonFactory = _$TransportPlaySectionRequestToJson;
  Map<String, dynamic> toJson() => _$TransportPlaySectionRequestToJson(this);

  @JsonKey(
      name: 'transports', includeIfNull: false, defaultValue: <D3apiLocator>[])
  final List<D3apiLocator>? transports;
  static const fromJsonFactory = _$TransportPlaySectionRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportPlaySectionRequest &&
            (identical(other.transports, transports) ||
                const DeepCollectionEquality()
                    .equals(other.transports, transports)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transports) ^ runtimeType.hashCode;
}

extension $TransportPlaySectionRequestExtension on TransportPlaySectionRequest {
  TransportPlaySectionRequest copyWith({List<D3apiLocator>? transports}) {
    return TransportPlaySectionRequest(
        transports: transports ?? this.transports);
  }

  TransportPlaySectionRequest copyWithWrapped(
      {Wrapped<List<D3apiLocator>?>? transports}) {
    return TransportPlaySectionRequest(
        transports: (transports != null ? transports.value : this.transports));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportReturnToStartRequest {
  TransportReturnToStartRequest({
    this.transports,
  });

  factory TransportReturnToStartRequest.fromJson(Map<String, dynamic> json) =>
      _$TransportReturnToStartRequestFromJson(json);

  static const toJsonFactory = _$TransportReturnToStartRequestToJson;
  Map<String, dynamic> toJson() => _$TransportReturnToStartRequestToJson(this);

  @JsonKey(
      name: 'transports', includeIfNull: false, defaultValue: <D3apiLocator>[])
  final List<D3apiLocator>? transports;
  static const fromJsonFactory = _$TransportReturnToStartRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportReturnToStartRequest &&
            (identical(other.transports, transports) ||
                const DeepCollectionEquality()
                    .equals(other.transports, transports)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transports) ^ runtimeType.hashCode;
}

extension $TransportReturnToStartRequestExtension
    on TransportReturnToStartRequest {
  TransportReturnToStartRequest copyWith({List<D3apiLocator>? transports}) {
    return TransportReturnToStartRequest(
        transports: transports ?? this.transports);
  }

  TransportReturnToStartRequest copyWithWrapped(
      {Wrapped<List<D3apiLocator>?>? transports}) {
    return TransportReturnToStartRequest(
        transports: (transports != null ? transports.value : this.transports));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportSectionInfo {
  TransportSectionInfo({
    this.time,
    this.index,
  });

  factory TransportSectionInfo.fromJson(Map<String, dynamic> json) =>
      _$TransportSectionInfoFromJson(json);

  static const toJsonFactory = _$TransportSectionInfoToJson;
  Map<String, dynamic> toJson() => _$TransportSectionInfoToJson(this);

  @JsonKey(name: 'time', includeIfNull: false)
  final double? time;
  @JsonKey(name: 'index', includeIfNull: false)
  final String? index;
  static const fromJsonFactory = _$TransportSectionInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportSectionInfo &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(index) ^
      runtimeType.hashCode;
}

extension $TransportSectionInfoExtension on TransportSectionInfo {
  TransportSectionInfo copyWith({double? time, String? index}) {
    return TransportSectionInfo(
        time: time ?? this.time, index: index ?? this.index);
  }

  TransportSectionInfo copyWithWrapped(
      {Wrapped<double?>? time, Wrapped<String?>? index}) {
    return TransportSectionInfo(
        time: (time != null ? time.value : this.time),
        index: (index != null ? index.value : this.index));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportSetBrightnessInfo {
  TransportSetBrightnessInfo({
    this.transport,
    this.brightness,
  });

  factory TransportSetBrightnessInfo.fromJson(Map<String, dynamic> json) =>
      _$TransportSetBrightnessInfoFromJson(json);

  static const toJsonFactory = _$TransportSetBrightnessInfoToJson;
  Map<String, dynamic> toJson() => _$TransportSetBrightnessInfoToJson(this);

  @JsonKey(name: 'transport', includeIfNull: false)
  final D3apiLocator? transport;
  @JsonKey(name: 'brightness', includeIfNull: false)
  final double? brightness;
  static const fromJsonFactory = _$TransportSetBrightnessInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportSetBrightnessInfo &&
            (identical(other.transport, transport) ||
                const DeepCollectionEquality()
                    .equals(other.transport, transport)) &&
            (identical(other.brightness, brightness) ||
                const DeepCollectionEquality()
                    .equals(other.brightness, brightness)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transport) ^
      const DeepCollectionEquality().hash(brightness) ^
      runtimeType.hashCode;
}

extension $TransportSetBrightnessInfoExtension on TransportSetBrightnessInfo {
  TransportSetBrightnessInfo copyWith(
      {D3apiLocator? transport, double? brightness}) {
    return TransportSetBrightnessInfo(
        transport: transport ?? this.transport,
        brightness: brightness ?? this.brightness);
  }

  TransportSetBrightnessInfo copyWithWrapped(
      {Wrapped<D3apiLocator?>? transport, Wrapped<double?>? brightness}) {
    return TransportSetBrightnessInfo(
        transport: (transport != null ? transport.value : this.transport),
        brightness: (brightness != null ? brightness.value : this.brightness));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportSetBrightnessRequest {
  TransportSetBrightnessRequest({
    this.transports,
  });

  factory TransportSetBrightnessRequest.fromJson(Map<String, dynamic> json) =>
      _$TransportSetBrightnessRequestFromJson(json);

  static const toJsonFactory = _$TransportSetBrightnessRequestToJson;
  Map<String, dynamic> toJson() => _$TransportSetBrightnessRequestToJson(this);

  @JsonKey(
      name: 'transports',
      includeIfNull: false,
      defaultValue: <TransportSetBrightnessInfo>[])
  final List<TransportSetBrightnessInfo>? transports;
  static const fromJsonFactory = _$TransportSetBrightnessRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportSetBrightnessRequest &&
            (identical(other.transports, transports) ||
                const DeepCollectionEquality()
                    .equals(other.transports, transports)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transports) ^ runtimeType.hashCode;
}

extension $TransportSetBrightnessRequestExtension
    on TransportSetBrightnessRequest {
  TransportSetBrightnessRequest copyWith(
      {List<TransportSetBrightnessInfo>? transports}) {
    return TransportSetBrightnessRequest(
        transports: transports ?? this.transports);
  }

  TransportSetBrightnessRequest copyWithWrapped(
      {Wrapped<List<TransportSetBrightnessInfo>?>? transports}) {
    return TransportSetBrightnessRequest(
        transports: (transports != null ? transports.value : this.transports));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportSetEngagedInfo {
  TransportSetEngagedInfo({
    this.transport,
    this.engaged,
  });

  factory TransportSetEngagedInfo.fromJson(Map<String, dynamic> json) =>
      _$TransportSetEngagedInfoFromJson(json);

  static const toJsonFactory = _$TransportSetEngagedInfoToJson;
  Map<String, dynamic> toJson() => _$TransportSetEngagedInfoToJson(this);

  @JsonKey(name: 'transport', includeIfNull: false)
  final D3apiLocator? transport;
  @JsonKey(name: 'engaged', includeIfNull: false)
  final bool? engaged;
  static const fromJsonFactory = _$TransportSetEngagedInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportSetEngagedInfo &&
            (identical(other.transport, transport) ||
                const DeepCollectionEquality()
                    .equals(other.transport, transport)) &&
            (identical(other.engaged, engaged) ||
                const DeepCollectionEquality().equals(other.engaged, engaged)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transport) ^
      const DeepCollectionEquality().hash(engaged) ^
      runtimeType.hashCode;
}

extension $TransportSetEngagedInfoExtension on TransportSetEngagedInfo {
  TransportSetEngagedInfo copyWith({D3apiLocator? transport, bool? engaged}) {
    return TransportSetEngagedInfo(
        transport: transport ?? this.transport,
        engaged: engaged ?? this.engaged);
  }

  TransportSetEngagedInfo copyWithWrapped(
      {Wrapped<D3apiLocator?>? transport, Wrapped<bool?>? engaged}) {
    return TransportSetEngagedInfo(
        transport: (transport != null ? transport.value : this.transport),
        engaged: (engaged != null ? engaged.value : this.engaged));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportSetEngagedRequest {
  TransportSetEngagedRequest({
    this.transports,
  });

  factory TransportSetEngagedRequest.fromJson(Map<String, dynamic> json) =>
      _$TransportSetEngagedRequestFromJson(json);

  static const toJsonFactory = _$TransportSetEngagedRequestToJson;
  Map<String, dynamic> toJson() => _$TransportSetEngagedRequestToJson(this);

  @JsonKey(
      name: 'transports',
      includeIfNull: false,
      defaultValue: <TransportSetEngagedInfo>[])
  final List<TransportSetEngagedInfo>? transports;
  static const fromJsonFactory = _$TransportSetEngagedRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportSetEngagedRequest &&
            (identical(other.transports, transports) ||
                const DeepCollectionEquality()
                    .equals(other.transports, transports)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transports) ^ runtimeType.hashCode;
}

extension $TransportSetEngagedRequestExtension on TransportSetEngagedRequest {
  TransportSetEngagedRequest copyWith(
      {List<TransportSetEngagedInfo>? transports}) {
    return TransportSetEngagedRequest(
        transports: transports ?? this.transports);
  }

  TransportSetEngagedRequest copyWithWrapped(
      {Wrapped<List<TransportSetEngagedInfo>?>? transports}) {
    return TransportSetEngagedRequest(
        transports: (transports != null ? transports.value : this.transports));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportSetListInfo {
  TransportSetListInfo({
    this.uid,
    this.name,
    this.tracks,
  });

  factory TransportSetListInfo.fromJson(Map<String, dynamic> json) =>
      _$TransportSetListInfoFromJson(json);

  static const toJsonFactory = _$TransportSetListInfoToJson;
  Map<String, dynamic> toJson() => _$TransportSetListInfoToJson(this);

  @JsonKey(name: 'uid', includeIfNull: false)
  final String? uid;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(
      name: 'tracks',
      includeIfNull: false,
      defaultValue: <TransportTrackInfo>[])
  final List<TransportTrackInfo>? tracks;
  static const fromJsonFactory = _$TransportSetListInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportSetListInfo &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.tracks, tracks) ||
                const DeepCollectionEquality().equals(other.tracks, tracks)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(tracks) ^
      runtimeType.hashCode;
}

extension $TransportSetListInfoExtension on TransportSetListInfo {
  TransportSetListInfo copyWith(
      {String? uid, String? name, List<TransportTrackInfo>? tracks}) {
    return TransportSetListInfo(
        uid: uid ?? this.uid,
        name: name ?? this.name,
        tracks: tracks ?? this.tracks);
  }

  TransportSetListInfo copyWithWrapped(
      {Wrapped<String?>? uid,
      Wrapped<String?>? name,
      Wrapped<List<TransportTrackInfo>?>? tracks}) {
    return TransportSetListInfo(
        uid: (uid != null ? uid.value : this.uid),
        name: (name != null ? name.value : this.name),
        tracks: (tracks != null ? tracks.value : this.tracks));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportSetVolumeInfo {
  TransportSetVolumeInfo({
    this.transport,
    this.volume,
  });

  factory TransportSetVolumeInfo.fromJson(Map<String, dynamic> json) =>
      _$TransportSetVolumeInfoFromJson(json);

  static const toJsonFactory = _$TransportSetVolumeInfoToJson;
  Map<String, dynamic> toJson() => _$TransportSetVolumeInfoToJson(this);

  @JsonKey(name: 'transport', includeIfNull: false)
  final D3apiLocator? transport;
  @JsonKey(name: 'volume', includeIfNull: false)
  final double? volume;
  static const fromJsonFactory = _$TransportSetVolumeInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportSetVolumeInfo &&
            (identical(other.transport, transport) ||
                const DeepCollectionEquality()
                    .equals(other.transport, transport)) &&
            (identical(other.volume, volume) ||
                const DeepCollectionEquality().equals(other.volume, volume)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transport) ^
      const DeepCollectionEquality().hash(volume) ^
      runtimeType.hashCode;
}

extension $TransportSetVolumeInfoExtension on TransportSetVolumeInfo {
  TransportSetVolumeInfo copyWith({D3apiLocator? transport, double? volume}) {
    return TransportSetVolumeInfo(
        transport: transport ?? this.transport, volume: volume ?? this.volume);
  }

  TransportSetVolumeInfo copyWithWrapped(
      {Wrapped<D3apiLocator?>? transport, Wrapped<double?>? volume}) {
    return TransportSetVolumeInfo(
        transport: (transport != null ? transport.value : this.transport),
        volume: (volume != null ? volume.value : this.volume));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportSetVolumeRequest {
  TransportSetVolumeRequest({
    this.transports,
  });

  factory TransportSetVolumeRequest.fromJson(Map<String, dynamic> json) =>
      _$TransportSetVolumeRequestFromJson(json);

  static const toJsonFactory = _$TransportSetVolumeRequestToJson;
  Map<String, dynamic> toJson() => _$TransportSetVolumeRequestToJson(this);

  @JsonKey(
      name: 'transports',
      includeIfNull: false,
      defaultValue: <TransportSetVolumeInfo>[])
  final List<TransportSetVolumeInfo>? transports;
  static const fromJsonFactory = _$TransportSetVolumeRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportSetVolumeRequest &&
            (identical(other.transports, transports) ||
                const DeepCollectionEquality()
                    .equals(other.transports, transports)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transports) ^ runtimeType.hashCode;
}

extension $TransportSetVolumeRequestExtension on TransportSetVolumeRequest {
  TransportSetVolumeRequest copyWith(
      {List<TransportSetVolumeInfo>? transports}) {
    return TransportSetVolumeRequest(transports: transports ?? this.transports);
  }

  TransportSetVolumeRequest copyWithWrapped(
      {Wrapped<List<TransportSetVolumeInfo>?>? transports}) {
    return TransportSetVolumeRequest(
        transports: (transports != null ? transports.value : this.transports));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportStopRequest {
  TransportStopRequest({
    this.transports,
  });

  factory TransportStopRequest.fromJson(Map<String, dynamic> json) =>
      _$TransportStopRequestFromJson(json);

  static const toJsonFactory = _$TransportStopRequestToJson;
  Map<String, dynamic> toJson() => _$TransportStopRequestToJson(this);

  @JsonKey(
      name: 'transports', includeIfNull: false, defaultValue: <D3apiLocator>[])
  final List<D3apiLocator>? transports;
  static const fromJsonFactory = _$TransportStopRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportStopRequest &&
            (identical(other.transports, transports) ||
                const DeepCollectionEquality()
                    .equals(other.transports, transports)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transports) ^ runtimeType.hashCode;
}

extension $TransportStopRequestExtension on TransportStopRequest {
  TransportStopRequest copyWith({List<D3apiLocator>? transports}) {
    return TransportStopRequest(transports: transports ?? this.transports);
  }

  TransportStopRequest copyWithWrapped(
      {Wrapped<List<D3apiLocator>?>? transports}) {
    return TransportStopRequest(
        transports: (transports != null ? transports.value : this.transports));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportTagInfo {
  TransportTagInfo({
    this.time,
    this.type,
    this.value,
  });

  factory TransportTagInfo.fromJson(Map<String, dynamic> json) =>
      _$TransportTagInfoFromJson(json);

  static const toJsonFactory = _$TransportTagInfoToJson;
  Map<String, dynamic> toJson() => _$TransportTagInfoToJson(this);

  @JsonKey(name: 'time', includeIfNull: false)
  final double? time;
  @JsonKey(
    name: 'type',
    includeIfNull: false,
    toJson: transportTagTypeToJson,
    fromJson: transportTagTypeFromJson,
  )
  final enums.TransportTagType? type;
  @JsonKey(name: 'value', includeIfNull: false)
  final String? value;
  static const fromJsonFactory = _$TransportTagInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportTagInfo &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(value) ^
      runtimeType.hashCode;
}

extension $TransportTagInfoExtension on TransportTagInfo {
  TransportTagInfo copyWith(
      {double? time, enums.TransportTagType? type, String? value}) {
    return TransportTagInfo(
        time: time ?? this.time,
        type: type ?? this.type,
        value: value ?? this.value);
  }

  TransportTagInfo copyWithWrapped(
      {Wrapped<double?>? time,
      Wrapped<enums.TransportTagType?>? type,
      Wrapped<String?>? value}) {
    return TransportTagInfo(
        time: (time != null ? time.value : this.time),
        type: (type != null ? type.value : this.type),
        value: (value != null ? value.value : this.value));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportTrackInfo {
  TransportTrackInfo({
    this.uid,
    this.name,
    this.length,
    this.crossfade,
  });

  factory TransportTrackInfo.fromJson(Map<String, dynamic> json) =>
      _$TransportTrackInfoFromJson(json);

  static const toJsonFactory = _$TransportTrackInfoToJson;
  Map<String, dynamic> toJson() => _$TransportTrackInfoToJson(this);

  @JsonKey(name: 'uid', includeIfNull: false)
  final String? uid;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'length', includeIfNull: false)
  final double? length;
  @JsonKey(
    name: 'crossfade',
    includeIfNull: false,
    toJson: trackInfoCrossfadeModeToJson,
    fromJson: trackInfoCrossfadeModeFromJson,
  )
  final enums.TrackInfoCrossfadeMode? crossfade;
  static const fromJsonFactory = _$TransportTrackInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportTrackInfo &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.length, length) ||
                const DeepCollectionEquality().equals(other.length, length)) &&
            (identical(other.crossfade, crossfade) ||
                const DeepCollectionEquality()
                    .equals(other.crossfade, crossfade)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(length) ^
      const DeepCollectionEquality().hash(crossfade) ^
      runtimeType.hashCode;
}

extension $TransportTrackInfoExtension on TransportTrackInfo {
  TransportTrackInfo copyWith(
      {String? uid,
      String? name,
      double? length,
      enums.TrackInfoCrossfadeMode? crossfade}) {
    return TransportTrackInfo(
        uid: uid ?? this.uid,
        name: name ?? this.name,
        length: length ?? this.length,
        crossfade: crossfade ?? this.crossfade);
  }

  TransportTrackInfo copyWithWrapped(
      {Wrapped<String?>? uid,
      Wrapped<String?>? name,
      Wrapped<double?>? length,
      Wrapped<enums.TrackInfoCrossfadeMode?>? crossfade}) {
    return TransportTrackInfo(
        uid: (uid != null ? uid.value : this.uid),
        name: (name != null ? name.value : this.name),
        length: (length != null ? length.value : this.length),
        crossfade: (crossfade != null ? crossfade.value : this.crossfade));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportTransportInfo {
  TransportTransportInfo({
    this.uid,
    this.name,
    this.engaged,
    this.volume,
    this.brightness,
    this.playmode,
  });

  factory TransportTransportInfo.fromJson(Map<String, dynamic> json) =>
      _$TransportTransportInfoFromJson(json);

  static const toJsonFactory = _$TransportTransportInfoToJson;
  Map<String, dynamic> toJson() => _$TransportTransportInfoToJson(this);

  @JsonKey(name: 'uid', includeIfNull: false)
  final String? uid;
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'engaged', includeIfNull: false)
  final bool? engaged;
  @JsonKey(name: 'volume', includeIfNull: false)
  final double? volume;
  @JsonKey(name: 'brightness', includeIfNull: false)
  final double? brightness;
  @JsonKey(
    name: 'playmode',
    includeIfNull: false,
    toJson: transportAPIPlayModeToJson,
    fromJson: transportAPIPlayModeFromJson,
  )
  final enums.TransportAPIPlayMode? playmode;
  static const fromJsonFactory = _$TransportTransportInfoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportTransportInfo &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.engaged, engaged) ||
                const DeepCollectionEquality()
                    .equals(other.engaged, engaged)) &&
            (identical(other.volume, volume) ||
                const DeepCollectionEquality().equals(other.volume, volume)) &&
            (identical(other.brightness, brightness) ||
                const DeepCollectionEquality()
                    .equals(other.brightness, brightness)) &&
            (identical(other.playmode, playmode) ||
                const DeepCollectionEquality()
                    .equals(other.playmode, playmode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(engaged) ^
      const DeepCollectionEquality().hash(volume) ^
      const DeepCollectionEquality().hash(brightness) ^
      const DeepCollectionEquality().hash(playmode) ^
      runtimeType.hashCode;
}

extension $TransportTransportInfoExtension on TransportTransportInfo {
  TransportTransportInfo copyWith(
      {String? uid,
      String? name,
      bool? engaged,
      double? volume,
      double? brightness,
      enums.TransportAPIPlayMode? playmode}) {
    return TransportTransportInfo(
        uid: uid ?? this.uid,
        name: name ?? this.name,
        engaged: engaged ?? this.engaged,
        volume: volume ?? this.volume,
        brightness: brightness ?? this.brightness,
        playmode: playmode ?? this.playmode);
  }

  TransportTransportInfo copyWithWrapped(
      {Wrapped<String?>? uid,
      Wrapped<String?>? name,
      Wrapped<bool?>? engaged,
      Wrapped<double?>? volume,
      Wrapped<double?>? brightness,
      Wrapped<enums.TransportAPIPlayMode?>? playmode}) {
    return TransportTransportInfo(
        uid: (uid != null ? uid.value : this.uid),
        name: (name != null ? name.value : this.name),
        engaged: (engaged != null ? engaged.value : this.engaged),
        volume: (volume != null ? volume.value : this.volume),
        brightness: (brightness != null ? brightness.value : this.brightness),
        playmode: (playmode != null ? playmode.value : this.playmode));
  }
}

String? mixedrealityObservationTypeToJson(
    enums.MixedrealityObservationType? mixedrealityObservationType) {
  return mixedrealityObservationType?.value;
}

enums.MixedrealityObservationType mixedrealityObservationTypeFromJson(
  Object? mixedrealityObservationType, [
  enums.MixedrealityObservationType? defaultValue,
]) {
  return enums.MixedrealityObservationType.values
          .firstWhereOrNull((e) => e.value == mixedrealityObservationType) ??
      defaultValue ??
      enums.MixedrealityObservationType.swaggerGeneratedUnknown;
}

List<String> mixedrealityObservationTypeListToJson(
    List<enums.MixedrealityObservationType>? mixedrealityObservationType) {
  if (mixedrealityObservationType == null) {
    return [];
  }

  return mixedrealityObservationType.map((e) => e.value!).toList();
}

List<enums.MixedrealityObservationType> mixedrealityObservationTypeListFromJson(
  List? mixedrealityObservationType, [
  List<enums.MixedrealityObservationType>? defaultValue,
]) {
  if (mixedrealityObservationType == null) {
    return defaultValue ?? [];
  }

  return mixedrealityObservationType
      .map((e) => mixedrealityObservationTypeFromJson(e.toString()))
      .toList();
}

List<enums.MixedrealityObservationType>?
    mixedrealityObservationTypeNullableListFromJson(
  List? mixedrealityObservationType, [
  List<enums.MixedrealityObservationType>? defaultValue,
]) {
  if (mixedrealityObservationType == null) {
    return defaultValue;
  }

  return mixedrealityObservationType
      .map((e) => mixedrealityObservationTypeFromJson(e.toString()))
      .toList();
}

String? machineInfoMachineTypeToJson(
    enums.MachineInfoMachineType? machineInfoMachineType) {
  return machineInfoMachineType?.value;
}

enums.MachineInfoMachineType machineInfoMachineTypeFromJson(
  Object? machineInfoMachineType, [
  enums.MachineInfoMachineType? defaultValue,
]) {
  return enums.MachineInfoMachineType.values
          .firstWhereOrNull((e) => e.value == machineInfoMachineType) ??
      defaultValue ??
      enums.MachineInfoMachineType.swaggerGeneratedUnknown;
}

List<String> machineInfoMachineTypeListToJson(
    List<enums.MachineInfoMachineType>? machineInfoMachineType) {
  if (machineInfoMachineType == null) {
    return [];
  }

  return machineInfoMachineType.map((e) => e.value!).toList();
}

List<enums.MachineInfoMachineType> machineInfoMachineTypeListFromJson(
  List? machineInfoMachineType, [
  List<enums.MachineInfoMachineType>? defaultValue,
]) {
  if (machineInfoMachineType == null) {
    return defaultValue ?? [];
  }

  return machineInfoMachineType
      .map((e) => machineInfoMachineTypeFromJson(e.toString()))
      .toList();
}

List<enums.MachineInfoMachineType>? machineInfoMachineTypeNullableListFromJson(
  List? machineInfoMachineType, [
  List<enums.MachineInfoMachineType>? defaultValue,
]) {
  if (machineInfoMachineType == null) {
    return defaultValue;
  }

  return machineInfoMachineType
      .map((e) => machineInfoMachineTypeFromJson(e.toString()))
      .toList();
}

String? trackInfoCrossfadeModeToJson(
    enums.TrackInfoCrossfadeMode? trackInfoCrossfadeMode) {
  return trackInfoCrossfadeMode?.value;
}

enums.TrackInfoCrossfadeMode trackInfoCrossfadeModeFromJson(
  Object? trackInfoCrossfadeMode, [
  enums.TrackInfoCrossfadeMode? defaultValue,
]) {
  return enums.TrackInfoCrossfadeMode.values
          .firstWhereOrNull((e) => e.value == trackInfoCrossfadeMode) ??
      defaultValue ??
      enums.TrackInfoCrossfadeMode.swaggerGeneratedUnknown;
}

List<String> trackInfoCrossfadeModeListToJson(
    List<enums.TrackInfoCrossfadeMode>? trackInfoCrossfadeMode) {
  if (trackInfoCrossfadeMode == null) {
    return [];
  }

  return trackInfoCrossfadeMode.map((e) => e.value!).toList();
}

List<enums.TrackInfoCrossfadeMode> trackInfoCrossfadeModeListFromJson(
  List? trackInfoCrossfadeMode, [
  List<enums.TrackInfoCrossfadeMode>? defaultValue,
]) {
  if (trackInfoCrossfadeMode == null) {
    return defaultValue ?? [];
  }

  return trackInfoCrossfadeMode
      .map((e) => trackInfoCrossfadeModeFromJson(e.toString()))
      .toList();
}

List<enums.TrackInfoCrossfadeMode>? trackInfoCrossfadeModeNullableListFromJson(
  List? trackInfoCrossfadeMode, [
  List<enums.TrackInfoCrossfadeMode>? defaultValue,
]) {
  if (trackInfoCrossfadeMode == null) {
    return defaultValue;
  }

  return trackInfoCrossfadeMode
      .map((e) => trackInfoCrossfadeModeFromJson(e.toString()))
      .toList();
}

String? transportAPIPlayModeToJson(
    enums.TransportAPIPlayMode? transportAPIPlayMode) {
  return transportAPIPlayMode?.value;
}

enums.TransportAPIPlayMode transportAPIPlayModeFromJson(
  Object? transportAPIPlayMode, [
  enums.TransportAPIPlayMode? defaultValue,
]) {
  return enums.TransportAPIPlayMode.values
          .firstWhereOrNull((e) => e.value == transportAPIPlayMode) ??
      defaultValue ??
      enums.TransportAPIPlayMode.swaggerGeneratedUnknown;
}

List<String> transportAPIPlayModeListToJson(
    List<enums.TransportAPIPlayMode>? transportAPIPlayMode) {
  if (transportAPIPlayMode == null) {
    return [];
  }

  return transportAPIPlayMode.map((e) => e.value!).toList();
}

List<enums.TransportAPIPlayMode> transportAPIPlayModeListFromJson(
  List? transportAPIPlayMode, [
  List<enums.TransportAPIPlayMode>? defaultValue,
]) {
  if (transportAPIPlayMode == null) {
    return defaultValue ?? [];
  }

  return transportAPIPlayMode
      .map((e) => transportAPIPlayModeFromJson(e.toString()))
      .toList();
}

List<enums.TransportAPIPlayMode>? transportAPIPlayModeNullableListFromJson(
  List? transportAPIPlayMode, [
  List<enums.TransportAPIPlayMode>? defaultValue,
]) {
  if (transportAPIPlayMode == null) {
    return defaultValue;
  }

  return transportAPIPlayMode
      .map((e) => transportAPIPlayModeFromJson(e.toString()))
      .toList();
}

String? transportTagTypeToJson(enums.TransportTagType? transportTagType) {
  return transportTagType?.value;
}

enums.TransportTagType transportTagTypeFromJson(
  Object? transportTagType, [
  enums.TransportTagType? defaultValue,
]) {
  return enums.TransportTagType.values
          .firstWhereOrNull((e) => e.value == transportTagType) ??
      defaultValue ??
      enums.TransportTagType.swaggerGeneratedUnknown;
}

List<String> transportTagTypeListToJson(
    List<enums.TransportTagType>? transportTagType) {
  if (transportTagType == null) {
    return [];
  }

  return transportTagType.map((e) => e.value!).toList();
}

List<enums.TransportTagType> transportTagTypeListFromJson(
  List? transportTagType, [
  List<enums.TransportTagType>? defaultValue,
]) {
  if (transportTagType == null) {
    return defaultValue ?? [];
  }

  return transportTagType
      .map((e) => transportTagTypeFromJson(e.toString()))
      .toList();
}

List<enums.TransportTagType>? transportTagTypeNullableListFromJson(
  List? transportTagType, [
  List<enums.TransportTagType>? defaultValue,
]) {
  if (transportTagType == null) {
    return defaultValue;
  }

  return transportTagType
      .map((e) => transportTagTypeFromJson(e.toString()))
      .toList();
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
