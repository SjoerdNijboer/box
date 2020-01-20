FROM gcc:latest AS build

WORKDIR /box

# Copy the source code.
COPY ./ ./
# Build the box.
RUN make box


FROM ubuntu:latest AS deploy

WORKDIR /box

# Copy the compiled box.
COPY --from=build /box/box ./

# Run the box.
ENTRYPOINT ["./box"]
