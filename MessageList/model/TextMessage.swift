
import UIKit

public class TextMessage: Message {
    
    public var text: String
    
    init(id: String, user: User, status: MessageStatus, timestamp: Int, text: String) {
        self.text = text
        super.init(id: id, user: user, status: status, timestamp: timestamp)
    }
    
}
