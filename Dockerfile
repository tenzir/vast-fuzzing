FROM tenzir/vast-deps
LABEL maintainer="engineering@tenzir.com"

# TODO: Move into the upstream vast-deps dockerfile
# RUN apt-get install -y ninja-build

RUN mkdir -p /tmp/vast/fuzz
COPY . /tmp/vast/fuzz
#COPY extract_flags.sh /tmp/vast/fuzz/
#COPY CMakeLists.txt /tmp/vast/fuzz/

RUN cmake -S /tmp/vast/fuzz -B /tmp/vast/fuzz/build -G Ninja
RUN cmake --build /tmp/vast/fuzz/build
