
public class Message {
    
    public var id: String
    
    public var user: User
    
    public var status: MessageStatus
    
    public var time: String
    
    public init(id: String, user: User, status: MessageStatus, time: String) {
        self.id = id
        self.user = user
        self.status = status
        self.time = time
    }
    
}
