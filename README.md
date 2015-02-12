Protobuff-py3 Docker image
==========================

This image runs the [protbuffer for python3](https://github.com/GreatFruitOmsk/protobuf-py3). Very handy if you don't want to compile by hand to generate your `xxxxx_pb2.py` file:

Example (our `proto` file[`test.proto`] is in `/tmp`):

    docker run --rm -v /tmp:/tmp slok/protobuf-py3:1.0 -I=/tmp --python_out=/tmp /tmp/test.proto