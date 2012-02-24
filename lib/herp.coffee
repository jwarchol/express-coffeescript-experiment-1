mongoose = require 'mongoose'

Schema = mongoose.Schema
ObjectId = Schema.ObjectId

mongoose.connect "mongodb://localhost/test"

Profile = mongoose.model 'Profile', new Schema require("./profile").schema

searchTags = [
  "actresses"
  "actors"
]

Profile.where("tags").in(searchTags).count (err, prof) ->
  console.warn prof
  mongoose.disconnect ->
    console.warn "disconnecting"
    
