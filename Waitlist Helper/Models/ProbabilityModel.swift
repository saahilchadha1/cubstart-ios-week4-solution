//
//  ProbabilityModel.swift
//  Waitlist Helper
//
//  Created by Saahil Chadha on 9/26/20.
//

import Foundation

extension String: Error {}

struct ProbabilityModel {
    var probability: Int?
    
    mutating func calculateProbability(waitlistPlace: Int, classSize: Int) {
        let tenth = classSize / 10
        if (waitlistPlace <= tenth) {
            self.probability = 100
        } else if (waitlistPlace > tenth * 2){
            self.probability = 0
        } else {
            self.probability = Int(((1.0 - (Float(waitlistPlace - tenth) / Float(tenth))) * 100).rounded())
        }
    }
    
    func getProbabilityText() throws -> String {
        if let probability = self.probability {
            return "\(probability)%"
        } else {
            throw "Probability is nil"
        }
    }
    
    func getFeedbackText() throws -> String {
        if let probability = self.probability {
            for tuple in feedbackModel {
                if probability >= tuple.0 {
                    return tuple.1
                }
            }
            throw "Feedback not found"
        } else {
            throw "Probability is nil"
        }
    }
}
