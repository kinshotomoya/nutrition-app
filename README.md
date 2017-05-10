# nutririon-app


## nutritions table

|column|type|
|:---:|:---:|
|enerc_kcal|integer|
|water|integer|
|protain|integer|
|protainb_by_amino|integer|
|lipid|integer|
|fantnlea|integer|
|fasat|integer|
|fams|integer|
|fapu|integer|
|carbohydrate|integer|
|choavlm|integer|
|fibsol|integer|
|fibins|integer|
|fibtg|integer|
|ash|integer|
|ne|integer|
|k|integer|
|ca|integer|
|mg|integer|
|p|integer|
|fe|integer|
|zn|integer|
|mn|integer|
|id|integer|
|se|integer|
|cr|integer|
|mo|integer|
|retol|integer|
|carta|integer|
|cartb|integer|
|crypxb|integer|
|cartbeq|integer|
|vita_rae|integer|
|vitd|integer|
|tocpha|integer|
|tocphb|integer|
|tocphg|integer|
|tocphd|integer|
|vitk|integer|
|thiahcl|integer|
|ribf|integer|
|nia|integer|
|vitb6a|integer|
|vitb6a|integer|
|vitb12|integer|
|fol|integer|
|pantac|integer|
|biot|integer|
|vitc|integer|
|nacl_eq|integer|
|alc|integer|
|nitra|integer|
|thebrn|integer|
|caffn|integer|
|tan|integer|
|polyphent|integer|
|aceac|integer|
|food_id|references|

belongs_to :food
foods tableと一対一の関係



## foods table

|column|type|
|:---:|:---:|
|name|string|


・nutritions tableと一対一の関係
・has_one :nutrition

・recipes tableと多対多の関係
・has_many :recipes, through: :food_recipes
・has_many :food_recipes



## recipes table

|column|type|
|:---:|:---:|
|name|string|
|image|string|


foods table と多対多の関係
・has_many :foods, through: :food_recipes
・has_many :food_recipes


## food_recipes table

|column|type|
|:---:|:---|
|food_id|references|
|recipe_id|references|
|amount|integer|

foods table と ecipes table の中間テーブル
belongs_to :food
belongs_to :recipe
