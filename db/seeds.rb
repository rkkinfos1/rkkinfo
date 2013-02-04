# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'digest/sha2'

pw = LoginInfo.new
pw.username = "Amit"
pw.password = Digest::SHA2.hexdigest("rkkinfo101")
pw.save

pw = LoginInfo.new
pw.username = "Baldeep"
pw.password = Digest::SHA2.hexdigest("rkkinfo102")
pw.save

pw = LoginInfo.new
pw.username = "Manoj"
pw.password = Digest::SHA2.hexdigest("rkkinfo103")
pw.save

pw = LoginInfo.new
pw.username = "Sandeep"
pw.password = Digest::SHA2.hexdigest("rkkinfo104")
pw.save

pw = LoginInfo.new
pw.username = "Kavita"
pw.password = Digest::SHA2.hexdigest("rkkinfo105")
pw.save


require 'digest/sha2'

pw = LoginInfo1.new
pw.username = "Amit"
pw.password = Digest::SHA2.hexdigest("rkkinfo101")
pw.save

pw = LoginInfo1.new
pw.username = "Baldeep"
pw.password = Digest::SHA2.hexdigest("rkkinfo102")
pw.save

pw = LoginInfo1.new
pw.username = "Manoj"
pw.password = Digest::SHA2.hexdigest("rkkinfo103")
pw.save

pw = LoginInfo1.new
pw.username = "Sandeep"
pw.password = Digest::SHA2.hexdigest("rkkinfo104")
pw.save

pw = LoginInfo1.new
pw.username = "Kavita"
pw.password = Digest::SHA2.hexdigest("rkkinfo105")
pw.save


require 'digest/sha2'

pw = LoginInfo2.new
pw.username = "Amit"
pw.password = Digest::SHA2.hexdigest("rkkinfo101")
pw.save

pw = LoginInfo2.new
pw.username = "Baldeep"
pw.password = Digest::SHA2.hexdigest("rkkinfo102")
pw.save

pw = LoginInfo2.new
pw.username = "Manoj"
pw.password = Digest::SHA2.hexdigest("rkkinfo103")
pw.save

pw = LoginInfo2.new
pw.username = "Sandeep"
pw.password = Digest::SHA2.hexdigest("rkkinfo104")
pw.save

pw = LoginInfo2.new
pw.username = "Kavita"
pw.password = Digest::SHA2.hexdigest("rkkinfo105")
pw.save
