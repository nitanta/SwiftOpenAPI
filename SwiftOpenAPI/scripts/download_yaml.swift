//
//  downloadYAML.swift
//  SwiftOpenAPI
//
//  Created by Nitanta Adhikari on 08/02/2024.
//

import Foundation

func download(url: URL, destination: URL)  async throws {
    print("Start session")
    
    let (data, _) = try await URLSession.shared.data(from: url)
    
    print("Received response, \(data)")
    
//    guard let data = tempLocalURL else {
//        throw NSError(domain: "Download", code: 0, userInfo: [NSLocalizedDescriptionKey: "Failed to download file"])
//        return
//    }
    
//    let fileURL = URL(fileURLWithPath: "path/to/your/file.txt")
    
    do {
        // Write data to the file
        try data.write(to: destinationURL)
        print("Data was successfully written to the file.")
    } catch {
        print("Error writing data to file: \(error)")
    }
}

//func downloadYAMLFile(from url: URL, to destinationURL: URL, completion: @escaping (Error?) -> Void) {
//    print("Start session")
//
//    let (data, _) = try? await URLSession.shared.data(from: url)
//
//    print("Received response")
//
////    let task = URLSession.shared.downloadTask(with: url) { (tempLocalURL, response, error) in
////        print("Received response")
////
////        if let error = error {
////            completion(error)
////            return
////        }
////
//        guard let tempLocalURL = tempLocalURL else {
//            completion(NSError(domain: "Download", code: 0, userInfo: [NSLocalizedDescriptionKey: "Failed to download file"]))
//            return
//        }
//
//        do {
//            let fileManager = FileManager.default
//            if fileManager.fileExists(atPath: destinationURL.path) {
//                try fileManager.removeItem(at: destinationURL)
//            }
//            try fileManager.moveItem(at: tempLocalURL, to: destinationURL)
//            completion(nil)
//        } catch {
//            completion(error)
//        }
//    }
////
////    task.resume()
//}

print("Starting download *************")
let url = URL(string: "https://www.google.com")!
let destinationURL = URL(fileURLWithPath: FileManager.default.currentDirectoryPath).appendingPathComponent("SwiftOpenAPI/Config/openapi.yml")
print("Save to: \(destinationURL)")

try await download(url: url, destination: destinationURL)

//downloadYAMLFile(from: url, to: destinationURL) { error in
//    if let error = error {
//        print("Error downloading file: \(error)")
//    } else {
//        print("File downloaded successfully and moved to \(destinationURL.path)")
//    }
//}
