# frozen_string_literal: true

OmniCat.configure do |config|
  # you can enable auto train mode by :unique or :continues
  # unique: only uniq docs will be added to training docs on prediction
  # continues: always add docs to training docs on prediction
  config.auto_train = :off
  config.exclude_tokens = %w[something anything] # exclude token list
  config.token_patterns = {
    # exclude tokens with Regex patterns
    minus: [/[\s\t\n\r]+/, /(@[\w\d]+)/],
    # include tokens with Regex patterns
    plus: [/[\p{L}\-0-9]{2,}/, /[!?]/, /[:)(;\-|]{2,3}/]
  }
end

# fix frozen_string_literal error
module OmniCat
  class Doc
    def minus_tokens
      @content
    end
  end
end
