import Flutter

struct AdsSdk {
    var adsFlutter: AdsFlutter
    var methodChannel: FlutterMethodChannel
    
    func flutterEngine() -> FlutterEngine {
       return adsFlutter.flutterEngine
    }
    
    init() {
        adsFlutter = AdsFlutter()
        methodChannel = adsFlutter.methodChannel
    }
}
