//
//  FAQController.swift
//  boblyoutline
//
//  Created by Administrador on 4/07/18.
//  Copyright © 2018 Avalogics. All rights reserved.
//

import UIKit
import FAQView

class FAQController: UIViewController{
    // MARK: - Let-Var
    var faqView: FAQView!
    var backgroundImage = UIImageView()
    // MARK: - Outlets
    @IBOutlet weak var faqViewContainer: UIView!
    
    // MARK: - LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()
        // setting up general actions/delegates/Core
        setUpActions()
        
        // setting up UI elements to be used through the code
        setUpUI()
        
    }
    
    // MARK: - SetUps / Funcs
    func setUpUI(){
        addFaqViewConstraints()
    }
    
    func setUpActions(){
        let items = [FAQItem(question: "What is reddit?", answer: "reddit is a source for what's new and popular on the web."),
                     FAQItem(question: "How is a submission's score determined?", answer: "A submission's score is simply the number of upvotes minus the number of downvotes.")]
        
        faqView = FAQView(frame: view.frame, items: items)
        backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = #imageLiteral(resourceName: "Background")
        backgroundImage.contentMode =  .scaleAspectFill
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        
        faqView.clipsToBounds = true
        faqView.insertSubview(backgroundImage, at: 0)
        faqViewContainer.addSubview(faqView)
        faqView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func gettingData(){}
    
    func addFaqViewConstraints() {
        let faqViewTrailing = NSLayoutConstraint(item: faqView, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailingMargin, multiplier: 1, constant: 17)
        let faqViewLeading = NSLayoutConstraint(item: faqView, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leadingMargin, multiplier: 1, constant: -17)
        let faqViewTop = NSLayoutConstraint(item: faqView, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 0)
        let faqViewBottom = NSLayoutConstraint(item: self.view, attribute: .bottom, relatedBy: .equal, toItem: faqView, attribute: .bottom, multiplier: 1, constant: 0)
        
        let imageTrailing = NSLayoutConstraint(item: backgroundImage, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailingMargin, multiplier: 1, constant: 0)
        let imageTrailing2 = NSLayoutConstraint(item: backgroundImage, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leadingMargin, multiplier: 1, constant: 0)
        let imageTrailing3 = NSLayoutConstraint(item: backgroundImage, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 0)
        let imageTrailing4 = NSLayoutConstraint(item: self.view, attribute: .bottom, relatedBy: .equal, toItem: faqView, attribute: .bottom, multiplier: 1, constant: 0)
        
        NSLayoutConstraint.activate([faqViewTop, faqViewBottom, faqViewLeading, faqViewTrailing, imageTrailing, imageTrailing2, imageTrailing3, imageTrailing4])
    }
    
    // MARK: - Objective C

}
