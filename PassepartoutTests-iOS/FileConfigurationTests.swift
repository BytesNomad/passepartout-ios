//
//  FileConfigurationTests.swift
//  PassepartoutTests-iOS
//
//  Created by Davide De Rosa on 9/5/18.
//  Copyright (c) 2018 Davide De Rosa. All rights reserved.
//
//  https://github.com/keeshux
//
//  This file is part of Passepartout.
//
//  Passepartout is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  Passepartout is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with Passepartout.  If not, see <http://www.gnu.org/licenses/>.
//

import XCTest
import TunnelKit
@testable import Passepartout_iOS

class FileConfigurationTests: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPIA() throws {
        let cfg = try TunnelKitProvider.Configuration.parsed(from: url(withName: "pia-hungary")).1
        XCTAssertEqual(cfg.cipher, .aes128cbc)
        XCTAssertEqual(cfg.digest, .sha1)
    }

    private func url(withName name: String) -> URL {
        return Bundle(for: FileConfigurationTests.self).url(forResource: name, withExtension: "ovpn")!
    }
    
}