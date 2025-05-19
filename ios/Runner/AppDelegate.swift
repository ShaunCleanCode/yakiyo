import UIKit
import Flutter
import Firebase

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    FirebaseApp.configure()  // ✅ 이 줄이 반드시 있어야 Firebase가 정상 초기화됨
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}