class CreateNutritives < ActiveRecord::Migration[5.0]
  def change
    create_table :nutritives do |t|
      t.integer :enerc_kcal
      t.integer :water
      t.integer :protain
      t.integer :protainb_by_amino
      t.integer :lipid
      t.integer :fantnlea
      t.integer :fasat
      t.integer :fams
      t.integer :fapu
      t.integer :carbohydrate
      t.integer :choavlm
      t.integer :fibsol
      t.integer :fibins
      t.integer :fibtg
      t.integer :ash
      t.integer :ne
      t.integer :k
      t.integer :ca
      t.integer :mg
      t.integer :p
      t.integer :fe
      t.integer :zn
      t.integer :cu
      t.integer :mn
      t.integer :i_d
      t.integer :se
      t.integer :cr
      t.integer :mo
      t.integer :retol
      t.integer :carta
      t.integer :cartb
      t.integer :crypxb
      t.integer :cartbeq
      t.integer :vita_rae
      t.integer :vitd
      t.integer :tocpha
      t.integer :tocphb
      t.integer :tocphg
      t.integer :tocphd
      t.integer :vitk
      t.integer :thiahcl
      t.integer :ribf
      t.integer :nia
      t.integer :vitb6a
      t.integer :vitb12
      t.integer :fol
      t.integer :pantac
      t.integer :biot
      t.integer :vitc
      t.integer :nacl_eq
      t.integer :alc
      t.integer :nitra
      t.integer :thebrn
      t.integer :caffn
      t.integer :tan
      t.integer :polyphent
      t.integer :aceac
      t.integer :food_id

      t.timestamps
    end
  end
end
