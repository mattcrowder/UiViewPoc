//
//  MenuButton.swift
//  UiViewPoc
//
//  Created by Matt Crowder on 11/20/19.
//  Copyright © 2019 Matt Crowder. All rights reserved.
//

import Foundation
import UIKit

let MenuButtonMaxEdgeLength: CGFloat = 15.0

class MenuButton : UIButton {
    override init(frame: CGRect) {
        super.init(frame: CGRect(x: 0, y: 0, width: MenuButtonMaxEdgeLength, height: MenuButtonMaxEdgeLength))
        // Do any additional setup after loading the view.

        NotificationCenter.default.addObserver(self, selector: #selector(deviceRotated), name: UIDevice.orientationDidChangeNotification, object: nil)
//        self.backgroundColor = .red
        let image: UIImage = UIImage(named: "nophoto")!.withRenderingMode(.alwaysTemplate)
        let heightScale = image.size.height / self.edgeLength
        let widthScale = image.size.width / self.edgeLength
        let scale = min(heightScale, widthScale)
        
//        image.setValue(scale, forKey: "scale")
        self.setImage(image, for: .normal)
//        self.setImage(UIImage(data: image, scale: scale), for: .normal)
//        [self setImage:[UIImage imageWithData:UIImagePNGRepresentation(image) scale:scale]
//              forState:UIControlStateNormal];
    }

//    override func viewWillDisappear(_ animated: Bool) {
//        NotificationCenter.default.removeObserver(self, name: UIDevice.orientationDidChangeNotification, object: nil)
//    }
    @objc func deviceRotated(){
        let edgeLength = self.edgeLength
        if UIDevice.current.orientation.isLandscape {
            setBoundsWidth(width: 15)
            setBoundsHeight(height: 15)
        } else {
            setBoundsWidth(width: edgeLength)
            setBoundsHeight(height: edgeLength)
        }
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    var edgeLength: CGFloat  {
//        let superviewHeight = self.superview!.bounds.size.height
//        if superviewHeight == 0 {
            return MenuButtonMaxEdgeLength
//        }
//        return min(MenuButtonMaxEdgeLength, superviewHeight)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        
        
        
    }
   
    func setBoundsWidth(width: CGFloat) {
        var bounds = self.bounds
        bounds.size.width = width
        self.bounds = bounds
    }
    
    func setBoundsHeight(height: CGFloat) {
        var bounds = self.bounds
        bounds.size.height = height
        self.bounds = bounds
    }
}
