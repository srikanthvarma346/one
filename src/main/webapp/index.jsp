<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Counter App</title>
  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
      font-family: system-ui, -apple-system, sans-serif;
    }

    body {
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
      background-color: #f0f2f5;
    }

    .card {
      background: #ffffff;
      padding: 2rem;
      border-radius: 12px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
      text-align: center;
      width: 300px;
    }

    h1 {
      font-size: 1.5rem;
      color: #333;
      margin-bottom: 1rem;
    }

    .count {
      font-size: 4rem;
      font-weight: bold;
      color: #2c3e50;
      margin: 1rem 0;
    }

    .btn-group {
      display: flex;
      gap: 10px;
      justify-content: center;
    }

    button {
      padding: 0.6rem 1.2rem;
      font-size: 1rem;
      font-weight: 600;
      border: none;
      border-radius: 6px;
      cursor: pointer;
      transition: opacity 0.2s;
    }

    button:hover {
      opacity: 0.8;
    }

    .btn-decrease { background-color: #e74c3c; color: white; }
    .btn-reset    { background-color: #95a5a6; color: white; }
    .btn-increase { background-color: #2ecc71; color: white; }
  </style>
</head>
<body>

  <div class="card">
    <h1>Counter</h1>
    <div class="count" id="count-val">0</div>
    <div class="btn-group">
      <button class="btn-decrease" id="btn-decrease">-</button>
      <button class="btn-reset" id="btn-reset">Reset</button>
      <button class="btn-increase" id="btn-increase">+</button>
    </div>
  </div>

  <script>
    let count = 0;

    const countDisplay = document.getElementById('count-val');
    const decreaseBtn = document.getElementById('btn-decrease');
    const resetBtn = document.getElementById('btn-reset');
    const increaseBtn = document.getElementById('btn-increase');

    function updateDisplay() {
      countDisplay.textContent = count;
      if (count > 0) countDisplay.style.color = '#2ecc71';
      else if (count < 0) countDisplay.style.color = '#e74c3c';
      else countDisplay.style.color = '#2c3e50';
    }

    increaseBtn.addEventListener('click', () => {
      count++;
      updateDisplay();
    });

    decreaseBtn.addEventListener('click', () => {
      count--;
      updateDisplay();
    });

    resetBtn.addEventListener('click', () => {
      count = 0;
      updateDisplay();
    });
  </script>

</body>
</html>
