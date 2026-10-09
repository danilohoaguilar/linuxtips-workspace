# Using offical golang image
# FROM golang
FROM golang:tip-trixie as build

# Setting the working directory
WORKDIR /app

# Copying all content to the docker image
COPY go.mod go.sum ./

# Install dependencies
RUN go mod download

COPY . .

# Compile the application 
RUN go build \
    -ldflags="-linkmode external -extldflags -static" \
    -tags netgo \
    -o api-golang

    
# Using a scratch image to deploy to the application in
# a smaller size
FROM scratch
COPY --from=build /app/api-golang api-golang

# Set the environment variable
ENV GIN_MODE release

# Using the porta 8080
EXPOSE 8080

# Start the application
CMD ["/api-golang"]


