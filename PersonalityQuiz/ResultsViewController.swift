//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Vladyslav Torhovenkov on 28.05.2023.
//

import UIKit

class ResultsViewController: UIViewController {

    var responses: [Answer]
    
    init?(coder: NSCoder,responses: [Answer]) {
        self.responses = responses
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func calculatePersonalityResult() {
        let frequencyOfAnswers = responses.reduce(into: [:]) {
            (counts, answer) in
            counts[answer.type, default: 0] += 1
        }
//        let frequentAnswersSorted = frequencyOfAnswers.sorted(by: { (pair1, pair2) in
//            return pair1.value > pair2.value
//        })
        let mostCommonAnswer = frequencyOfAnswers.sorted { $0.1 > $1.1 }.first!.key
//        let mostCommonAnswer = frequentAnswersSorted.first!.key
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
