# require modules here
require "yaml"

def load_library(file_path)
  # code goes here
  new_hash = {}
  YAML.load_file(file_path).each do |key,value|
    new_hash[key] = {
      :english => value[0],
      :japanese => value[1]
    }
  end
  puts new_hash
  new_hash
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  emoticons = load_library(file_path)
  
  emoticons.each do |outer_key, emoticon_hash|
    emoticon_hash.each do |inner_key, inner_emoticon|
      if inner_emoticon == emoticon
        return emoticons[outer_key][:japanese]
      end
    end
  end
  "Sorry, that emoticon was not found"
end

def get_english_meaning(file_path, emoticon)
  # code goes here
  emoticons = load_library(file_path)
  
  emoticons.each do |outer_key, emoticon_hash|
    emoticon_hash.each do |inner_key, inner_emoticon|
      if inner_emoticon == emoticon
        return outer_key
      end
    end
  end
  "Sorry, that emoticon was not found"
end
