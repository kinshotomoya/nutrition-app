class Nutritive < ApplicationRecord
  has_one :food #どっちもhas_oneの関係で依存しあっているときは、そちらにもhas_oneを書いて、~~~idをカラムにつける！


  def self.create_nutritive_name(nutritive)
    case nutritive
    when "enerc_kcal"
      name = "カロリー"
      return name
    when "water"
      name = "水分"
      return name
    when "protain"
      name = "タンパク質"
      return name
    when "protainb_by_amino"
      name = "アミノ酸タンパク質"
      return name
    when "lipid"
      name = "脂質"
      return name
    when "fantnlea"
      name = "トリアシルグリセロール"
      return name
    when "fasat"
      name = "飽和脂肪酸"
      return name
    when "fams"
      name = "一価不飽和脂肪酸"
      return name
    when "fapu"
      name = "多価不飽和脂肪酸"
      return name
    when "carbohydrate"
      name = "炭水化物"
      return name
    when "choavlm"
      name = "利用可能炭水化物"
      return name
    when "fibsol"
      name = "水溶性植物繊維"
      return name
    when "fibins"
      name = "不溶性植物繊維"
      return name
    when "fibtg"
      name = "食物繊維総量"
      return name
    when "ash"
      name = "灰分"
      return name
    when "ne"
      name = "ナトリウム"
      return name
    when "k"
      name = "カリウム"
      return name
    when "ca"
      name = "カルシウム"
      return name
    when "mg"
      name = "マグネシウム"
      return name
    when "p"
      name = "リン"
      return name
    when "fe"
      name = "鉄"
      return name
    when "zn"
      name = "亜鉛"
      return name
    when "cu"
      name = "銅"
      return name
    when "mn"
      name = "マンガン"
      return name
    when "i_d"
      name = "ヨウ素"
      return name
    when "se"
      name = "セレン"
      return name
    when "cr"
      name = "クロム"
      return name
    when "mo"
      name = "モリブデン"
      return name
    when "retol"
      name = "ビタミンA(レチノール)"
      return name
    when "carta"
      name = "ビタミンA(α-カロテン)"
      return name
    when "cartb"
      name = "ビタミンA(β-カロテン)"
      return name
    when "crypxb"
      name = "ビタミンA(β-クリプトキサンチン)"
      return name
    when "cartbeq"
      name = "ビタミンA(β-カロテン当量)"
      return name
    when "vita_rae"
      name = "ビタミンA(レチノール活性当量)"
      return name
    when "vitd"
      name = "ビタミンD"
      return name
    when "tocpha"
      name = "ビタミンE(α-トコフェロール)"
      return name
    when "tocphb"
      name = "ビタミンE(β-トコフェロール)"
      return name
    when "tocphg"
      name = "ビタミンE(γ-トコフェロール)"
      return name
    when "tocphd"
      name = "ビタミンE(δ-トコフェロール)"
      return name
    when "vitk"
      name = "ビタミンK"
      return name
    when "thiahcl"
      name = "ビタミンB1"
      return name
    when "ribf"
      name = "ビタミンB2"
      return name
    when "nia"
      name = "ナイアシン"
      return name
    when "vitb6a"
      name = "ビタミンB6"
      return name
    when "vitb12"
      name = "ビタミンB12"
      return name
    when "fol"
      name = "葉酸"
      return name
    when "pantac"
      name = "パントテン酸"
      return name
    when "biot"
      name = "ビオチン"
      return name
    when "vitc"
      name = "ビタミンC"
      return name
    when "nacl_eq"
      name = "食塩相当量"
      return name
    when "alc"
      name = "アルコール"
      return name
    when "nitra"
      name = "硝酸イオン"
      return name
    when "thebrn"
      name = "テオブロミン"
      return name
    when "caffn"
      name = "カフェイン"
      return name
    when "tan"
      name = "タンニン"
      return name
    when "polyphent"
      name = "ポリフェノール"
      return name
    when "aceac"
      name = "酢酸"
      return name
    end
  end

  def create_nuritive_amount(amount, name)
    case name
    when "カロリー"
      amount.enerc_kcal
    when "水分"
      amount.water
    when "タンパク質"
      amount.protain
    when "アミノ酸タンパク質"
      amount.protainb_by_amino
    when "脂質"
      amount.lipid
    when "トリアシルグリセロール"
      amount.fantnlea
    when "飽和脂肪酸"
      amount.fasat
    when "一価不飽和脂肪酸"
      amount.fams
    when "多価不飽和脂肪酸"
      amount.fapu
    when "炭水化物"
      amount.carbohydrate
    when "利用可能炭水化物"
      amount.choavlm
    when "水溶性植物繊維"
      amount.fibsol
    when "不溶性植物繊維"
      amount.fibins
    when "食物繊維総量"
      amount.fibtg
    when "灰分"
      amount.ash
    when "ナトリウム"
      amount.ne
    when "カリウム"
      amount.k
    when "カルシウム"
      amount.ca
    when "マグネシウム"
      amount.mg
    when "リン"
      amount.p
    when "鉄"
      amount.fe
    when "亜鉛"
      amount.zn
    when "銅"
      amount.cu
    when "マンガン"
      amount.mn
    when "ヨウ素"
      amount.i_d
    when "セレン"
      amount.se
    when "クロム"
      amount.cr
    when "モリブデン"
      amount.mo
    when "ビタミンA(レチノール)"
      amount.retol
    when "ビタミンA(α-カロテン)"
      amount.carta
    when "ビタミンA(β-カロテン)"
      amount.cartb
    when "ビタミンA(β-クリプトキサンチン)"
      amount.crypxb
    when "ビタミンA(β-カロテン当量)"
      amount.cartbeq
    when "ビタミンA(レチノール活性当量)"
      amount.vita_rae
    when "ビタミンD"
      amount.vitd
    when "ビタミンE(α-トコフェロール)"
      amount.tocpha
    when "ビタミンE(β-トコフェロール)"
      amount.tocphb
    when "ビタミンE(γ-トコフェロール)"
      amount.tocphg
    when "ビタミンE(δ-トコフェロール)"
      amount.tocphd
    when "ビタミンK"
      amount.vitk
    when "ビタミンB1"
      amount.thiahcl
    when "ビタミンB2"
      amount.ribf
    when "ナイアシン"
      amount.nia
    when "ビタミンB6"
      amount.vitb6a
    when "ビタミンB12"
      amount.vitb12
    when "葉酸"
      amount.fol
    when "パントテン酸"
      amount.pantac
    when "ビオチン"
      amount.biot
    when "ビタミンC"
      amount.vitc
    when "食塩相当量"
      amount.nacl_eq
    when "アルコール"
      amount.alc
    when "硝酸イオン"
      amount.nitra
    when "テオブロミン"
      amount.thebrn
    when "カフェイン"
      amount.caffn
    when "タンニン"
      amount.tan
    when "ポリフェノール"
      amount.polyphent
    when "酢酸"
      amount.aceac
    end
  end
end
