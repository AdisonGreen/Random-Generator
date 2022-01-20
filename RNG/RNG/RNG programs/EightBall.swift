//
//  EightBall.swift
//
//  Created by speed Master on 1/18/22.
//

import SwiftUI

extension Color {
    static let seafoam = Color(red: 147 / 255, green: 233 / 255, blue: 190 / 255)
    static let deepBlack = Color(red: 30 / 255, green: 30 / 255, blue: 30 / 255)
    static let silverBlack = Color(red: 20 / 255, green: 20 / 255, blue: 20 / 255)
}
enum EightBallAnswers: CaseIterable {
    //yes answers
    case It_is_certain
    case It_is_decidedly_so
    case Without_a_doubt
    case Yes_definitly
    case Yes
    //semi yes answers
    case You_may_rely_on_it
    case As_I_see_it_yes
    case Most_likely
    case Outlook_good
    case Signs_point_to_yes
    //fail answers
    case Reply_hazy_try_again
    case Ask_again_later
    case Better_not_tell_you_now
    case Cannot_predict_now
    case Concentrate_and_ask_again
    //no answers
    case Dont_count_on_it
    case My_reply_is_no
    case My_Sources_say_no
    case Outlook_not_so_good
    case Very_doubtful
}

struct EightBall: View {
    @State var EightBallAnswer: String = "Welcome!"
    
    func AskAway() {
        let randomEightBallAnswer = EightBallAnswers.allCases.randomElement()!
        
        switch randomEightBallAnswer {
        case .It_is_certain: EightBallAnswer = "It is certain"
        case .It_is_decidedly_so: EightBallAnswer = "It is decidedly so"
        case .Without_a_doubt: EightBallAnswer = "Without a doubt"
        case .Yes_definitly: EightBallAnswer = "Yes - Definitly"
        case .Yes: EightBallAnswer = "Yes"
        case .You_may_rely_on_it: EightBallAnswer = "You may rely on it"
        case .As_I_see_it_yes: EightBallAnswer = "As I see it, yes"
        case .Most_likely: EightBallAnswer = "Most likely"
        case .Outlook_good: EightBallAnswer = "Outlook Good"
        case .Signs_point_to_yes: EightBallAnswer = "Signs point to yes"
        case .Reply_hazy_try_again: EightBallAnswer = "Reply hazy, try again"
        case .Ask_again_later: EightBallAnswer = "Ask again later"
        case .Better_not_tell_you_now: EightBallAnswer = "Better not tell you now"
        case .Cannot_predict_now: EightBallAnswer = "Cannot predict now"
        case .Concentrate_and_ask_again: EightBallAnswer = "Concentrate \n and ask again later"
        case .Dont_count_on_it: EightBallAnswer = "Dont count on it"
        case .My_reply_is_no: EightBallAnswer = "My reply is no"
        case .My_Sources_say_no: EightBallAnswer = "My sources say no"
        case .Outlook_not_so_good: EightBallAnswer = "Outlook not so good"
        case .Very_doubtful: EightBallAnswer = "Very doubtful"
        default: EightBallAnswer = "You're death is near."
        }
    }
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(.black)
                    .aspectRatio(1, contentMode: ContentMode.fit)
                    .padding(10)
                    .padding(.vertical, 50)
                Circle()
                    .fill(Color.deepBlack)
                    .aspectRatio(1, contentMode: ContentMode.fit)
                    .padding(100)
                    .padding(.vertical, 50)
                    .shadow(radius: 3)
                Text(EightBallAnswer)
                    .multilineTextAlignment(.center)
                    .lineLimit(5)
                    .foregroundColor(.white)
            }
            
            Button {
                AskAway()
            } label: {
                Text("Ask Away!")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding()
                    .font(.title)
                    .background(Color.seafoam)
                    .cornerRadius(40)
                    .shadow(radius: 3)
                    .frame(minWidth: 1, maxWidth: .infinity)
                    
            }
        }
    }
}

struct EightBall_Previews: PreviewProvider {
    static var previews: some View {
        EightBall()
    }
}
