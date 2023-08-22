import XCTest
@testable import DataPackage
import DataFramework

final class DataPackageTests: XCTestCase {
    
    func testExample() throws {
        
        let logger = VersionLogger()
        do {
            try logger.createDB(schemaVersion: 1)
            try logger.addUser(name: "User105")
            let users = logger.getUser()
            print(users)
            XCTAssertEqual(users, ["User105","User105","User105"])
        } catch {
            print("DB Error: \(error)")
        }
    }
}
