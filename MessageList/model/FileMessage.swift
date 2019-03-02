
import Foundation

@objc public class FileMessage: Message {
    
    @objc public var type: FileType
    
    @objc public var title: String
    
    @objc public var desc: String

    @objc public var link: String
    
    @objc public init(id: String, user: User, status: MessageStatus, time: String, canCopy: Bool, canShare: Bool, canRecall: Bool, canDelete: Bool, type: FileType, title: String, desc: String, link: String) {
        self.type = type
        self.title = title
        self.desc = desc
        self.link = link
        super.init(id: id, user: user, status: status, time: time, canCopy: canCopy, canShare: canShare, canRecall: canRecall, canDelete: canDelete)
    }
    
    
}
