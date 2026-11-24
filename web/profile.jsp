<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Profile Result</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
  <style>
    body { background: linear-gradient(135deg, #667eea, #764ba2); min-height: 100vh; font-family: 'Segoe UI', sans-serif; }
    .card { border-radius: 20px; }
    .label { font-weight: 600; color: #667eea; }
  </style>
</head>
<body>
<div class="container py-5">
  <div class="row justify-content-center">
    <div class="col-12 col-md-8 col-lg-6">
      <div class="card shadow-lg p-4">
        <div class="text-center mb-4">
          <i class="bi bi-person-circle" style="font-size:4rem;color:#764ba2"></i>
          <h3 class="mt-2">${name}</h3>
          <p class="text-muted">${program}</p>
        </div>
        <ul class="list-group list-group-flush">
          <li class="list-group-item"><span class="label"><i class="bi bi-card-text"></i> Student ID:</span> ${studentId}</li>
          <li class="list-group-item"><span class="label"><i class="bi bi-envelope"></i> Email:</span> ${email}</li>
          <li class="list-group-item"><span class="label"><i class="bi bi-heart"></i> Hobbies:</span> ${hobbies}</li>
          <li class="list-group-item"><span class="label"><i class="bi bi-chat-quote"></i> About Me:</span> ${intro}</li>
        </ul>
        <a href="index.html" class="btn btn-outline-primary mt-4 w-100"><i class="bi bi-arrow-left"></i> Back</a>
      </div>
    </div>
  </div>
</div>
</body>
</html>