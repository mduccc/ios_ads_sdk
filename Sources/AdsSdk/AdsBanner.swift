import SwiftUI
import Flutter

@available(iOS 13.0, *)
public struct AdsBanner: UIViewControllerRepresentable {
    typealias flutterViewController = FlutterViewController
    typealias adsSdk = AdsSdk
    
    public init(){}
    
    public func makeUIViewController(context: Context) -> FlutterViewController {
        let adsSdk = AdsSdk()
        let flutterViewController = FlutterViewController.init(engine: adsSdk.flutterEngine(), nibName: nil, bundle: nil)
        flutterViewController.modalPresentationStyle = .currentContext
        flutterViewController.isViewOpaque = true
        return flutterViewController
    }
    
    public func updateUIViewController(_ uiViewController: FlutterViewController, context: Context) {
        // Updates the state of the specified view controller with new information from SwiftUI.
    }
}
