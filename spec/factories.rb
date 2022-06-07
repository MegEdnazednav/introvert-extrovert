FactoryBot.define do
  factory(:question) do
    text { "random question" }
  end

  factory(:user) do
    name { "username" }
  end

  factory(:answer) do
    text { "random answer" }
    score { 2 }
  end

  factory(:user_answer) do
  end
end
