//
//  Singleton.swift
//  SingletonDemoApp
//
//  Created by Meharoof Najeeb on 14/12/2024.
//

import UIKit

// Main module
extension APIClient {
    func login(completion: (LoggedInUser ) -> Void) {}
}

extension APIClient {
    func loadFeed(completion: ([FeedItem]) -> Void) {}
}

// API module
class APIClient {
    static let instance = APIClient()
    
    func execute(_ urlRequest: URLRequest, completion: (Data) -> Void) {}
}

class MockAPIClient: APIClient {}

// login module
struct LoggedInUser {}

class LoginViewController: UIViewController {
    var login: (((LoggedInUser) -> Void) -> Void)?
    
    func didTapLogin() {
        login? { user in
            // show next screen
        }
    }
}

// Feed module
struct FeedItem {}

struct FeedService {
    var loadFeed: (((FeedItem) -> Void) -> Void)?
    
    func load() {
        loadFeed? { loadedItems in
            // update ui
            
        }
    }
}
