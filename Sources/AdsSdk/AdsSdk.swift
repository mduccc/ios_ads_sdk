import Flutter

public struct AdsSdk {
    var adsFlutter: AdsSFlutter
    var methodChannel: FlutterMethodChannel

    public init() {
        adsFlutter = AdsSFlutter()
        methodChannel = adsFlutter.methodChannel
    }
    
    // TODO: Implement [presentFlutter]
    public func presentFlutter(){
    }
}
