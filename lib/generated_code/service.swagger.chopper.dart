//Generated code

part of 'service.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$Service extends Service {
  _$Service([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = Service;

  @override
  Future<Response<D3apiEmptyResponse>> _projectForcequitlocalprojectPost() {
    final Uri $url = Uri.parse('/project/forcequitlocalproject');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }

  @override
  Future<Response<D3apiEmptyResponse>> _projectQuitlocalprojectPost() {
    final Uri $url = Uri.parse('/project/quitlocalproject');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }

  @override
  Future<Response<D3apiEmptyResponse>> _projectRestartlocalprojectPost() {
    final Uri $url = Uri.parse('/project/restartlocalproject');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<D3apiEmptyResponse, D3apiEmptyResponse>($request);
  }

  @override
  Future<Response<D3apiEmptyResponse>> _projectStartlocalprojectPost(
      {required ProjectStartLocalProjectRequest? body}) {
    final Uri $url = Uri.parse('/project/startlocalproject');
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
  Future<Response<SystemDetectSystemsResponse>> _systemDetectsystemsGet() {
    final Uri $url = Uri.parse('/system/detectsystems');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<SystemDetectSystemsResponse,
        SystemDetectSystemsResponse>($request);
  }

  @override
  Future<Response<SystemGetGPUOutputsReponse>> _systemGpuoutputsGet() {
    final Uri $url = Uri.parse('/system/gpuoutputs');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<SystemGetGPUOutputsReponse, SystemGetGPUOutputsReponse>($request);
  }

  @override
  Future<Response<SystemGetNetworkAdaptersResponse>>
      _systemNetworkadaptersGet() {
    final Uri $url = Uri.parse('/system/networkadapters');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<SystemGetNetworkAdaptersResponse,
        SystemGetNetworkAdaptersResponse>($request);
  }

  @override
  Future<Response<SystemListProjectsResponse>> _systemProjectsGet() {
    final Uri $url = Uri.parse('/system/projects');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<SystemListProjectsResponse, SystemListProjectsResponse>($request);
  }

  @override
  Future<Response<SystemGetVFCsResponse>> _systemVfcsGet() {
    final Uri $url = Uri.parse('/system/vfcs');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<SystemGetVFCsResponse, SystemGetVFCsResponse>($request);
  }
}
