class CreateNutritives < ActiveRecord::Migration[5.0]
  def change
    create_table :nutritives do |t|
      t.string :enerc_kcal
      t.string :water
      t.string :protain
      t.string :protainb_by_amino
      t.string :lipid
      t.string :fantnlea
      t.string :fasat
      t.string :fams
      t.string :fapu
      t.string :carbohydrate
      t.string :choavlm
      t.string :fibsol
      t.string :fibins
      t.string :fibtg
      t.string :ash
      t.string :ne
      t.string :k
      t.string :ca
      t.string :mg
      t.string :p
      t.string :fe
      t.string :zn
      t.string :cu
      t.string :mn
      t.string :i_d
      t.string :se
      t.string :cr
      t.string :mo
      t.string :retol
      t.string :carta
      t.string :cartb
      t.string :crypxb
      t.string :cartbeq
      t.string :vita_rae
      t.string :vitd
      t.string :tocpha
      t.string :tocphb
      t.string :tocphg
      t.string :tocphd
      t.string :vitk
      t.string :thiahcl
      t.string :ribf
      t.string :nia
      t.string :vitb6a
      t.string :vitb12
      t.string :fol
      t.string :pantac
      t.string :biot
      t.string :vitc
      t.string :nacl_eq
      t.string :alc
      t.string :nitra
      t.string :thebrn
      t.string :caffn
      t.string :tan
      t.string :polyphent
      t.string :aceac
      t.integer :food_id

      t.timestamps
    end
  end
end
