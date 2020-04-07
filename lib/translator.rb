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

def get_english_meaning
  # code goes here
end


{
  "angel"=>{:english=>"O:)", :japanese=>"☜(⌒▽⌒)☞"}, 
  "angry"=>{:english=>">:(", :japanese=>"ヽ(ｏ`皿′ｏ)ﾉ"}, 
  "bored"=>{:english=>":O", :japanese=>"(ΘεΘ;)"}, 
  "confused"=>{:english=>"%)", :japanese=>"(゜.゜)"}, 
  "embarrassed"=>{:english=>":$", :japanese=>"(#^.^#)"}, 
  "fish"=>{:english=>"><>", :japanese=>">゜))))彡"}, 
  "glasses"=>{:english=>"8D", :japanese=>"(^0_0^)"}, 
  "grinning"=>{:english=>"=D", :japanese=>"(￣ー￣)"}, 
  "happy"=>{:english=>":)", :japanese=>"(＾ｖ＾)"}, 
  "kiss"=>{:english=>":*", :japanese=>"(*^3^)/~☆"}, 
  "sad"=>{:english=>":'(", :japanese=>"(Ｔ▽Ｔ)"}, 
  "surprised"=>{:english=>":o", :japanese=>"o_O"}, 
  "wink"=>{:english=>";)", :japanese=>"(^_-)"}
}