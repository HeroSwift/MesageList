
public class ImageMessage: Message {
    
    public var url: String
    
    public var width: Int
    
    public var height: Int
    
    public init(id: String, user: User, status: MessageStatus, timestamp: Int, url: String, width: Int, height: Int) {
        self.url = url
        self.width = width
        self.height = height
        super.init(id: id, user: user, status: status, timestamp: timestamp)
    }
    
}
