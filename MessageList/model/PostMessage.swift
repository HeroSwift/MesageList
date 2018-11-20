
public class PostMessage: Message {
    
    public var thumbnail: String
    
    public var title: String
    
    public var desc: String
    
    public var brand: String
    
    public var link: String
    
    public init(id: String, user: User, status: MessageStatus, time: String, thumbnail: String, title: String, desc: String, brand: String, link: String) {
        self.thumbnail = thumbnail
        self.title = title
        self.desc = desc
        self.brand = brand
        self.link = link
        super.init(id: id, user: user, status: status, time: time)
    }
    
}
