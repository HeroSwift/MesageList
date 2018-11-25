
import Foundation

@objc public enum MessageStatus: Int, RawRepresentable {
    
    // 发送成功
    case sendSuccess;
    
    // 发送失败
    case sendFailure;
    
    // 正在发送
    case sendIng;
    
}
