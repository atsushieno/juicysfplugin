
all:
	mkdir -p fluidsynth-build && cd fluidsynth-build && cmake \
		-Denable-alsa=off -Denable-lash=off -Denable-sdl2=off -Denable-dbus=off -Denable-jack=off -Denable-pulseaudio=off -DBUILD_SHARED_LIBS=no -DCMAKE_POSITION_INDEPENDENT_CODE=yes -DCMAKE_INSTALL_PREFIX=../fluidsynth-dist ../fluidsynth && make && make install
	$(JUCE_DIR)/Projucer --resave juicysfplugin.jucer
	cd Builds/Linux && make

