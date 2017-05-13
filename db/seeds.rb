# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "csv"

nutrition_csv = CSV.readlines("db/nextnutritives.csv")
binding.pry
nutrition_csv.shift
nutrition_csv.each do |row|
  new_row = row.map {|str| str.to_i} # 一個一個の配列の中の文字列を数値化している！
  Nutritive.create(id: new_row[0],
   enerc_kcal: new_row[1], water: new_row[2], protain: new_row[3], protainb_by_amino: new_row[4], lipid: new_row[5], fantnlea: new_row[6], fasat: new_row[7], fams: new_row[8], fapu: new_row[9], carbohydrate: new_row[10], choavlm: new_row[11], fibsol: new_row[12], fibins: new_row[13], fibtg: new_row[14], ash: new_row[15], ne: new_row[16], k: new_row[17], ca: new_row[18], mg: new_row[19], p: new_row[20], fe: new_row[21], zn: new_row[22], cu: new_row[23], mn: new_row[24], i_d: new_row[25], se: new_row[26], cr: new_row[27], mo: new_row[28], retol: new_row[29], carta: new_row[30], cartb: new_row[31], crypxb: new_row[32], cartbeq: new_row[33], vita_rae: new_row[34], vitd: new_row[35], tocpha: new_row[36], tocphb: new_row[37], tocphg: new_row[38], tocphd: new_row[39], vitk: new_row[40], thiahcl: new_row[41], ribf: new_row[42], nia: new_row[43], vitb6a: new_row[44], vitb12: new_row[45], fol: new_row[46], pantac: new_row[47], biot: new_row[48], vitc: new_row[49], nacl_eq: new_row[50], alc: new_row[51], nitra: new_row[52], thebrn: new_row[53], caffn: new_row[54], tan: new_row[55], polyphent: new_row[56], aceac: new_row[57], food_id: new_row[58])
end

# food_csv = CSV.readlines("db/newfoods.csv") #CSVファイルはコンマ区切りのcsv形式にしてあげないときちんと値が入らない！
# food_csv.shift
# food_csv.each do |row|
#   Food.create(id: row[0].to_i, name: row[1], nutritive_id: row[2].to_i)
# end
