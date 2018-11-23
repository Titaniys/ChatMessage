//
//  Message.swift
//  ChatMessageKit
//
//  Created by Чистяков Вадим Евгеньевич on 09/11/2018.
//  Copyright © 2018 Chist. All rights reserved.
//

import UIKit
import Foundation
import MessageKit

struct Message {
    let member: Member
    let text: String
    let messageId: String
}

extension Message: MessageType {
    var sentDate: Date {
        return Date()
    }

    var kind: MessageKind {
        return .text(text)
    }

    var sender: Sender {
        return Sender(id: member.name, displayName: member.name)
    }
}
