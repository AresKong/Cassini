//
//  ViewController.swift
//  Cassini
//
//  Created by Weirui Kong on 2016-07-19.
//  Copyright © 2016 Weirui Kong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let ivc = segue.destinationViewController as? ImageViewController {
            if let identifer = segue.identifier {
                switch identifer {
                    case "Pluto":
                        ivc.imageURL = DemoURL.NASA.Pluto
                        ivc.title = "Pluto"
                    case "Arctic":
                        ivc.imageURL = DemoURL.NASA.Arctic
                        ivc.title = "Arctic"
                    case "Antarctica":
                        ivc.imageURL = DemoURL.NASA.Antarctica
                        ivc.title = "Antarctica"
                default: break
                }
            }
        }
    }


}

