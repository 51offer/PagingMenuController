//
//  ViewController.swift
//  PagingMenuControllerDemo2
//
//  Created by Yusuke Kita on 7/12/15.
//  Copyright (c) 2015 kitasuke. All rights reserved.
//

import UIKit
import PagingMenuController

class ViewController: UIViewController, PagingMenuControllerDelegate {

    var pagingMenuController: PagingMenuController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.whiteColor()
        
        let viewController = ViewController1()
        viewController.title = "First VC"
        
        let viewController2 = ViewController2()
        viewController2.title = "Second VC"
        
        let viewController3 = ViewController3()
        viewController3.title = "Third VC"
        
        let viewControllers = [viewController, viewController2, viewController3]
        
        let options = PagingMenuOptions()
        options.menuItemMargin = 5
        options.menuHeight = 60
        options.menuDisplayMode = .SegmentedControl
        
        pagingMenuController = PagingMenuController(viewControllers: viewControllers, options: options, delegate: self)
        pagingMenuController.view.frame.origin.y += 64
        pagingMenuController.view.frame.size.height -= 64
        addChildViewController(pagingMenuController)
        view.addSubview(pagingMenuController.view)
        pagingMenuController.didMoveToParentViewController(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - PagingMenuControllerDelegate
    
    func willMoveToPageMenuController(menuController: UIViewController, previousMenuController: UIViewController) {
        
    }
    
    func didMoveToPageMenuController(menuController: UIViewController, previousMenuController: UIViewController) {
        
    }
    
    func didShowPageMenuController(currentMenuController: UIViewController) {
        print(currentMenuController.title)
    }

}

