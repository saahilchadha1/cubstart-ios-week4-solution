//
//  FeedbackModel.swift
//  Waitlist Helper
//
//  Created by Saahil Chadha on 9/26/20.
//

import Foundation

// This is an array of tuples. The first element of each tuple is the lower-boundary probability cutoff. The second element is the associated feedback message. For example, if the probability = 70, then "You're probably okay ☺️" should be displayed.

let feedbackModel =
    [(90, "You're good 😄"),
     (60, "You're probably okay ☺️"),
     (40, "Idk, it's like 50-50 😐"),
     (20, "You're probably not getting off 😕"),
     (0, "Rip 😔")]
