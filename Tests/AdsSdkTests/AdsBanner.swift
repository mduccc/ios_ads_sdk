import SwiftUI
import Flutter

@available(iOS 13.0, *)
struct AdsBanner: UIViewControllerRepresentable {
    var UIViewControllerType: FlutterViewController

    func makeUIViewController(context: Context) -> FlutterViewController {
        let flutterViewController = FlutterViewController(
          project: nil,
          nibName: nil,
          bundle: nil)
        flutterViewController.modalPresentationStyle = .currentContext
        flutterViewController.isViewOpaque = true
        return flutterViewController
    }
    
    func updateUIViewController(_ uiViewController: FlutterViewController, context: Context) {
        // Updates the state of the specified view controller with new information from SwiftUI.
    }
}
