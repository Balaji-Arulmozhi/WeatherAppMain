# Weather App

The Weather App is a Swift-based iOS application that provides users with weather information for their current location, the next 5 days, and allows them to search for weather data in different locations.

## Features

- Display current location weather data.
- Present a 5-day weather forecast.
- Allow users to search for weather data in different locations.
- Utilize MVVM architecture for a clear separation of concerns.
- Implement the observable pattern for efficient data binding.
- Use storyboards for visually designing the app's user interface.

## Screenshots

<img src="https://github.com/Balaji-Arulmozhi/WeatherAppMain/assets/116958077/8c03c2da-170d-44f4-b228-ad8085615e24"
alt="Current Weather" height="200">  <img src="https://github.com/Balaji-Arulmozhi/WeatherAppMain/assets/116958077/c4333eeb-dc6b-410b-b1eb-9efff2960d6e"
  alt="Current Weather" height="200">

## Usage
- Upon launching the app, the current weather data for the user's location is displayed.
- Navigate to the 5-day forecast screen to view the weather forecast for the next 5 days.
- Use the search functionality to enter a different location and view its weather data.  

## Architecture

The app is built using the Model-View-ViewModel (MVVM) architecture:

Model: Represents the data and business logic. This includes weather data models and service classes for fetching weather information.

View: Displays the user interface. Implemented using storyboards for visual design and interface components.

ViewModel: Manages the presentation logic and interacts with the model to provide data to the view. Utilizes the observable pattern for efficient data binding.


Acknowledgments
- Thanks to [OpenWeatherApp](https://openweathermap.org/) for providing the weather API.
