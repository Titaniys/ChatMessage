//
//  Member.swift
//  ChatMessageKit
//
//  Created by Чистяков Вадим Евгеньевич on 14/11/2018.
//  Copyright © 2018 Chist. All rights reserved.
//

import UIKit

struct Member {
    let name: String
    let color: UIColor
}

extension Member {
    var toJSON: Any {
        return [
            "name" : name,
            "color" : color.hexString
        ]
    }

    init?(fromJSON json: Any) {
        guard
            let data = json as? [String: Any],
            let name = data["name"] as? String,
            let hexColor = data["color"] as? String
        else {
            print("Couldn't parse member")
            return nil
        }
        self.name = name
        self.color = UIColor(hex: hexColor)
    }
}
