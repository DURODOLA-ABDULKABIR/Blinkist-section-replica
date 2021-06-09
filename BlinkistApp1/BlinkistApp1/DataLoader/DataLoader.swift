//
//  DataLoader.swift
//  BlinkistApp1
//
//  Created by Decagon on 21.4.21.
//

import Foundation

public class DataLoader {
    @Published var booksData = [BooksData]()
    
    init() {
        load()
        sort()
    }
    
    func load() {
        if let fileLocation = Bundle.main.url(forResource: "jsonData", withExtension: "json"){
            do{
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([BooksData].self, from: data)
                self.booksData = dataFromJson
            }catch {
                print(error)
            }
        }
    }
    
    func sort()  {
        self.booksData = self.booksData.sorted(by: { $0.id < $1.id })
    }
}
