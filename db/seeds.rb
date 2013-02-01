# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'digest/sha2'

pw = LoginInfo.new
pw.username = "ankit"
pw.password = Digest::SHA2.hexdigest("ankit")
pw.save

pw = LoginInfo.new
pw.username = "admin"
pw.password = Digest::SHA2.hexdigest("admin")
pw.save

require 'digest/sha2'

pw = LoginInfo1.new
pw.username = "ankit"
pw.password = Digest::SHA2.hexdigest("ankit")
pw.save

pw = LoginInfo1.new
pw.username = "admin"
pw.password = Digest::SHA2.hexdigest("admin")
pw.save

require 'digest/sha2'

pw = LoginInfo2.new
pw.username = "ankit"
pw.password = Digest::SHA2.hexdigest("ankit")
pw.save

pw = LoginInfo2.new
pw.username = "admin"
pw.password = Digest::SHA2.hexdigest("admin")
pw.save
