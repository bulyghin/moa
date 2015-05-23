//
// Codes for image download errors
//

import Foundation

public enum MoaHttpImageErrors: Int {
  // Response HTTP status code is not 200
  case HttpStatusCodeIsNot200 = -1
  
  // Response is missing Content-Type http header
  case MissingResponseContentTypeHttpHeader = -2
  
  // Response Content-Type http header is not an image type
  case NotAnImageContentTypeInResponseHttpHeader = -3
  
  // Failed to convert reponse data to UIImage
  case FailedToReadImageData = -4

  var new: NSError {
    return NSError(domain: "MoaHttpImageErrorDomain", code: rawValue, userInfo: nil)
  }
}