//

import UIKit

struct Department {
    var departmentName: String!
    var symptomata: [String: String]!
}
var symptoms = [String]()
var identities = [String]()
var departmentArray = [Department]()

departmentArray = [Department(departmentName: "Cardiology", symptomata: ["Bradycardia": "brady", "Narrow Complex Tachycardia" : "nct", "Wide Complex Tachycardia" : "wct"]), Department(departmentName: "Endocrinology", symptomata: ["Hypoglycemia" : "hypogly", "Hyperglycemia" : "hypergly", "Hypocalcemia" : "hypocal", "Hypercalcemia" : "hypercal"])]

for i in 0..<departmentArray.count  {
    for item in departmentArray {
        for (key, value) in item.symptomata {
            symptoms[i] = key
            identities[i] = value
        }
    }
}


