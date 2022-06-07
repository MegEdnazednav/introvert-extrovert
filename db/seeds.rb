question_one = Question.create(text: "You’re really busy at work and a colleague is telling you their life story and personal woes. You:",)
question_two = Question.create(text: "You’ve been sitting in the doctor’s waiting room for more than 25 minutes. You:")
question_three = Question.create(text: "You’re having an animated discussion with a colleague regarding a project that you’re in charge of. You:
")

Answer.create(
  question: question_one,
  text: "Don’t dare to interrupt them",
  score: 1
)
Answer.create(
  question: question_one,
  text: "Think it’s more important to give them some of your time; work can wait",
  score: 2
)
Answer.create(
  question: question_one,
  text: "Listen, but with only with half an ear",
  score: 3
)
Answer.create(
  question: question_one,
  text: "Interrupt and explain that you are really busy at the moment",
  score: 4
)
Answer.create(
  question: question_two,
  text: "Look at your watch every two minutes",
  score: 1
)
Answer.create(
  question: question_two,
  text: "Bubble with inner anger, but keep quiet",
  score: 2
)
Answer.create(
  question: question_two,
  text: "Explain to other equally impatient people in the room that the doctor is always running late",
  score: 3
)
Answer.create(
  question: question_two,
  text: "Complain in a loud voice, while tapping your foot impatiently",
  score: 4
)
Answer.create(
  question: question_three,
  text: "Don’t dare contradict them",
  score: 1
)
Answer.create(
  question: question_three,
  text: "Think that they are obviously right",
  score: 2
)
Answer.create(
  question: question_three,
  text: "Defend your own point of view, tooth and nail",
  score: 3
)
Answer.create(
  question: question_three,
  text: "Continuously interrupt your colleague",
  score: 4
)


