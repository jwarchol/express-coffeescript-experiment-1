mongoose = require 'mongoose'
Schema = mongoose.Schema
ObjectId = Schema.ObjectId

exports.schema = 
  name: String
  url_name: String
  aliases: [String]
  creator_id: ObjectId
  wallpaper_count: 
    type: Number
    min: 0
  default_wallpaper_id: ObjectId
  tags: [String]
  created_at: Date
  updated_at: Date
    
  
#  key :name, String, :required => true
#  key :url_name, String, :required => true
#  key :aliases, Array, :default => []
#  key :creator_id, ObjectId, :required => true
#  key :wallpapers_count, Integer, :default => 0
#  key :default_wallpaper_id, ObjectId
#  key :tags, Set
#
#  timestamps!
#
#  many :wallpapers
#  belongs_to :category
#  belongs_to :creator, :class_name => 'User'
#  one :default_wallpaper, :class_name => "Wallpaper"

