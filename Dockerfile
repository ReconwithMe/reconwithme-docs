FROM retypeapp/retype:latest-ubuntu

WORKDIR /

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN apt-get update

# #install nvm
# RUN mkdir -p /usr/local/nvm
# ENV NVM_DIR /usr/local/nvm
# ENV NODE_VERSION 16.6.1

# RUN wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

# # install node and npm
# RUN source $NVM_DIR/nvm.sh \
# 	&& nvm install $NODE_VERSION

# # add node and npm to path so the commands are available
# ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
# ENV PATH $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH

# # confirm installation
# # COPY . .
# RUN node -v
# RUN npm -v

# RUN npm install retypeapp-linux-x64 --global

COPY ./ ./

EXPOSE 5000
CMD ["retype", "watch"]