import Flutter

class AdsFlutter{
    let channelId = "flutter_ads_sdk"
    
    var flutterEngine: FlutterEngine
    var methodChannel: FlutterMethodChannel
    
    init() {
        flutterEngine = FlutterEngine(name: "flutter_engine")
        flutterEngine.run()
        methodChannel = FlutterMethodChannel.init(name: channelId, binaryMessenger: flutterEngine as! FlutterBinaryMessenger)
        methodChannel.setMethodCallHandler(handle)
    }
    
    // TODO: Implement [handle]
    func handle(call: FlutterMethodCall, result: @escaping FlutterResult) {
    }
}
