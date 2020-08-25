class RestManager {

    var requestHttpHeaders = RestEntity()
 
    var urlQueryParameters = RestEntity()
 
    var httpBodyParameters = RestEntity()
}

extension RestManager {
    enum HttpMethod: String { 
        case get
        case post
        case put
        case patch
        case delete
    }
    
    struct RestEntity {
        private var values: [String: String] = [:]

        mutating func add (value: String, forkey key: String) {
            values[key] = value
        }
         func value(forKey key: String) -> String? {
            return values[key]
        }
 
        func allValues() -> [String: String] {
            return values
        }
 
        func totalItems() -> Int {
            return values.count
        }
        struct Response {
            var response: URLResponse?
            var httpStatusCode: Int = 0
            var headers = RestEntity()
}
    }

}