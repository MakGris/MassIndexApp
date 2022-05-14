//
//  Training.swift
//  MassIndexApp
//
//  Created by Maksim Grischenko on 13.05.2022.
//

import Foundation

struct Training {
    let name: String
    let description: String
    let reps: Int
    let sets: Int
    
    static func getTraining(for type: GoalType) -> [Training] {
        let data = DataManager.shared
        var trainings = [Training]()
        switch type {
        case .weightLoss:
            let names = data.exercisesWeightLoss
            let descriptions = data.descriptionWeightLoss
            let reps = data.repsWeightLoss
            let sets = data.setsWeightLoss
            let iteractionCount = min(names.count, descriptions.count, reps.count, sets.count)
            for index in 0..<iteractionCount {
                let someTraining = Training(name: names[index], description: descriptions[index], reps: reps[index], sets: sets[index])
                trainings.append(someTraining)
            }
        case .weightGain:
            let names = data.exercisesWeightGain
            let descriptions = data.descriptionWeightGain
            let reps = data.repsWeightGain
            let sets = data.setsWeightGain
            let iteractionCount = min(names.count, descriptions.count, reps.count, sets.count)
            for index in 0..<iteractionCount {
                let someTraining = Training(name: names[index], description: descriptions[index], reps: reps[index], sets: sets[index])
                trainings.append(someTraining)
            }
        case .weightSupport:
            let names = data.exercisesweightSupport
            let descriptions = data.descriptionWeightSupport
            let reps = data.repsWeightSupport
            let sets = data.setsWeightSupport
            let iteractionCount = min(names.count, descriptions.count, reps.count, sets.count)
            for index in 0..<iteractionCount {
                let someTraining = Training(name: names[index], description: descriptions[index], reps: reps[index], sets: sets[index])
                trainings.append(someTraining)
            }
            
            
            
            
            
        }
        return trainings
        
    }
    enum GoalType {
        case weightLoss
        case weightGain
        case weightSupport
    }
}


