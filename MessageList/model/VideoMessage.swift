
public class VideoMessage: Message {
    
    public var url: String
    
    public var duration: Int
    
    public var thumbnail: String
    
    public var width: Int
    
    public var height: Int
    
    public init(id: String, user: User, status: MessageStatus, time: String, url: String, duration: Int, thumbnail: String, width: Int, height: Int) {
        self.url = url
        self.duration = duration
        self.thumbnail = thumbnail
        self.width = width
        self.height = height
        super.init(id: id, user: user, status: status, time: time)
    }
    
}
