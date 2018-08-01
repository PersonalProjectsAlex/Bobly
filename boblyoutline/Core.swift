// Core.swift
// travi
//
// Created by Administrador on 29/03/18.
//
//
import Foundation
import UIKit
import HexColors
import SwifteriOS
import SwiftMessages
import Alamofire

class Core {
    static let shared = Core()
    private init() {}
    
    //MARK: - UI
    
    //Show Alert Message (function)
     func alert(message: String, title: String, at viewController: UIViewController){
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okayAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alertController.addAction(okayAction)
        viewController.present(alertController, animated: true, completion: nil)
    }
    
    func alertaction() -> UIAlertController {
        let alert = UIAlertController(title: "Did you bring your towel?", message: "It's recommended you bring your towel before continuing.", preferredStyle: .alert)
        
        return alert
    }
    
    func setController() -> BlackListController {
        let storyboard = UIStoryboard(name: GetStoryboards.Followers.rawValue, bundle: nil)
        let vc2 = storyboard.instantiateViewController(withIdentifier: "VC2") as! BlackListController
        return vc2
    }
    
    // Setting basi Swifter
    func setBasicSwifter() -> Swifter{
        var swifter = Swifter(consumerKey: "", consumerSecret: "")
        swifter = Swifter(consumerKey: Constants.consumerKey, consumerSecret:Constants.consumerSecret)
        return swifter
    }
    
    
    //Custom image on BarButton
    func setImageOnLeftBarButton(image: UIImage, at: UIViewController){
        let imageView = UIImageView(image:image)
        let item = UIBarButtonItem(customView: imageView)
        at.navigationItem.leftBarButtonItem = item
    }
    
    //Function to call a general navigation bar on our screens
    func generalNavigation(at: UIViewController) {
        if let navigationController = at.navigationController?.navigationBar {
            navigationController.barTintColor = HexColor("#EC008C")
            navigationController.isTranslucent = false
            navigationController.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
            navigationController.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
            navigationController.shadowImage = UIImage()
        }
    }
    
    // MARK. -Helpers
    
    func setStoryBoardName(storyboard: String, controller: String, at: UIViewController) -> UIViewController{
        return UIStoryboard(name: storyboard, bundle: nil).instantiateViewController(withIdentifier: controller)
        
    }
    
    //getting some dat fro a custom URL for the most part with images
    func getDataFromUrl(url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            completion(data, response, error)
            }.resume()
    }
    
   //Parsing JSON to Data
    func jsonToData(response:JSON) -> Data {
        let jsontoString = String(describing: response)
        let jsonData   = jsontoString.data(using: .utf8)!
        return jsonData
    }
    
    //Show custom message from navbar
    func customAlertNavbar(commerceName: String, description: String)->MessageView{
        //Setting view and custom config
        
        let view = MessageView.viewFromNib(layout: .messageView)
        var config = SwiftMessages.Config()
        // Theme message elements with the warning style.
        view.configureTheme(.success)
        view.button?.setTitle("Ver oferta", for: .normal)
        
        view.backgroundColor = UIColor.black.withAlphaComponent(0.85)
        
        // Add a drop shadow.
        view.configureDropShadow()
        
        // Slide down from the tp.
        config.presentationContext = .window(windowLevel: UIWindowLevelStatusBar)
        config.preferredStatusBarStyle = .lightContent
        config.duration = .forever
        // Set message title, body, and icon. Here, we're overriding the default warning
        // image with an emoji character.
        let iconText = "😱"
        //view.titleLabel?.textColor = HexColor(Colors.mainColor)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 15.0)
        view.bodyLabel?.font = UIFont.systemFont(ofSize: 15.0)
        view.configureContent(title: commerceName, body: description, iconText: iconText)
        
        // Show the message.
        SwiftMessages.show(config: config, view: view)
        return view
    }
    
    //Show custom message from navbar
    func customAlertNavbarBottom(commerceName: String, description: String)->MessageView{
        //Setting view and custom config
        
        let view = MessageView.viewFromNib(layout: .messageView)
        var config = SwiftMessages.Config()
        // Theme message elements with the warning style.
        view.configureTheme(.success)
        view.button?.setTitle("Ver oferta", for: .normal)
        
        view.backgroundColor = UIColor.black.withAlphaComponent(0.85)
        
        // Add a drop shadow.
        view.configureDropShadow()
        
        // Slide down from the tp.
        config.presentationStyle = .bottom
        
        config.preferredStatusBarStyle = .lightContent
        config.duration = .forever
        // Set message title, body, and icon. Here, we're overriding the default warning
        // image with an emoji character.
        let iconText = "😱"
        //view.titleLabel?.textColor = HexColor(Colors.mainColor)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 15.0)
        view.bodyLabel?.font = UIFont.systemFont(ofSize: 15.0)
        view.configureContent(title: commerceName, body: description, iconText: iconText)
        
        // Show the message.
        SwiftMessages.show(config: config, view: view)
        return view
    }
    
    //Logout core
    func logoutNavigation(at: UIViewController){
        //at.dismiss(animated: true, completion: nil)
        //let initialViewController = UIStoryboard(name: "Authentication", bundle:nil).instantiateInitialViewController() as! LaunchController
        //let appDelegate = (UIApplication.shared.delegate as! AppDelegate)
        //appDelegate.window?.rootViewController = initialViewController
    }
    
    // MARK. -Components
    
    
    
    // Register cell at a table view
    func registerCell(at tableView: UITableView, named: String, withIdentifier: String? = nil) {
        let cellNib = UINib(nibName: named, bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: withIdentifier ?? named)
    }
    
    // Register cell at a table view
    func registerCellCollection(at collectionView: UICollectionView, named: String, withIdentifier: String? = nil) {
        let cellNib = UINib(nibName: named, bundle: nil)
        collectionView.register(cellNib, forCellWithReuseIdentifier: withIdentifier ?? named)
    }
    
}



