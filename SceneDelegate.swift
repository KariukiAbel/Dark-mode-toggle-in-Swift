import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

private(set) static var shared: SceneDelegate?    

func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions){
    Self.shared = self
    //use this method to optionally configure and attach the UIWindow 'window' to the provided UIWindowScene 'scene'
    //if using a storyboard, the 'window' property will automatically be initialized and attatched to the scene
    //This delegate does not imply the connecting scene or session are new (see 'application:configurationForConnectingSceneSession' instead)

    //create the SwiftUI view that provides the window contents
    let contentView = ContentView()

    //use a UIHostingController as window root view controller
    if let windowScene = scene as? UIWindowScene {
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = UIHostingController(rootView: contentView)
        self.window = window
        window.makeKeyAndVisible()
        
    }
    
}    
}