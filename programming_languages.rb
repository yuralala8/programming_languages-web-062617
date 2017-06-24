def reformat_languages(languages)
    hash = {}
    
    languages.each do |style, data|
        data.each do |lang, type_value|
            if hash[lang] == nil
                hash[lang] = type_value
                hash[lang][:style] = [style]
            else
            hash[lang][:style] << style
            end
        end
    end
    hash
  end

