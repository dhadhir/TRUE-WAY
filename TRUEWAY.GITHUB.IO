<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Invoice – True Way Logistics Ltd</title>
  <link rel="stylesheet" href="invoice.css">
</head>
<body>

<div class="invoice-container">

  <!-- HEADER -->
  <div class="invoice-header">
    <div class="logo">
      <img src="logo.png" alt="True Way Logistics Logo">
    </div>
    <div class="company-details">
      <h2>True Way Logistics Ltd</h2>
      <p>Mogadishu, Somalia</p>
      <p>Email: logisticstrueway@gmail.com</p>
      <p>WhatsApp: +252 771 251 235</p>
    </div>
  </div>

  <!-- INVOICE INFO -->
  <div class="invoice-info">
    <div>
      <h3>INVOICE</h3>
      <p><strong>Invoice No:</strong> TW-001</p>
      <p><strong>Date:</strong> 25 Feb 2026</p>
    </div>
    <div>
      <p><strong>Billed To:</strong></p>
      <p>Client Name</p>
      <p>Client Company</p>
      <p>Client Phone</p>
    </div>
  </div>

  <!-- TABLE -->
  <table class="invoice-table">
    <thead>
      <tr>
        <th>Description</th>
        <th>Qty</th>
        <th>Rate (USD)</th>
        <th>Total (USD)</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Customs Clearance & Documentation</td>
        <td>1</td>
        <td>250</td>
        <td>250</td>
      </tr>
      <tr>
        <td>Port Handling & Coordination</td>
        <td>1</td>
        <td>150</td>
        <td>150</td>
      </tr>
    </tbody>
  </table>

  <!-- TOTALS -->
  <div class="totals">
    <div></div>
    <div class="totals-box">
      <p><span>Subtotal:</span> <strong>$400</strong></p>
      <p><span>Tax:</span> <strong>$0</strong></p>
      <p class="grand-total"><span>Total:</span> <strong>$400</strong></p>
    </div>
  </div>

  <!-- FOOTER -->
  <div class="invoice-footer">
    <p><strong>Payment Terms:</strong> Payable upon receipt</p>
    <p>Thank you for doing business with True Way Logistics Ltd.</p>
  </div>

</div>

</body>
</html>
invoice/
├── invoice.html
├── invoice.css
└── logo.png   ← (use the TW logo image you uploaded)
body {
  background: #f4f7fb;
  font-family: "Segoe UI", Arial, sans-serif;
  color: #333;
}

.invoice-container {
  width: 800px;
  margin: 40px auto;
  background: #ffffff;
  padding: 40px;
  border-radius: 12px;
  box-shadow: 0 10px 30px rgba(0,0,0,0.08);
}

/* HEADER */
.invoice-header {
  display: flex;
  justify-content: space-between;
  border-bottom: 3px solid #2a9df4;
  padding-bottom: 20px;
}

.logo img {
  height: 80px;
}

.company-details h2 {
  margin: 0;
  color: #2a9df4;
}

/* INFO */
.invoice-info {
  display: flex;
  justify-content: space-between;
  margin: 30px 0;
}

.invoice-info h3 {
  color: #2a9df4;
  margin-bottom: 10px;
}

/* TABLE */
.invoice-table {
  width: 100%;
  border-collapse: collapse;
  margin-top: 20px;
}

.invoice-table thead {
  background: #2a9df4;
  color: #ffffff;
}

.invoice-table th,
.invoice-table td {
  padding: 12px;
  text-align: center;
  border-bottom: 1px solid #ddd;
}

.invoice-table td:first-child {
  text-align: left;
}

/* TOTALS */
.totals {
  display: flex;
  justify-content: space-between;
  margin-top: 30px;
}

.totals-box {
  width: 300px;
}

.totals-box p {
  display: flex;
  justify-content: space-between;
  margin: 8px 0;
}

.grand-total {
  font-size: 18px;
  border-top: 2px solid #2a9df4;
  padding-top: 10px;
}

/* FOOTER */
.invoice-footer {
  margin-top: 40px;
  text-align: center;
  font-size: 14px;
  color: #555;
}

/* PRINT FRIENDLY */
@media print {
  body {
    background: white;
  }
  .invoice-container {
    box-shadow: none;
    margin: 0;
  }
}
