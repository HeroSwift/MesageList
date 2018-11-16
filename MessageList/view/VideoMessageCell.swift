
import UIKit

class VideoMessageCell: MessageCell {
    
    var avatarView = UIImageView()
    
    var nameView = UILabel()
    
    var thumbnailView = UIImageView()
    
    var thumbnailWidthConstraint: NSLayoutConstraint!
    var thumbnailHeightConstraint: NSLayoutConstraint!
    
    var playView = UIImageView()
    
    var durationView = UILabel()
    
    var spinnerView = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.gray)
    
    var failureView = UIImageView()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func create(configuration: MessageListConfiguration) {
        
        // 头像
        avatarView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(avatarView)
        
        // 昵称
        nameView.numberOfLines = 1
        nameView.translatesAutoresizingMaskIntoConstraints = false
        
        // 视频缩略图
        thumbnailView.clipsToBounds = true
        thumbnailView.layer.cornerRadius = configuration.videoMessageBorderRadius
        thumbnailView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(thumbnailView)
        
        // 播放按钮
        playView.image = configuration.videoMessagePlayImage
        playView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(playView)
        
        // 视频时长
        durationView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(durationView)
        
        // spinner icon
        spinnerView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(spinnerView)
        
        // failure icon
        failureView.translatesAutoresizingMaskIntoConstraints = false
        failureView.image = configuration.messageFailureIcon
        contentView.addSubview(failureView)
        
        addClickHandler(view: contentView, selector: #selector(onMessageClick))
        addClickHandler(view: avatarView, selector: #selector(onUserAvatarClick))
        addClickHandler(view: thumbnailView, selector: #selector(onContentClick))
        addClickHandler(view: spinnerView, selector: #selector(onSpinnerIconClick))
        addClickHandler(view: failureView, selector: #selector(onFailureIconClick))
        addLongPressHandler(view: thumbnailView, selector: #selector(onContentLongPress))
        
        thumbnailWidthConstraint = NSLayoutConstraint(item: thumbnailView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: 0)
        thumbnailHeightConstraint = NSLayoutConstraint(item: thumbnailView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 0)
        
        contentView.addConstraints([
            thumbnailWidthConstraint,
            thumbnailHeightConstraint
        ])
        
    }
    
    override func update(configuration: MessageListConfiguration, message: Message) {
        
        let videoMessage = message as! VideoMessage
        
        let avatar = message.user.avatar
        if avatar != "" {
            configuration.loadImage(imageView: avatarView, url: avatar)
        }
        
        nameView.text = message.user.name
        nameView.sizeToFit()
        
        durationView.text = formatDuration(videoMessage.duration)
        durationView.sizeToFit()
        
        let thumbnail = videoMessage.thumbnail
        if thumbnail != "" {
            configuration.loadImage(imageView: thumbnailView, url: thumbnail)
            thumbnailWidthConstraint.constant = CGFloat(videoMessage.width)
            thumbnailHeightConstraint.constant = CGFloat(videoMessage.height)
            setNeedsLayout()
        }
        
        if message.status == .sendIng {
            spinnerView.startAnimating()
        }
        else {
            spinnerView.stopAnimating()
        }
        
        failureView.isHidden = message.status != .sendFailure
        
    }
    
    private func formatDuration(_ duration: Int) -> String {
    
        let MINUTE = 60
        let HOUR = MINUTE * 60
        
        var seconds = duration
        let hours = seconds / HOUR
        
        seconds -= hours * HOUR
        
        let minutes = seconds / MINUTE
        
        seconds -= minutes * MINUTE
        
        var result = lpad(minutes) + ":" + lpad(seconds)
        
        if hours > 0 {
            result = lpad(hours) + ":" + result
        }
        
        return result
    
    }
    
    private func lpad(_ value: Int) -> String {
        if value > 9 {
            return "\(value)"
        }
        return "0\(value)"
    }
    
}
