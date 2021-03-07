class Movie < ApplicationRecord
  enum genre: {
    invisible: 0,
    basic: 1,
    git: 2,
    ruby: 3,
    rails: 4,
    php: 5,
    htmml: 6,
    javascript: 7,
    typescript: 8,
    react: 9,
    vue: 10,
    angular: 11,
    aws: 12,
    money: 13,
    talk: 14,
    live: 15,
  }
end
