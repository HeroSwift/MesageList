
public class AudioMessage: Message {
    
    public var url: String
    
    public var duration: Int
    
    public init(id: String, user: User, status: MessageStatus, time: String, url: String, duration: Int) {
        self.url = url
        self.duration = duration
        super.init(id: id, user: user, status: status, time: time)
    }
    
}
