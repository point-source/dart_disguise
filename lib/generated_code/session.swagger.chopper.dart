//Generated code

part of 'session.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$Session extends Session {
  _$Session([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = Session;

  @override
  Future<Response<D3apiEmptyResponse>> _colourCdlPost(
      {required ColourSetCDLRequest? body}) {
    final Uri $url = Uri.parse('/colour/cdl');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }

  @override
  Future<Response<ColourListCDLsResponse>> _colourCdlsGet() {
    final Uri $url = Uri.parse('/colour/cdls');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<ColourListCDLsResponse, ColourListCDLsResponse>($request);
  }

  @override
  Future<Response<MixedrealityGetCamerasResponse>> _mixedrealityCamerasGet() {
    final Uri $url = Uri.parse('/mixedreality/cameras');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<MixedrealityGetCamerasResponse,
        MixedrealityGetCamerasResponse>($request);
  }

  @override
  Future<Response<D3apiEmptyResponse>> _mixedrealityCaptureobservationPost(
      {required MixedrealityCaptureObservationRequest? body}) {
    final Uri $url = Uri.parse('/mixedreality/captureobservation');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }

  @override
  Future<Response<D3apiBoolResponse>> _mixedrealityCaptureprogressGet() {
    final Uri $url = Uri.parse('/mixedreality/captureprogress');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<D3apiBoolResponse, D3apiBoolResponse>($request);
  }

  @override
  Future<Response<D3apiEmptyResponse>> _mixedrealityDeleteallobservationsPost(
      {required MixedrealityDeleteAllObservationsRequest? body}) {
    final Uri $url = Uri.parse('/mixedreality/deleteallobservations');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }

  @override
  Future<Response<D3apiEmptyResponse>> _mixedrealityDeleteobservationsPost(
      {required MixedrealityDeleteObservationsRequest? body}) {
    final Uri $url = Uri.parse('/mixedreality/deleteobservations');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }

  @override
  Future<Response<D3apiEmptyResponse>> _mixedrealityEnableobservationsPost(
      {required MixedrealityEnableObservationsRequest? body}) {
    final Uri $url = Uri.parse('/mixedreality/enableobservations');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }

  @override
  Future<Response<MixedrealityGetMRSetsResponse>> _mixedrealityMrsetsGet() {
    final Uri $url = Uri.parse('/mixedreality/mrsets');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<MixedrealityGetMRSetsResponse,
        MixedrealityGetMRSetsResponse>($request);
  }

  @override
  Future<Response<D3apiEmptyResponse>> _mixedrealitySelectcameraPost(
      {required MixedrealitySelectCameraRequest? body}) {
    final Uri $url = Uri.parse('/mixedreality/selectcamera');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }

  @override
  Future<Response<D3apiEmptyResponse>>
      _mixedrealitySelectspatialcalibrationPost(
          {required MixedrealitySelectSpatialCalibrationRequest? body}) {
    final Uri $url = Uri.parse('/mixedreality/selectspatialcalibration');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }

  @override
  Future<Response<MixedrealityListSpatialCalibrationsResponse>>
      _mixedrealitySpatialcalibrationsGet() {
    final Uri $url = Uri.parse('/mixedreality/spatialcalibrations');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<MixedrealityListSpatialCalibrationsResponse,
        MixedrealityListSpatialCalibrationsResponse>($request);
  }

  @override
  Future<Response<D3apiEmptyResponse>> _quickcalLineupcurrentposePost(
      {required QuickcalLineUpCurrentPoseRequest? body}) {
    final Uri $url = Uri.parse('/quickcal/lineupcurrentpose');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }

  @override
  Future<Response<QuickcalListReferencePointsResponse>>
      _quickcalReferencepointsGet() {
    final Uri $url = Uri.parse('/quickcal/referencepoints');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<QuickcalListReferencePointsResponse,
        QuickcalListReferencePointsResponse>($request);
  }

  @override
  Future<Response<D3apiEmptyResponse>> _quickcalResetlineupPost(
      {required QuickcalResetLineUpRequest? body}) {
    final Uri $url = Uri.parse('/quickcal/resetlineup');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }

  @override
  Future<Response<RenderstreamGetAssignersResponse>>
      _renderstreamAssignersGet() {
    final Uri $url = Uri.parse('/renderstream/assigners');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<RenderstreamGetAssignersResponse,
        RenderstreamGetAssignersResponse>($request);
  }

  @override
  Future<Response<D3apiEmptyResponse>> _renderstreamFailoverPost(
      {required RenderstreamFailoverRequest? body}) {
    final Uri $url = Uri.parse('/renderstream/failover');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }

  @override
  Future<Response<RenderstreamGetLayerConfigResponse>>
      _renderstreamLayerconfigGet({
    String? uid,
    String? name,
  }) {
    final Uri $url = Uri.parse('/renderstream/layerconfig');
    final Map<String, dynamic> $params = <String, dynamic>{
      'uid': uid,
      'name': name,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<RenderstreamGetLayerConfigResponse,
        RenderstreamGetLayerConfigResponse>($request);
  }

  @override
  Future<Response<RenderstreamGetLayersResponse>> _renderstreamLayersGet() {
    final Uri $url = Uri.parse('/renderstream/layers');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<RenderstreamGetLayersResponse,
        RenderstreamGetLayersResponse>($request);
  }

  @override
  Future<Response<RenderstreamGetLayerStatusResponse>>
      _renderstreamLayerstatusGet({
    String? uid,
    String? name,
  }) {
    final Uri $url = Uri.parse('/renderstream/layerstatus');
    final Map<String, dynamic> $params = <String, dynamic>{
      'uid': uid,
      'name': name,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<RenderstreamGetLayerStatusResponse,
        RenderstreamGetLayerStatusResponse>($request);
  }

  @override
  Future<Response<RenderstreamGetPoolsResponse>> _renderstreamPoolsGet() {
    final Uri $url = Uri.parse('/renderstream/pools');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<RenderstreamGetPoolsResponse,
        RenderstreamGetPoolsResponse>($request);
  }

  @override
  Future<Response<D3apiEmptyResponse>> _renderstreamRestartlayersPost(
      {required RenderstreamRestartLayersRequest? body}) {
    final Uri $url = Uri.parse('/renderstream/restartlayers');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }

  @override
  Future<Response<D3apiEmptyResponse>> _renderstreamStartlayersPost(
      {required RenderstreamStartLayersRequest? body}) {
    final Uri $url = Uri.parse('/renderstream/startlayers');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }

  @override
  Future<Response<D3apiEmptyResponse>> _renderstreamStoplayersPost(
      {required RenderstreamStopLayersRequest? body}) {
    final Uri $url = Uri.parse('/renderstream/stoplayers');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }

  @override
  Future<Response<D3apiEmptyResponse>> _renderstreamSynclayersPost(
      {required RenderstreamSyncLayersRequest? body}) {
    final Uri $url = Uri.parse('/renderstream/synclayers');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }

  @override
  Future<Response<D3apiEmptyResponse>> _sequencingChangeindirectionsPost(
      {required SequencingChangeIndirectionsRequest? body}) {
    final Uri $url = Uri.parse('/sequencing/changeindirections');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }

  @override
  Future<Response<SequencingListAvailableResourcesResponse>>
      _sequencingIndirectionresourcesGet({
    String? uid,
    String? name,
  }) {
    final Uri $url = Uri.parse('/sequencing/indirectionresources');
    final Map<String, dynamic> $params = <String, dynamic>{
      'uid': uid,
      'name': name,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<SequencingListAvailableResourcesResponse,
        SequencingListAvailableResourcesResponse>($request);
  }

  @override
  Future<Response<SequencingListIndirectionsResponse>>
      _sequencingIndirectionsGet() {
    final Uri $url = Uri.parse('/sequencing/indirections');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<SequencingListIndirectionsResponse,
        SequencingListIndirectionsResponse>($request);
  }

  @override
  Future<Response<StatusListHealthResponse>> _statusHealthGet() {
    final Uri $url = Uri.parse('/status/health');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<StatusListHealthResponse, StatusListHealthResponse>($request);
  }

  @override
  Future<Response<StatusListNotificationsResponse>> _statusNotificationsGet() {
    final Uri $url = Uri.parse('/status/notifications');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<StatusListNotificationsResponse,
        StatusListNotificationsResponse>($request);
  }

  @override
  Future<Response<StatusGetProjectResponse>> _statusProjectGet() {
    final Uri $url = Uri.parse('/status/project');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<StatusGetProjectResponse, StatusGetProjectResponse>($request);
  }

  @override
  Future<Response<StatusGetSessionResponse>> _statusSessionGet() {
    final Uri $url = Uri.parse('/status/session');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<StatusGetSessionResponse, StatusGetSessionResponse>($request);
  }

  @override
  Future<Response<TransportGetActiveTransportResponse>>
      _transportActivetransportGet() {
    final Uri $url = Uri.parse('/transport/activetransport');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<TransportGetActiveTransportResponse,
        TransportGetActiveTransportResponse>($request);
  }

  @override
  Future<Response<TransportListAnnotationsResponse>> _transportAnnotationsGet({
    String? uid,
    String? name,
  }) {
    final Uri $url = Uri.parse('/transport/annotations');
    final Map<String, dynamic> $params = <String, dynamic>{
      'uid': uid,
      'name': name,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<TransportListAnnotationsResponse,
        TransportListAnnotationsResponse>($request);
  }

  @override
  Future<Response<D3apiEmptyResponse>> _transportBrightnessPost(
      {required TransportSetBrightnessRequest? body}) {
    final Uri $url = Uri.parse('/transport/brightness');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }

  @override
  Future<Response<D3apiEmptyResponse>> _transportEngagedPost(
      {required TransportSetEngagedRequest? body}) {
    final Uri $url = Uri.parse('/transport/engaged');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }

  @override
  Future<Response<D3apiEmptyResponse>> _transportGotoframePost(
      {required TransportGoToFrameRequest? body}) {
    final Uri $url = Uri.parse('/transport/gotoframe');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }

  @override
  Future<Response<D3apiEmptyResponse>> _transportGotonextsectionPost(
      {required TransportGoToNextSectionRequest? body}) {
    final Uri $url = Uri.parse('/transport/gotonextsection');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }

  @override
  Future<Response<D3apiEmptyResponse>> _transportGotonexttrackPost(
      {required TransportGoToNextTrackRequest? body}) {
    final Uri $url = Uri.parse('/transport/gotonexttrack');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }

  @override
  Future<Response<D3apiEmptyResponse>> _transportGotonotePost(
      {required TransportGoToNoteRequest? body}) {
    final Uri $url = Uri.parse('/transport/gotonote');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }

  @override
  Future<Response<D3apiEmptyResponse>> _transportGotoprevsectionPost(
      {required TransportGoToPrevSectionRequest? body}) {
    final Uri $url = Uri.parse('/transport/gotoprevsection');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }

  @override
  Future<Response<D3apiEmptyResponse>> _transportGotoprevtrackPost(
      {required TransportGoToPrevTrackRequest? body}) {
    final Uri $url = Uri.parse('/transport/gotoprevtrack');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }

  @override
  Future<Response<D3apiEmptyResponse>> _transportGotosectionPost(
      {required TransportGoToSectionRequest? body}) {
    final Uri $url = Uri.parse('/transport/gotosection');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }

  @override
  Future<Response<D3apiEmptyResponse>> _transportGototagPost(
      {required TransportGoToTagRequest? body}) {
    final Uri $url = Uri.parse('/transport/gototag');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }

  @override
  Future<Response<D3apiEmptyResponse>> _transportGototimePost(
      {required TransportGoToTimeRequest? body}) {
    final Uri $url = Uri.parse('/transport/gototime');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }

  @override
  Future<Response<D3apiEmptyResponse>> _transportGototimecodePost(
      {required TransportGoToTimeCodeRequest? body}) {
    final Uri $url = Uri.parse('/transport/gototimecode');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }

  @override
  Future<Response<D3apiEmptyResponse>> _transportGototrackPost(
      {required TransportGoToTrackRequest? body}) {
    final Uri $url = Uri.parse('/transport/gototrack');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }

  @override
  Future<Response<D3apiEmptyResponse>> _transportPlayPost(
      {required TransportPlayRequest? body}) {
    final Uri $url = Uri.parse('/transport/play');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }

  @override
  Future<Response<D3apiEmptyResponse>> _transportPlayloopsectionPost(
      {required TransportPlayLoopSectionRequest? body}) {
    final Uri $url = Uri.parse('/transport/playloopsection');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }

  @override
  Future<Response<D3apiEmptyResponse>> _transportPlaysectionPost(
      {required TransportPlaySectionRequest? body}) {
    final Uri $url = Uri.parse('/transport/playsection');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }

  @override
  Future<Response<D3apiEmptyResponse>> _transportReturntostartPost(
      {required TransportReturnToStartRequest? body}) {
    final Uri $url = Uri.parse('/transport/returntostart');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }

  @override
  Future<Response<TransportListSetListsResponse>> _transportSetlistsGet() {
    final Uri $url = Uri.parse('/transport/setlists');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<TransportListSetListsResponse,
        TransportListSetListsResponse>($request);
  }

  @override
  Future<Response<D3apiEmptyResponse>> _transportStopPost(
      {required TransportStopRequest? body}) {
    final Uri $url = Uri.parse('/transport/stop');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }

  @override
  Future<Response<TransportListTracksResponse>> _transportTracksGet() {
    final Uri $url = Uri.parse('/transport/tracks');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<TransportListTracksResponse,
        TransportListTracksResponse>($request);
  }

  @override
  Future<Response<D3apiEmptyResponse>> _transportVolumePost(
      {required TransportSetVolumeRequest? body}) {
    final Uri $url = Uri.parse('/transport/volume');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }
}
