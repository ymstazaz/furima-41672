function calculatePrice() {
  const priceInput = document.getElementById("item-price");
  const addTaxPrice = document.getElementById("add-tax-price");
  const profit = document.getElementById("profit");

  if (priceInput) {
    priceInput.addEventListener("input", () => {
      const price = parseFloat(priceInput.value);

      if (!isNaN(price) && price > 0) {
        const fee = Math.floor(price * 0.1); // 手数料を10%として計算
        const profitAmount = price - fee; // 利益を計算

        addTaxPrice.textContent = fee.toLocaleString();
        profit.textContent = profitAmount.toLocaleString();
      } else {
        addTaxPrice.textContent = "0";
        profit.textContent = "0";
      }
    });
  }
}

window.addEventListener("turbo:load" ,calculatePrice);
window.addEventListener("turbo:render", calculatePrice);