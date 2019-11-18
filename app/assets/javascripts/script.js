$(document).ready(function(){
    Paloma.start();
  });

  Paloma.controller('Posts', {
    new: function(){
      console.log("HELOOOOOOOOOO")

      const fetchData = function(event){
        Rails.ajax({
            url: "/ajax/fetchrestaurant/"+event.target.value,
            type: "GET",
            dataType: "json",
            success: function(data,textStatus,xhr){
                console.log("AJAX FETCH SUCCESS");
                console.log(data);
                const displayName = document.getElementById("result-name");
                displayName.innerHTML = "";
                var resultName = document.createElement("div");
                resultName.textContent="Restaurant Name:" + data.name;
                displayName.appendChild(resultName);


                const displayMin = document.getElementById("result-minimum");
                displayMin.innerHTML = "";
                var resultMin = document.createElement("div");
                resultMin.textContent="Minimum Spend:" + data.minimum_spending;
                displayMin.appendChild(resultMin);

                const displayImage = document.getElementById("result-image");
                displayImage.innerHTML = "";
                var resultPic = document.createElement("img");
                resultPic.classList.add("ajax-img")
                resultPic.src=data.image_url;
                displayImage.appendChild(resultPic);

            },
            error: function(xhr,textStatus,errorThrown){
                console.log("ERROR");
                console.log(errorThrown)
            }
        })
      }
      document.getElementById("post_restaurant_id").addEventListener("change",fetchData)
    }
  });
