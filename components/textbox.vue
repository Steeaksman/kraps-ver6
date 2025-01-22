
<template>
    <div class="max-w-2xl mx-auto mt-10 p-6 bg-white border border-gray-200 rounded-lg shadow-md">
        <form>
          <!-- Title Input -->
          <div class="mb-4">
            <label for="title" class="block text-sm font-medium text-gray-700">
              Post Title
            </label>
            <input
              type="text"
              id="title"
              name="title"
              class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500 sm:text-sm"
              placeholder="Enter a descriptive title"
              required
            />
          </div>
      
          <!-- Message Input -->
          <div class="mb-4">
            <label for="message" class="block text-sm font-medium text-gray-700">
              Message
            </label>
            <textarea
              id="message"
              name="message"
              rows="5"
              class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500 sm:text-sm"
              placeholder="Write your post here..."
              required
            ></textarea>
          </div>
      
          <!-- Submit Button -->
          <div class="text-right">
            <button
              type="submit"
              class="inline-flex items-center px-4 py-2 border border-transparent text-sm font-medium rounded-md shadow-sm text-white bg-blue-600 hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500"
            >
              Submit Report
            </button>
          </div>
        </form>
      </div>
    </template>  