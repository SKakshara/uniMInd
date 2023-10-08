//
//  FitnessModel.swift
//  unimind
//
//  Created by Akshara Kollu on 10/7/23.
//

import Foundation

enum Category: String, CaseIterable {
    case fitness = "Fitness"
    case mentalHealth = "Mental Health"
    //case main = "Main"
}

struct Instructions: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let equipment: String
    let directions: String
    let category: Category.RawValue
}

extension Instructions {
    static let all: [Instructions] = [
        Instructions(
            name: "Full-Body Strength Training",
            image: "https://media.istockphoto.com/id/1132086660/photo/side-view-of-beautiful-muscular-woman-running-on-treadmill.jpg?s=612x612&w=0&k=20&c=5Vq_BJjG7sbIyKIP-Adu0pChReDXm0dC7BVPvto2M0I=",
            equipment: "Weights",
            directions: "Warm-up (5-10 minutes of light cardio) Squats: 3 sets of 12 reps Push-Ups: 3 sets of 10 reps Bent-Over Rows: 3 sets of 12 reps Plank: 3 sets, hold for 30-60 seconds each Cool down and stretching (10 minutes)",
            category: "Fitness"
        ),
        Instructions(
            name: "Cardio and Core",
            image: "https://hips.hearstapps.com/hmg-prod/images/athletic-young-woman-jogging-on-sidewalk-royalty-free-image-1594326378.jpg?crop=0.668xw:1.00xh;0.156xw,0&resize=1024:*",
            equipment: "None",
            directions: "Warm-up (5-10 minutes of light cardio) Jogging/Running: 30 minutes Bicycle Crunches: 3 sets of 15 reps (each side) Russian Twists: 3 sets of 15 reps (each side) Leg Raises: 3 sets of 12 reps Cool down and stretching (10 minutes)",
            category: "Fitness"
        ),
        Instructions(
            name: "HIIT",
            image: "https://images.contentstack.io/v3/assets/blt45c082eaf9747747/blta585249cb277b1c3/5fdcfa83a703d10ab87e827b/HIIT.jpg?format=pjpg&auto=webp&quality=76&width=1232",
            equipment: "None",
            directions: "Warm-up (5-10 minutes of light cardio) HIIT Circuit (40 seconds high intensity, 20 seconds rest): Jumping Jacks High Knees Push-Ups Plank to Push-Up Burpees Repeat the circuit 4 times Cool down and stretching (10 minutes)",
            category: "Fitness"
        ),
        Instructions(
            name: "Breath Awareness",
            image: "https://www.organicspamagazine.com/wp-content/uploads/2018/03/HowtoBreathe-MJ17-Hero.jpg",
            equipment: "None",
            directions: "Find a quiet place and sit or lie down comfortably. Close your eyes and bring your attention to your breath. Notice the sensation of the breath entering and leaving your body. Focus on the rise and fall of your chest or the feeling of the air passing through your nostrils.",
            category: "Mental Health"
        ),
        Instructions(
            name: "Upper Body Strength",
            image: "https://hips.hearstapps.com/hmg-prod/images/articles/2016/05/upperbody-upgrade-1488910186.jpg",
            equipment: "Dumbell",
            directions: "Warm-up (5-10 minutes of light cardio) Dumbbell Bench Press: 3 sets of 10 reps Pull-Ups or Lat Pulldowns: 3 sets of 8-10 reps Dumbbell Shoulder Press: 3 sets of 12 reps Tricep Dips: 3 sets of 12 reps Cool down and stretching (10 minutes)",
            category: "Fitness"
        ),
        Instructions(
            name: "Pilates and Stability",
            image: "https://pilatesology.com/wp-content/uploads/2023/07/marina-lndg-V4-no-leaf-scaled.jpg",
            equipment: "None",
            directions: "45 minutes of Pilates focusing on core and stability exercises Balance and stability drills for 20 minutes",
            category: "Mental Health"
        )
    ]
}
