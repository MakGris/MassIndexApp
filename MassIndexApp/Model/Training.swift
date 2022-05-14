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
            let name = data.exercisesWeightLoss
            let description = data.descriptionWeightLoss
            let reps = data.repsWeightLoss
            let sets = data.setsWeightLoss
            for index in 0...data.exercisesWeightLoss.count - 1 {
                let someTraining = Training(name: name[index], description: description[index], reps: reps[index], sets: sets[index])
                trainings.append(someTraining)
            }
        case .weightGain:
            let name = data.exercisesWeightGain
            let description = data.descriptionWeightGain
            let reps = data.repsWeightGain
            let sets = data.setsWeightGain
            for index in 0...data.exercisesWeightGain.count - 1 {
                let someTraining = Training(name: name[index], description: description[index], reps: reps[index], sets: sets[index])
                trainings.append(someTraining)
            }
        case .weightSupport:
            let name = data.exercisesweightSupport
            let description = data.descriptionWeightSupport
            let reps = data.repsWeightSupport
            let sets = data.setsWeightSupport
            for index in 0...data.exercisesweightSupport.count - 1 {
                let someTraining = Training(name: name[index], description: description[index], reps: reps[index], sets: sets[index])
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


