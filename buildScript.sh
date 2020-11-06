#!/bin/bash
cd AreaServerExplorer/bin/Release/

#Ubuntu 32
monoRuntimeName=mono-6.8.0-ubuntu-16.04-x86
mkbundle --fetch-target $monoRuntimeName
mkbundle -o ../../../builds/AreaServerExplorer-$monoRuntimeName --cross $monoRuntimeName AreaServerExplorer.exe --machine-config /etc/mono/4.5/machine.config --no-config


#Ubuntu 64
monoRuntimeName=mono-6.8.0-ubuntu-16.04-x64
mkbundle --fetch-target $monoRuntimeName
mkbundle -o ../../../builds/AreaServerExplorer-$monoRuntimeName --cross $monoRuntimeName AreaServerExplorer.exe --machine-config /etc/mono/4.5/machine.config --no-config


#Ubuntu arm64
monoRuntimeName=mono-6.8.0-ubuntu-16.04-arm64
mkbundle --fetch-target $monoRuntimeName
mkbundle -o ../../../builds/AreaServerExplorer-$monoRuntimeName --cross $monoRuntimeName AreaServerExplorer.exe --machine-config /etc/mono/4.5/machine.config --no-config

#Ubuntu arm
monoRuntimeName=mono-6.8.0-ubuntu-16.04-arm
mkbundle --fetch-target $monoRuntimeName
mkbundle -o ../../../builds/AreaServerExplorer-$monoRuntimeName --cross $monoRuntimeName AreaServerExplorer.exe --machine-config /etc/mono/4.5/machine.config --no-config

#OSX 64
monoRuntimeName=mono-6.8.0-osx-10.9-x64
mkbundle --fetch-target $monoRuntimeName
mkbundle -o ../../../builds/AreaServerExplorer-$monoRuntimeName --cross $monoRuntimeName AreaServerExplorer.exe --machine-config /etc/mono/4.5/machine.config --no-config

#OSX 32
monoRuntimeName=mono-6.8.0-osx-10.9-i386
mkbundle --fetch-target $monoRuntimeName
mkbundle -o ../../../builds/AreaServerExplorer-$monoRuntimeName --cross $monoRuntimeName AreaServerExplorer.exe --machine-config /etc/mono/4.5/machine.config --no-config

#debian arm64
monoRuntimeName=mono-6.8.0-debian-10-arm64
mkbundle --fetch-target $monoRuntimeName
mkbundle -o ../../../builds/AreaServerExplorer-$monoRuntimeName --cross $monoRuntimeName AreaServerExplorer.exe --machine-config /etc/mono/4.5/machine.config --no-config

#debian arm
monoRuntimeName=mono-6.8.0-debian-10-arm
mkbundle --fetch-target $monoRuntimeName
mkbundle -o ../../../builds/AreaServerExplorer-$monoRuntimeName --cross $monoRuntimeName AreaServerExplorer.exe --machine-config /etc/mono/4.5/machine.config --no-config

#debian 32
monoRuntimeName=mono-6.8.0-debian-10-x86
mkbundle --fetch-target $monoRuntimeName
mkbundle -o ../../../builds/AreaServerExplorer-$monoRuntimeName --cross $monoRuntimeName AreaServerExplorer.exe --machine-config /etc/mono/4.5/machine.config --no-config

#debian 64
monoRuntimeName=mono-6.8.0-debian-10-x64
mkbundle --fetch-target $monoRuntimeName
mkbundle -o ../../../builds/AreaServerExplorer-$monoRuntimeName --cross $monoRuntimeName AreaServerExplorer.exe --machine-config /etc/mono/4.5/machine.config --no-config

#Rasbian
monoRuntimeName=mono-6.8.0-raspbian-9-arm
mkbundle --fetch-target $monoRuntimeName
mkbundle -o ../../../builds/AreaServerExplorer-$monoRuntimeName --cross $monoRuntimeName AreaServerExplorer.exe --machine-config /etc/mono/4.5/machine.config --no-config

cd ../../../