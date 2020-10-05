//
//  ProbabilityModel.swift
//  Waitlist Helper
//
//  Created by Saahil Chadha on 9/26/20.
//

import Foundation

struct ProbabilityModel {
    var probability: Int?
    
    
    /**
     Calculates the percentage probability that the user is going to get off the waitlist. This probability is an integer between 1-100. See the spec for details on how this probability should be calculated. After calculating, it sets the probability attribute of the ProbabilityModel to this value. This method does not return anything.

     - parameter waitlistPlace: Position on the waitlist
     - parameter classSize: Total enrollment size for the course
     */
    mutating func calculateProbability(waitlistPlace: Int, classSize: Int) {
//      YOUR CODE HERE!!!
    }
    
    /**
     Returns the percentage probability that the user is going to get off the waitlist as a String.
     */
    func getProbabilityText() -> String {
        if let probability = self.probability {
            return "\(probability)%"
        } else {
            print("getProbabilityText(): Probability is nil")
            return "ERROR"
        }
    }
    
    /**
     Returns the appropriate feedback text for the given probability by iterating through the feedbackModel array.
     */
    func getFeedbackText() -> String {
        if let probability = self.probability {
            for tuple in feedbackModel {
                if probability >= tuple.0 {
                    return tuple.1
                }
            }
            print("getFeedbackText(): Feedback not found")
            return "ERROR"
        } else {
            print("getFeedbackText(): Probability is nil")
            return "ERROR"
        }
    }
}
