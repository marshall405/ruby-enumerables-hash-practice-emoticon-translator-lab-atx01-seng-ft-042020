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
  new_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end