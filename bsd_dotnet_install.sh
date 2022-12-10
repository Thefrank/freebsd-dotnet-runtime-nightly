#!/bin/sh

# Do note this clobbers dotnet-install.sh
# $1 - SDK tarball for FreeBSD
# $2 - output location

echo Extracting .NET SDK into $2...

mkdir -p $2/.dotnet
tar zxf $1 --directory $2/.dotnet
echo 'exit 0' > $2/.dotnet/dotnet-install.sh
