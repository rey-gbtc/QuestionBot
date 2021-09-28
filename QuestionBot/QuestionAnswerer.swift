struct MyQuestionAnswerer {
    func responseTo(question: String) -> String {
        let lowerCasedQuestion = question.lowercased()
        if lowerCasedQuestion.hasPrefix("hello") {
            return "Why, hello there!"
        } else if lowerCasedQuestion == "where are the cookies?" {
            return "In the cookie jar!"
        } else if lowerCasedQuestion.hasPrefix("where") {
            return "To the North!"
        } else {
            
            let charCount = lowerCasedQuestion.count % 4
            
            switch charCount {
            case 0:
                return "Hmmm I don't know"
            case 1:
                return "Try again tomorrow"
            case 2:
                return "How would a robot know that?"
            default:
                return "That is a tough question!"
            }
        }
    }
}
