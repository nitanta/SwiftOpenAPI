//
//  ViewController.swift
//  SwiftOpenAPI
//
//  Created by Nitanta Adhikari on 08/02/2024.
//

import UIKit
import OpenAPIRuntime
import OpenAPIURLSession

// https://ocpp-doc.saascharge.com/doc/swagger-ui/index.html#

class ViewController: UIViewController {
    
    let transport: ClientTransport = URLSessionTransport()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Apple")
        // Do any additional setup after loading the view.
//        Task {
//            do {
//                let client = Client(
//                    serverURL: try Servers.server1(),
//                    transport: transport
//                )
//                
//                let response = try await client.get_sol_v1_sol_(query: .init(api_key: "x"))
//                switch response {
//                case .ok(let okResponse):
//                    // Switch over the response content type.
//                    switch okResponse.body {
//                    case .json(let location):
//                        // Print the greeting message.
//                        debugPrint("👋 \(location.city)")
//                    }
//                case .undocumented(statusCode: let statusCode, _):
//                    // Handle HTTP response status codes not documented in the OpenAPI document.
//                    
//                    debugPrint("🥺 undocumented response: \(statusCode)")
//                }
//                
//            } catch {
//                
//            }
//        }
        
        
        

    }


}

