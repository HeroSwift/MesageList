
public class ImageMessage: Message {
    
    public var url: String
    
    public var width: Int
    
    public var height: Int
    
    public init(id: String, user: User, status: MessageStatus, time: String, url: String, width: Int, height: Int) {
        self.url = url
        self.width = width
        self.height = height
        super.init(id: id, user: user, status: status, time: time)
    }
    
}
