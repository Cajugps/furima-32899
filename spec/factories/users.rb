FactoryBot.define do 
  factory :user do 
    transient do 
      person {Gimei.name}
    end 
      nickname                      {Faker::Name.name}
      email                         {Faker::Internet.free_email}
      password                      {Faker::Internet.password(min_length: 6)}
      password_confirmation         {password}
      first_name                    {Gimei::Name.first.kanji}
      last_name                     {Gimei::Name.last.kanji}
      first_name_kana               {Gimei.first.katakana}
      last_name_kana                {Gimei.last.katakana}
      birthday                      {Faker::Date.backward}
  end
end 