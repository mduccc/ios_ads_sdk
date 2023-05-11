import Flutter

public class AdsSFlutter{
    let channelId = "flutter_ads_sdk"
    
    public var flutterEngine: FlutterEngine
    public var methodChannel: FlutterMethodChannel
    
    public init() {
        flutterEngine = FlutterEngine(name: "flutter_engine")
        flutterEngine.run()
        methodChannel = FlutterMethodChannel.init(name: channelId, binaryMessenger: flutterEngine as! FlutterBinaryMessenger)
        methodChannel.setMethodCallHandler(handle)
    }
    
    // TODO: Implement [handle]
    public func handle(call: FlutterMethodCall, result: @escaping FlutterResult) {
    }
}
