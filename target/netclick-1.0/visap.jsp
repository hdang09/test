
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="components/imports.jsp" %>
<!DOCTYPE html>
<html class="h-full">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Payment</title>
    <!-- Tailwind CSS -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.17/dist/tailwind.min.css" rel="stylesheet">
    <!-- Font awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  </head>
  <!-- header -->
  <header>
    <div class="flex container  m-0 px-6 py-6">
    </div>
  </header>  
    <%@ include file="components/sidebar.jsp" %>
  <!-- body -->
  <body class="flex flex-col h-full">
          <!-- Back -->
        <div class="flex justify-between items-center">
            <a href="#" class="flex items-center font-medium tracking-wide text-white capitalize transition-colors duration-300 transform bg-blue-600 rounded-lg hover:bg-blue-500 
               focus:outline-none focus:ring focus:ring-blue-300 focus:ring-opacity-80 p-2 rounded-full absolute top-6 right-6">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 19l-7-7m0 0l7-7m-7 7h18" />
              </svg>
              <span class="text-sm ml-1">Back</span>
            </a>
          </div>
          <!-- End Back -->
    <div class="flex-grow">
      <div class="flex justify-center items-center mt-10 mb-0">
        <h1 class="text-8xl font-light mb-8 px-3">Set up your credit</h1> 
    </div>
    <div class="flex justify-center items-center mb-4">
        <img src="assets/visa.png" alt="" class="w-24">
      </div>
      <div class="w-full max-w-md mx-auto">
        <div class="w-full">
          <div class="max-w-md">
            <!-- login form -->
            <form class="space-y-4">
                <div>
                  <label for="Card Number" class="block text-gray-800 font-semibold">Card Number</label>
                  <input id="cardNumber" type="text" class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:border-blue-500"
                    placeholder="Number">
                </div>
                <div class="flex space-x-4">
                  <div class="w-1/2">
                    <label for="expiryDate" class="block text-gray-800 font-semibold">Expire Date</label>
                    <input id="expiryDate" type="text" class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:border-blue-500"
                      placeholder="MM/YY">
                  </div>
                  <div class="w-1/2">
                    <label for="cvv" class="block text-gray-800 font-semibold">CVV</label>
                    <input id="cvv" type="text" class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:border-blue-500"
                      placeholder="CVV">
                  </div>
                </div>
                <div>
                  <label for="cardHolder" class="block text-gray-800 font-semibold">Name</label>
                  <input id="cardHolder" type="text" class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:border-blue-500"
                    placeholder="Name card">
                </div>
                <div class="flex justify-between items-center">
                  <div class="flex items-center">
                    <input id="saveCard" type="checkbox" class="text-blue-500 focus:ring-blue-500 border-gray-300 rounded">
                    <label for="saveCard" class="ml-2 block text-gray-800">Save information</label>
                  </div>
                  <button type="submit"
                    class="px-4 py-2 bg-blue-500 text-white font-semibold rounded-md focus:outline-none hover:bg-blue-600 transition-colors">Submit</button>
                </div>
              </form>
          </div>
        </div>
      </div>
    </div>
    <footer class="inline-block w-screen bg-gray-800">
      <div class="flex items-center justify-center mt-4 mb-2">
        <a href="#" class="w-8 h-8 bg-white bg-opacity-20 rounded-full flex items-center justify-center mr-2 transition-opacity duration-300 hover:bg-opacity-50">
          <i class="fab fa-instagram text-white"></i>
        </a>
        <a href="#" class="w-8 h-8 bg-white bg-opacity-20 rounded-full flex items-center justify-center mr-2 transition-opacity duration-300 hover:bg-opacity-50">
          <i class="fab fa-twitter text-white"></i>
        </a>
        <a href="#" class="w-8 h-8 bg-white bg-opacity-20 rounded-full flex items-center justify-center mr-2 transition-opacity duration-300 hover:bg-opacity-50">
          <i class="fab fa-facebook text-white"></i>
        </a>
      </div>
      <ul class="list-none flex justify-center">
        <li class="mx-2"><a href="#" class="text-white opacity-80 hover:opacity-100">Home</a></li>
        <li class="mx-2"><a href="#" class="text-white opacity-80 hover:opacity-100">Services</a></li>
        <li class="mx-2"><a href="#" class="text-white opacity-80 hover:opacity-100">About</a></li>
        <li class="mx-2"><a href="#" class="text-white opacity-80 hover:opacity-100">Terms</a></li>
        <li class="mx-2"><a href="#" class="text-white opacity-80 hover:opacity-100">Privacy Policy</a></li>
      </ul>
      <p class="text-center text-gray-500 mt-2">NetClick ©2023</p>
    </footer>
  </body>
</html>




