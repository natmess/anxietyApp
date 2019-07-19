//
//  Sound.swift
//  anxietyApp
//
//  Created by Nathalie  on 7/18/19.
//  Copyright © 2019 Nathalie. All rights reserved.
//

import Foundation
import UIKit

class Sound {
    var name: String
    var file: String
    var volume: Int
    var image: UIImage
    init(name: String, file: String, volume: Int = 1, image: UIImage) {
        self.name = name
        self.file = file
        self.volume = volume
        self.image = image
    }
    
    static var allSounds = [Sound.init(name: "Underwater Bubbles", file: "bubbles", image: UIImage.init(named: "underwater")!)]
}
