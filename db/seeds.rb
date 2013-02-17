# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Blog.create([
    { title: "shogi renmei", url: 'http://www.shogi.or.jp/topics/atom.xml', last_updated: Time.new( 2013, 1, 1 ) },
    { title: "watanabe akira", url: 'http://blog.goo.ne.jp/kishi-akira/index.rdf', last_updated: Time.new( 2013, 1, 1 ) },
]);
