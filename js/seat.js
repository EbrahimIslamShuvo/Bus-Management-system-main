function x() {
  let kbd = document.querySelectorAll(".kbd");
  const perSetPriceText = document.getElementById("perSeatTaka");
  const perSetPrice = parseInt(perSetPriceText.innerText);
  let arr = [];
  for (let op of kbd) {
    op.addEventListener("click", () => {
      let opp = op.innerText;
      for (i = 0; i < arr.length; i++) {
        if (opp === arr[i]) {
          console.log("same seat selected");
          return;
        }
      }
      arr.push(opp);
      // console.log(arr)

      // console.log("array length: ",arr.length);

      let dup = [...new Set(arr)];

      console.log(dup)

      // console.log(dup.length, "duplicate", dup);

      if (dup.length <= 4) {
        op.style.background = "#67f851";
        let four = document.getElementById("four");

        let four1 = four.innerText;

        let minus = four1 - 1;
        four.innerText = minus;

        let zero = document.getElementById("zero");
        let zero1 = parseInt(zero.innerText);

        let sum = zero1 + 1;
        zero.innerText = sum;

        // duplicate

        // append child part
        let app = document.getElementById("pll");

        let divv = document.createElement("div");

        let makeApp = document.createElement("p");
        for (i = 0; i < arr.length; i++) {
          makeApp.innerText = arr[i];
        }
        divv.appendChild(makeApp);

        let makeApp3 = document.createElement("p");
        divv.appendChild(makeApp3);

        app.appendChild(divv);

        divv.style.width = "100%";
        divv.style.display = "flex";
        divv.style.justifyContent = "space-evenly";

        // total

        let bdt1 = document.getElementById("bdt1");
        // console.log(bdt1)
        let bd1 = parseInt(bdt1.innerText);
        let bdtSum = bd1 + perSetPrice;
        bdt1.innerText = bdtSum;

        // input section

        let ds = document.getElementById("ds");
        if (dup.length >= 4) {
          ds.removeAttribute("disabled");
          ds.style.backgroundColor = "#1DD100";
        }
        ds.addEventListener("click", () => {
          let inne = document.getElementById("in");
          let inn = inne.value;
          if (inn === "NEW15") {
            let grandu = document.getElementById("grando");

            let grand = bdtSum - 0.15;
            grandu.innerText = grand;
          } else if (inn === "COUPLE 20") {
            let granduu = document.getElementById("grando");

            let grandu = bdtSum - 0.2;
            granduu.innerText = grandu;
          }
        });
      } else {
        alert("Sorry! You Can Book Four Seat Only");
      }
    });
    document.addEventListener("DOMContentLoaded", function() {
      const don = document.getElementById("don");
      don.addEventListener("click", function() {
          let dup = [...new Set(arr)]; // Assuming arr is defined somewhere
          console.log("Sending data:", dup); // Check if data is correct
          var jq = jQuery.noConflict();
          jq.ajax({
              type: "POST",
              url: "buyticket.php",
              data: { seatArray: JSON.stringify(dup) },
              success: function(res) {
                  console.log("Response:", res);
                  if (res === "1") {
                      console.log("Success!");
                      // Additional actions for success
                  } else {
                      console.log("Error!");
                      // Additional actions for error
                  }
              }
          });
      });
  });
  
  }
  // console.log(arr)
  //
  //  let firstIn = document.getElementById("first")
  //  let secIn = document.getElementById("second")
  //  let thIn = document.getElementById("third")

  //  don.addEventListener("click",()=>{
  //   console.log("click")
  //   $.ajax({
  //     type: "POST",
  //     url: "buyticket.php",
  //     data: {seatArray: JSON.stringify(dup)},
  //     sucecess: function (res)
  //     {
  //       console.log(res)
  //     }
  //   })

  // })
}
x();
