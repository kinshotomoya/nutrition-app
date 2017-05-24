$(document).on('turbolinks:load', function(){

  function searchFoodAjax1(list, preInput){
    var input = $.trim($("#js-food-search-form1").val());
    if (input != preInput && input.length != 0){
      $.ajax({
        url: '/foods/search',
        type: 'GET',
        data: {
          food:{
            name: input
          }
        },
        dataType: 'json'
      })
      .done(function(data){
        appendFoods1(data, list, preInput, input)
      })
      .fail(function(data){
        alert("失敗");
      });
    }
  }

  function searchFoodAjax2(list, preInput){
    var input = $.trim($("#js-food-search-form2").val());
    if (input != preInput && input.length != 0){
      $.ajax({
        url: '/foods/search',
        type: 'GET',
        data: {
          food:{
            name: input
          }
        },
        dataType: 'json'
      })
      .done(function(data){
        appendFoods2(data, list, preInput, input)
      })
      .fail(function(data){
        alert("失敗");
      });
    }
  }

  function searchFoodAjax3(list, preInput){
    var input = $.trim($("#js-food-search-form3").val());
    if (input != preInput && input.length != 0){
      $.ajax({
        url: '/foods/search',
        type: 'GET',
        data: {
          food:{
            name: input
          }
        },
        dataType: 'json'
      })
      .done(function(data){
        appendFoods3(data, list, preInput, input)
      })
      .fail(function(data){
        alert("失敗");
      });
    }
  }

  function appendFoods1(data, list, preInput, input){
    $(".js-search-food-list1").remove();
    $("#js-food-search-ul1").append(list)
    $.each(data, function(i, food){
      var html = `<li class="food-search-result", id="food-search-result-${i}">
                    ${food.name}
                  </li>`;
      $(".js-search-food-list1").append(html);
      preInput = input;
      addFoods1(i, html, food);
    });
  }

  function appendFoods2(data, list, preInput, input){
    $(".js-search-food-list2").remove();
    $("#js-food-search-ul2").append(list)
    $.each(data, function(i, food){
      console.log(data[i].name);
      var html = `<li class="food-search-result", id="food-search-result-${i}">
                    ${food.name}
                  </li>`;
      $(".js-search-food-list2").append(html);
      preInput = input;
      addFoods2(i, html, food);
    });
  }

  function appendFoods3(data, list, preInput, input){
    $(".js-search-food-list3").remove();
    $("#js-food-search-ul3").append(list)
    $.each(data, function(i, food){
      var html = `<li class="food-search-result", id="food-search-result-${i}">
                    ${food.name}
                  </li>`;
      $(".js-search-food-list3").append(html);
      preInput = input;
      addFoods3(i, html, food);
    });
  }

  function addFoods1(i, html, food){
    $(`#food-search-result-${i}`).on("click", function(){
      $(".js-search-food-list1").remove();
      $(".wrapper-input1").remove();
      var valueHtml = `<div class="wrapper-input1">
                        <input class="form-control", id="js-food-search-form1", value="${food.name}">
                        <input id="food-value", type="hidden", name="recipe[food_ids][]", value="${food.id}">
                          <div id="js-food-search-ul1">
                          </div>
                       </div>`
      $(".label1").after(valueHtml);
      $("#js-food-search-form1").on("keyup", function(e){
        e.preventDefault();
        var list = "<ul class='js-search-food-list1'></ul>"
        var preInput
        searchFoodAjax1(list, preInput);
        return false
      });
    });
  }

    function addFoods2(i, html, food){
      $(`#food-search-result-${i}`).on("click", function(){
        $(".js-search-food-list2").remove();
        $(".wrapper-input2").remove();
        var valueHtml = `<div class="wrapper-input2">
                          <input class="form-control", id="js-food-search-form2", value="${food.name}">
                          <input id="food-value", type="hidden", name="recipe[food_ids][]", value="${food.id}">
                          <div id="js-food-search-ul2"></div>
                       </div>`
        $(".label2").after(valueHtml);
        $("#js-food-search-form2").on("keyup", function(e){
          e.preventDefault();
          var list = "<ul class='js-search-food-list2'></ul>"
          var preInput
          searchFoodAjax2(list, preInput);
          return false
        });
      });
    }

    function addFoods3(i, html, food){
      $(`#food-search-result-${i}`).on("click", function(){
        $(".js-search-food-list3").remove();
        $(".wrapper-input3").remove();
        var valueHtml = `<div class="wrapper-input3">
                          <input class="form-control", id="js-food-search-form3", value="${food.name}">
                          <input id="food-value", type="hidden", name="recipe[food_ids][]", value="${food.id}">
                          <div id="js-food-search-ul3">
                          </div>
                       </div>`
        $(".label3").after(valueHtml);
        $("#js-food-search-form3").on("keyup", function(e){
          e.preventDefault();
          var list = "<ul class='js-search-food-list3'></ul>"
          var preInput
          searchFoodAjax3(list, preInput);
          return false
        });
      });
    }

  $("#js-food-search-form1").on("keyup", function(e){
    e.preventDefault();
    var list = "<ul class='js-search-food-list1'></ul>"
    var preInput
    searchFoodAjax1(list, preInput);
    return false
  });

  $("#js-food-search-form2").on("keyup", function(e){
    e.preventDefault();
    var list = "<ul class='js-search-food-list2'></ul>"
    var preInput
    searchFoodAjax2(list, preInput);
    return false
  });

  $("#js-food-search-form3").on("keyup", function(e){
    e.preventDefault();
    var list = "<ul class='js-search-food-list3'></ul>"
    var preInput
    searchFoodAjax3(list, preInput);
    return false
  });

});
