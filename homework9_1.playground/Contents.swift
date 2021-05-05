import UIKit
import Foundation

extension URL{
    func withQueries(_queries:[String:String]) -> URL?{
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = _queries.compactMap{
            URLQueryItem(name: $0.0, value: $0.1)
        }
        return components?.url
    }
}
let baseurl = URL(string: "https://api.nasa.gov/planetary/apod")
let query:[String:String] = [
    "api_key" : "DEMO_KEY",
    "date" : "2011-07-13"
]
let url = baseurl?.withQueries(_queries: query)!

let task = URLSession.shared.dataTask(with: url!){
    (data,response,error) in
        if let data = data,
            let jsonobj
            = try? JSONSerialization.jsonObject(with: data, options: .mutableLeaves),
            let jsn = jsonobj as? [String:Any]
        {
            let pic_url = jsn["url"] as! String
            print(pic_url)
            
        }
    
}
task.resume()


