# HelloWorld - Ruby Sinatra

HelloWorld is a simple Ruby application using the Sinatra framework, designed to demonstrate a basic "Hello, World!" setup using Docker.

## Requirements

- Docker
- Ruby and Bundler (optional, only if you want to run the application without Docker)

## Installation and Execution

1. Clone this repository:

    ```bash
    git clone https://github.com/yourusername/helloworld.git
    cd helloworld
    ```

2. Build the Docker image:

    ```bash
    docker build -t helloworld-ruby .
    ```

3. Run the Docker container:

    ```bash
    docker run -p 4567:4567 helloworld-ruby
    ```

The application will be available at `http://localhost:4567`.

## Dockerfile

This project includes a `Dockerfile` that performs the following actions:

- Uses the Ruby 3.3.6 base image.
- Copies the `Gemfile` and `Gemfile.lock` files and installs dependencies.
- Copies the rest of the project files to the container.
- Exposes port 4567 for accessing the application.
- Runs the application with `ruby app.rb`.

## Notes

Ensure that the `app.rb` file is in the root of the project. This file should contain the application code using Sinatra to set up the basic server.
