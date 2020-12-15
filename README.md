# HttpUtils

HttpUtils is a Swift package containing utilities for commonly used HTTP functions.

**Features:**

* Enumerated HTTP methods
* Common HTTP headers with URLRequest/HTTPURLResponse extensions
* Common HTTP status code ranges

**System Requirements:**

* Xcode 11+
* Swift 5.1+


## Installation

### Swift Package Manager

Add the following to your Package.swift file:

```swift
dependencies: [
    .package(url: "https://github.com/wescarlan/HttpUtils", from: "0.1.0")
]
```

## Usage

**Importing:**

```swift
import HttpUtils
```

**Creating URL requests:**

```swift
// Create a URL request.
var urlRequest = URLRequest(url: URL(string: "www.example.com")!, method: .get)
urlRequest.setValue("authentication_token", forHTTPHeaderField: .authorization)
urlRequest.accept([.application(.json)])

URLSession.shared.dataTask(with: urlRequest).resume()
```

**Parsing HTTP URL responses:**

```swift
URLSession.shared.dataTask(with: urlRequest) { (data, urlResponse, error) in
    // Parse the HTTP URL response.
    if let httpUrlResponse = urlResponse as? HTTPURLResponse {
        // Parse "Expires" header.
        let expiresHeaderValue = httpUrlResponse.value(forHttpHeaderField: .expires)
        
        // Handle different status code ranges.
        switch httpUrlResponse.statusCode {
        case HTTP.StatusCode.successRange:
            // Handle status codes 200-299.
        default:
            // Handle all other status codes.
    }
}.resume()
```


## License

HTTPUtils is released under the [MIT License](LICENSE)
