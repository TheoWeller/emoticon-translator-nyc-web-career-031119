# require modules here
require 'yaml'

def load_library(file_path)
  emojis = Hash.new
  emoticons = YAML.load_file(file_path)
  emojis["get_meaning"] = {}
  emojis["get_emoticon"] = {}
  emoticons.each do |name, data|
    emojis["get_emoticon"][data.first] = data.last
    emojis["get_meaning"][data.last] = name
end
emojis
end

def get_japanese_emoticon(file_path, emoticon)
  load_library(file_path)
  jap_emoji = emojis["get_emoticon"][given_emoji]
  if jap_emoji == nil
        jap_emoji = "Sorry, that emoticon was not found"
      end
        jap_emoji
      end

def get_english_meaning
  # code goes here
end
