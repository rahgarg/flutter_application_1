# FROM gitpod/workspace-full:latest

# USER root

# # Install dependencies
# RUN apt-get update && apt-get install -y curl unzip xz-utils libglu1-mesa
 
# # Install Flutter SDK
# RUN git clone https://github.com/flutter/flutter.git -b stable --depth 1 /home/gitpod/flutter
# ENV PATH="/home/gitpod/flutter/bin:/home/gitpod/.pub-cache/bin:${PATH}"

# # Enable Flutter web
# RUN flutter config --enable-web

FROM gitpod/workspace-full:latest

USER root

# Install dependencies
RUN apt-get update && apt-get install -y \
  curl \
  unzip \
  xz-utils \
  libglu1-mesa \
  cmake \
  pkg-config \
  libgtk-3-dev  # Add this line to install GTK+ 3.0

# Install Flutter SDK
RUN git clone https://github.com/flutter/flutter.git -b stable --depth 1 /home/gitpod/flutter
ENV PATH="/home/gitpod/flutter/bin:/home/gitpod/.pub-cache/bin:${PATH}"

# Enable Flutter web
RUN flutter config --enable-web
