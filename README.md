## INTROVERT-EXTROVERT personality test

Hello Teamway,

Time to learn something about yourself with this short personality test.

A few notes:

### SETUP

- This app uses ruby version `3.0.3` and rails version `7.0.3`
- clone the repo
- run `bundle install`
- run `rails db:create db:migrate db:seed`
- run `rails s`
- go to `localhost:3000` to see it in action

### HOW IT WORKS

- On the first page, you are asked to give your name. This is saved in the DB
- The questions are pulled from the seeds
- The answer to each question is also saved in the DB
- If the user goes back to a previous question with the `←` of the browser, the answer to that question will be updated
- In the end of the quiz, the score will be calculated. If you score more than 50% of the total points, you are an extrovert, otherwise you are an introvert.

### NEXT STEPS (not for now, I'm afraid)

- Add user role `Admin`
- Admin can add more questions
- Add model `Quiz` and have multiple quizes. Questions and answers belong to a specific quiz.

### SCREENSHOTS

LOGIN
![](https://raw.githubusercontent.com/MegEdnazednav/introvert-extrovert/main/app/assets/images/login.png)

QUESTION
![](https://raw.githubusercontent.com/MegEdnazednav/introvert-extrovert/main/app/assets/images/question.png)

RESULT
![](https://raw.githubusercontent.com/MegEdnazednav/introvert-extrovert/main/app/assets/images/result.png)
