# Motorcycle Engine Sound Guessing Game

<img width="953" alt="Screenshot 2023-08-25 at 09 37 45" src="https://github.com/nullbr/revvocal/assets/94543524/49547eb0-61c7-4b55-b004-4244a136d609">

Welcome to the Motorcycle Engine Sound Guessing Game! Test your knowledge of motorcycle engine sounds with this web app created using Ruby 3.1.2 and Ruby on Rails 7.0.6. Dive into the exciting world of motorcycles and challenge yourself to identify different engine sounds from various models and brands.

## Features

- **Authentic Engine Sounds**: Immerse yourself in the world of motorcycles with a collection of authentic engine sounds from different motorcycle models and brands.

- **Sound Guessing Challenge**: Sharpen your auditory senses as you listen to engine sounds and try to identify the motorcycle model. Train your ears and have fun!

- **Leaderboard Competition**: Compete against fellow motorcycle enthusiasts by accurately identifying as many engine sounds as possible within the given time limit. Aim to secure your spot at the top of the global leaderboard.

## Technologies Used

- **Ruby 3.1.2**: The programming language that powers the core logic of the app.

- **Ruby on Rails 7.0.6**: The web framework used to build the app's architecture and user interface.

- **Turbo and Stimulus**: Employed to enhance the user experience by enabling dynamic, reactive elements without full page reloads.

- **Tailwind CSS**: Provides the styling for the web app, ensuring an attractive and user-friendly interface.

- **Devise**: Used for handling user authentication, mailing, and session management.

- **Capistrano**: The deployment tool of choice, making it seamless to deploy updates to the production environment.

- **Digital Ocean**: The web app is hosted on a Digital Ocean server for reliable and scalable deployment.

- **Passenger and Nginx**: Passenger serves as the application server, while Nginx functions as the web server, ensuring optimal performance and security.

## Deployment

To deploy the Motorcycle Engine Sound Guessing Game to production, follow these steps:

1. Clone the repository to your local machine.
2. Install Ruby 3.1.2 and Rails 7.0.6 if not already installed.
3. Configure the necessary environment variables, such as database credentials and API keys.
4. Run `bundle install` to install the required gems.
5. Set up the database using `bin/rails db:create` and `bin/rails db:migrate`.
6. Customize the app's appearance and behavior by modifying the Tailwind CSS files and Stimulus controllers.
7. Test the app locally using `bin/dev` and navigate to `http://localhost:3000` in your browser.
8. Once satisfied, prepare the app for production deployment.
9. Use Capistrano to deploy the app to your Digital Ocean server, utilizing Passenger and Nginx.
10. Set up the necessary server configurations for optimal performance and security.
11. Monitor the deployed app and ensure its smooth operation in the production environment.

## Contributing

Contributions to the Motorcycle Engine Sound Guessing Game are welcome! If you'd like to contribute, please fork the repository, create a new branch, make your changes, and submit a pull request. Make sure to follow the existing coding style and include appropriate tests for new features.

Enjoy the Motorcycle Engine Sound Guessing Game and have fun testing your motorcycle engine sound knowledge! 🏍️🔊
