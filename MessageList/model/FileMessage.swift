
import Foundation

@objc public class FileMessage: Message {
    
    @objc public var type: FileType
    
    @objc public var title: String
    
    @objc public var size: Int

    @objc public var link: String
    
    @objc public init(id: String, user: User, status: MessageStatus, time: String, canShare: Bool, canRecall: Bool, canDelete: Bool, type: FileType, title: String, size: Int, link: String) {
        self.type = type
        self.title = title
        self.size = size
        self.link = link
        super.init(id: id, user: user, status: status, time: time, canShare: canShare, canRecall: canRecall, canDelete: canDelete)
    }
    
    
}
