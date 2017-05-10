class Nutritive < ApplicationRecord
  belongs_to :food #これを定義してたままだとcsvファイルをインポートできない！のでインポートするときはコメントアウトする！
end
