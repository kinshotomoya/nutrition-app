# nutririon-app


## nutritions table

|column|type|
|:---:|:---:|
|enerc_kcal|string|
|water|string|
|protain|string|
|protainb_by_amino|string|
|lipid|string|
|fantnlea|string|
|fasat|string|
|fams|string|
|fapu|string|
|carbohydrate|string|
|choavlm|string|
|fibsol|string|
|fibins|string|
|fibtg|string|
|ash|string|
|ne|string|
|k|string|
|ca|string|
|mg|string|
|p|string|
|fe|string|
|zn|string|
|mn|string|
|id|string|
|se|string|
|cr|string|
|mo|string|
|retol|string|
|carta|string|
|cartb|string|
|crypxb|string|
|cartbeq|string|
|vita_rae|string|
|vitd|string|
|tocpha|string|
|tocphb|string|
|tocphg|string|
|tocphd|string|
|vitk|string|
|thiahcl|string|
|ribf|string|
|nia|string|
|vitb6a|string|
|vitb12|string|
|fol|string|
|pantac|string|
|biot|string|
|vitc|string|
|nacl_eq|string|
|alc|string|
|nitra|string|
|thebrn|string|
|caffn|string|
|tan|string|
|polyphent|string|
|aceac|string|
|food_id|integer|

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
|user_id|references|


foods table と多対多の関係
・has_many :foods, through: :food_recipes
・has_many :food_recipes

users table と１対多の関係
・belongs_to :user


## food_recipes table

|column|type|
|:---:|:---|
|food_id|references|
|recipe_id|references|
|amount|integer|

foods table と ecipes table の中間テーブル
belongs_to :food
belongs_to :recipe


## users table

|column|type|
|:---:|:---:|
|name|string|
|image|string|

recipes table と一対多の関係
・has_many :recipes



