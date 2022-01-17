//
//  BudgetRepository.swift
//  Budget
//
//  Created by Jason Dahmoun on 17/01/2022.
//

// 1
import FirebaseFirestore
import FirebaseFirestoreSwift
import Combine

// 2
class CardRepository: ObservableObject {
  // 3
  private let path: String = "spent"
  // 4
  private let store = Firestore.firestore()

  // 5
  func add(_ spent: Spent) {
    do {
      // 6
      _ = try store.collection(path).addDocument(from: spent)
    } catch {
      fatalError("Unable to add spent: \(error.localizedDescription).")
    }
  }
}

