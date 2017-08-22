LAST_TAG="${TRAVIS_TAG}"

if [ ! -z $LAST_TAG ]; then

MAYOR=$(echo $LAST_TAG | cut -d'.' -f1 | tr -d '[a-z][A-Z]')
MINOR=$(echo $LAST_TAG | cut -d'.' -f2)
PATCH=$(echo $LAST_TAG | cut -d'.' -f3)

echo "Current tag: $LAST_TAG"

REPLACEMENT="VERSION $MAYOR.$MINOR.$PATCH"
echo "Updating CMAKE version: VERSION 0.0.0 -> $REPLACEMENT"
sed -i "s/VERSION 0.0.0/$REPLACEMENT/g" CMakeLists.txt

fi
