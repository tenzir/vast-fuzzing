FROM tenzir/vast-deps
LABEL maintainer="engineering@tenzir.com"

RUN mkdir -p /tmp/vast/fuzz
COPY . /tmp/vast/fuzz

RUN cmake -S /tmp/vast/fuzz -B /tmp/vast/fuzz/build -G Ninja
RUN cmake --build /tmp/vast/fuzz/build
