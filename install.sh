yarn;
yarn build-firefox;

# Signing section
# NOTE: Installing this plugin requires it to be signed
# You can sign and build an extension for the unlisted channel
# So not public

# Requires:
npm install -g web-ext

# Following some steps to use web-ext build, web-ext sign
# See: https://extensionworkshop.com/documentation/develop/getting-started-with-web-ext/#package-sign-and-publish-an-extension

# Dist building
cd dist;
web-ext lint;
web-ext build;

# Sign unlisted in order to install
web-ext sign --api-key [JWT_ISSUER] --api-secret [JWT_SECRET] --channel=unlisted