//
//  MenuItemDetailViewController.swift
//  Restaurant
//
//  Created by Vincent on 09/03/2018.
//  Copyright © 2018 Native App Studio. All rights reserved.
//

import UIKit

class MenuItemDetailViewController: UIViewController {
    
    var delegate: AddToOrderDelegate?
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var addToOrderButton: UIButton!
    
    var menuItem: MenuItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        setupDelegate()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateUI() {
        titleLabel.text = menuItem.name
        priceLabel.text = String(format: "$%.2f", menuItem.price)
        descriptionLabel.text = menuItem.description
        addToOrderButton.layer.cornerRadius = 5.0
        MenuController.shared.fetchImage(url: menuItem.imageURL) {
            (image) in guard let image = image else {return}
            DispatchQueue.main.async {
                self.imageView.image = image
            }
        }
    }
    
    /// Set up theh delegate for the order table view controller
    func setupDelegate() {
        if let navController = tabBarController?.viewControllers?.last as? UINavigationController,
            let orderTableViewController = navController.viewControllers.first as? OrderTableViewController {
            delegate = orderTableViewController
        }
    }
    
    /// Add item to order, animate button
    @IBAction func addToOrderButtonTapped(_ sender: Any) {
        UIView.animate(withDuration: 0.3) {
            self.addToOrderButton.transform =
                CGAffineTransform(scaleX: 3.0, y: 3.0)
            self.addToOrderButton.transform =
                CGAffineTransform(scaleX: 1.0, y: 1.0)
        }
        delegate?.added(menuItem: menuItem)
    }
}


protocol AddToOrderDelegate {
    func added(menuItem: MenuItem)
}
