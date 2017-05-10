# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "csv"

# nutrition_csv = CSV.readlines("db/nutritivesss.csv")
# nutrition_csv.shift
# nutrition_csv.each do |row|
#   Nutritive.create(id: row[0].to_i,
#    enerc_kcal: row[1], water: row[2], protain: row[3], protainb_by_amino: row[4], lipid: row[5], fantnlea: row[6], fasat: row[7], fams: row[8], fapu: row[9], carbohydrate: row[10], choavlm: row[11], fibsol: row[12], fibins: row[13], fibtg: row[14], ash: row[15], ne: row[16], k: row[17], ca: row[18], mg: row[19], p: row[20], fe: row[21], zn: row[22], cu: row[23], mn: row[24], i_d: row[25], se: row[26], cr: row[27], mo: row[28], retol: row[29], carta: row[30], cartb: row[31], crypxb: row[32], cartbeq: row[33], vita_rae: row[34], vitd: row[35], tocpha: row[36], tocphb: row[37], tocphg: row[38], tocphd: row[39], vitk: row[40], thiahcl: row[41], ribf: row[42], nia: row[43], vitb6a: row[44], vitb12: row[45], fol: row[46], pantac: row[47], biot: row[48], vitc: row[49], nacl_eq: row[50], alc: row[51], nitra: row[52], thebrn: row[53], caffn: row[54], tan: row[55], polyphent: row[56], aceac: row[57], food_id: row[58].to_i)
# end

food_csv = CSV.readlines("db/foods.csv")
food_csv.shift
food_csv.each do |row|
  Food.create(id: row[0].to_i, name: row[1])
end
