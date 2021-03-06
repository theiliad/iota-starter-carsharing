/**
 * Copyright 2016 IBM Corp. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import Foundation

class Path {
    var coordinates : [NSArray]?
    
    class func fromDictionary(array:NSArray) -> [Path] {
        var returnArray:[Path] = []
        for item in array {
            let features = item["features"] as? [NSDictionary]
            let geometry = features![0]["geometry"] as? NSDictionary
            returnArray.append(Path(dictionary: geometry!))
        }
        return returnArray
    }
    
    init(dictionary: NSDictionary) {
        coordinates = dictionary["coordinates"] as? [NSArray]
    }
}