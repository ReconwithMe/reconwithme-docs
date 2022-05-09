# Build
$ docker build -t retypeapp/retype .
# or
$ docker-compose build

# Create an easy to use alias
$ alias retype='docker run --rm -it -v "$PWD:/app" retypeapp/retype'

# Or run manually
$ docker run --rm -it -v "$PWD:/app" retypeapp/retype

# Or with compose
$ docker-compose up retype