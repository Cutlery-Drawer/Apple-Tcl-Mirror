GET = cd $^ && wget --no-adjust-extension --no-server-response -q
FILES = \
	source/tcl/tcl-87/tcl_ext/snack/Makefile \
	source/tcl/tcl-87/tcl_ext/snack/snack/BSD.txt \
	source/tcl/tcl-87/tcl_ext/snack/snack/COPYING \
	source/tcl/tcl-87/tcl_ext/snack/snack/Makefile.in \
	source/tcl/tcl-87/tcl_ext/snack/snack/aclocal.m4 \
	source/tcl/tcl-87/tcl_ext/snack/snack/changes \
	source/tcl/tcl-87/tcl_ext/snack/snack/configure \
	source/tcl/tcl-87/tcl_ext/snack/snack/configure.in \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/MinSect.py \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/MinSpeg.py \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/MinWave.py \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/dataCmd.py \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/echo.py \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/ex1.wav \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/generator.py \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/mixplay.py \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/notescale.py \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/oggplay.py \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/playnotes.py \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/polarspec.py \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/python-demos.txt \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/spectrogram.py \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/sphere.py \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/tkSnack.py \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/widget.py \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/CSLwithAB.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/MinSect.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/MinSpeg.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/MinWave.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/Section.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/Spectrogram.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/SphereTest.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/Waveform.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/aserver.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/compose.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/cool.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/cutter.plg \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/dataplot.plg \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/dbrec.scr \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/dbrec.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/echo.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/ex1.phn \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/ex1.wav \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/ex2.phn \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/ex2.wav \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/formant.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/fourChan.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/generator.plg \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/generator.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/generator2.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/levelmeter.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/mapChan.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/mixer.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/mixplay.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/notescale.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/oggstream.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/phonetogram.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/pitch.plg \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/pitch.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/play.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/playlist.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/polarspec.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/record.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/recrplay.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/rplay.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/sdx \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/snamp.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/spectrum.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/tcl-demos.txt \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/tclkit-linux-x86 \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/tomAmp.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/vowelspace.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/widget.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/wrap.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/xs.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/doc/AddSubCmd.html \
	source/tcl/tcl-87/tcl_ext/snack/snack/doc/Callback.html \
	source/tcl/tcl-87/tcl_ext/snack/snack/doc/CreateFilter.html \
	source/tcl/tcl-87/tcl_ext/snack/snack/doc/FileFormat.html \
	source/tcl/tcl-87/tcl_ext/snack/snack/doc/SampConv.html \
	source/tcl/tcl-87/tcl_ext/snack/snack/doc/SnackLib.html \
	source/tcl/tcl-87/tcl_ext/snack/snack/doc/SoundData.html \
	source/tcl/tcl-87/tcl_ext/snack/snack/doc/SoundObj.html \
	source/tcl/tcl-87/tcl_ext/snack/snack/doc/SoundProp.html \
	source/tcl/tcl-87/tcl_ext/snack/snack/doc/SoundSamp.html \
	source/tcl/tcl-87/tcl_ext/snack/snack/doc/SphereFile.txt \
	source/tcl/tcl-87/tcl_ext/snack/snack/doc/python-man.html \
	source/tcl/tcl-87/tcl_ext/snack/snack/doc/tcl-man.html \
	source/tcl/tcl-87/tcl_ext/snack/snack/ext/Makefile.in \
	source/tcl/tcl-87/tcl_ext/snack/snack/ext/aclocal.m4 \
	source/tcl/tcl-87/tcl_ext/snack/snack/ext/configure \
	source/tcl/tcl-87/tcl_ext/snack/snack/ext/configure.in \
	source/tcl/tcl-87/tcl_ext/snack/snack/ext/square.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/ext/square.dsp \
	source/tcl/tcl-87/tcl_ext/snack/snack/ext/square.vcproj \
	source/tcl/tcl-87/tcl_ext/snack/snack/ext/test.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/SnackOgg.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/SphereFile.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/confdefs.h \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/ffa.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/g711.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkAudIO.h \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkAudio.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkCanvItems.h \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkCanvSect.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkCanvSpeg.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkCanvWave.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkFilter.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkFilterIIR.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkFormant.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkFormant.h \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkFormatMP3.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkFormatMP3.h \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkGetF0.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkGetF0.h \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkMixer.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkPitchCmd.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkSound.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkSound.h \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkSoundEdit.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkSoundEngine.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkSoundFile.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkSoundProc.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkSynthesis.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/shape.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/sigproc.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/sigproc2.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/snack.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/snack.h \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/snackDecls.h \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/snackStubInit.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/snackStubLib.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/generic/sound.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/pkgIndex.tcl.in \
	source/tcl/tcl-87/tcl_ext/snack/snack/python/setup.py \
	source/tcl/tcl-87/tcl_ext/snack/snack/python/tkSnack.py \
	source/tcl/tcl-87/tcl_ext/snack/snack/tclconfig/install-sh \
	source/tcl/tcl-87/tcl_ext/snack/snack/tclconfig/tcl.m4 \
	source/tcl/tcl-87/tcl_ext/snack/snack/tests/all.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/tests/audio.test \
	source/tcl/tcl-87/tcl_ext/snack/snack/tests/cget.test \
	source/tcl/tcl-87/tcl_ext/snack/snack/tests/concat.test \
	source/tcl/tcl-87/tcl_ext/snack/snack/tests/conf.test \
	source/tcl/tcl-87/tcl_ext/snack/snack/tests/convert.test \
	source/tcl/tcl-87/tcl_ext/snack/snack/tests/copy.test \
	source/tcl/tcl-87/tcl_ext/snack/snack/tests/crop.test \
	source/tcl/tcl-87/tcl_ext/snack/snack/tests/cut.test \
	source/tcl/tcl-87/tcl_ext/snack/snack/tests/data.test \
	source/tcl/tcl-87/tcl_ext/snack/snack/tests/dbpower.test \
	source/tcl/tcl-87/tcl_ext/snack/snack/tests/fileio.test \
	source/tcl/tcl-87/tcl_ext/snack/snack/tests/filter.test \
	source/tcl/tcl-87/tcl_ext/snack/snack/tests/formant.test \
	source/tcl/tcl-87/tcl_ext/snack/snack/tests/inflush.test \
	source/tcl/tcl-87/tcl_ext/snack/snack/tests/insert.test \
	source/tcl/tcl-87/tcl_ext/snack/snack/tests/length.test \
	source/tcl/tcl-87/tcl_ext/snack/snack/tests/maxmin.test \
	source/tcl/tcl-87/tcl_ext/snack/snack/tests/mixer.test \
	source/tcl/tcl-87/tcl_ext/snack/snack/tests/pitch.test \
	source/tcl/tcl-87/tcl_ext/snack/snack/tests/play.test \
	source/tcl/tcl-87/tcl_ext/snack/snack/tests/power.test \
	source/tcl/tcl-87/tcl_ext/snack/snack/tests/record.test \
	source/tcl/tcl-87/tcl_ext/snack/snack/tests/reverse.test \
	source/tcl/tcl-87/tcl_ext/snack/snack/tests/sample.test \
	source/tcl/tcl-87/tcl_ext/snack/snack/tests/sound.test \
	source/tcl/tcl-87/tcl_ext/snack/snack/tests/swap.test \
	source/tcl/tcl-87/tcl_ext/snack/snack/unix/Makefile.in \
	source/tcl/tcl-87/tcl_ext/snack/snack/unix/aclocal.m4 \
	source/tcl/tcl-87/tcl_ext/snack/snack/unix/configure \
	source/tcl/tcl-87/tcl_ext/snack/snack/unix/configure.in \
	source/tcl/tcl-87/tcl_ext/snack/snack/unix/jkAudIO_alsa.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/unix/jkAudIO_hp.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/unix/jkAudIO_oss.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/unix/jkAudIO_osx.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/unix/jkAudIO_sgi.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/unix/jkAudIO_skel.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/unix/jkAudIO_sun.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/unix/pkgIndex.tcl.dll \
	source/tcl/tcl-87/tcl_ext/snack/snack/unix/snack.decls \
	source/tcl/tcl-87/tcl_ext/snack/snack/unix/snack.tcl \
	source/tcl/tcl-87/tcl_ext/snack/snack/unix/snackConfig.sh.in \
	source/tcl/tcl-87/tcl_ext/snack/snack/win/Makefile.in \
	source/tcl/tcl-87/tcl_ext/snack/snack/win/aclocal.m4 \
	source/tcl/tcl-87/tcl_ext/snack/snack/win/configure \
	source/tcl/tcl-87/tcl_ext/snack/snack/win/configure.in \
	source/tcl/tcl-87/tcl_ext/snack/snack/win/jkAudIO_win.c \
	source/tcl/tcl-87/tcl_ext/snack/snack/win/snack.def \
	source/tcl/tcl-87/tcl_ext/snack/snack/win/snack.dsp \
	source/tcl/tcl-87/tcl_ext/snack/snack/win/snack.dsw \
	source/tcl/tcl-87/tcl_ext/snack/snack/win/snack.sln \
	source/tcl/tcl-87/tcl_ext/snack/snack/win/snack.vcproj \
	source/tcl/tcl-87/tcl_ext/snack/snack/win/snackConfig.sh.in \
	source/tcl/tcl-87/tcl_ext/snack/snack/win/snackstub.dsp \
	source/tcl/tcl-87/tcl_ext/snack/snack/win/snackstub.vcproj \
	source/tcl/tcl-87/tcl_ext/snack/snack/win/sound.def \
	source/tcl/tcl-87/tcl_ext/snack/snack/win/sound.dsp \
	source/tcl/tcl-87/tcl_ext/snack/snack/win/sound.vcproj \
	source/tcl/tcl-87/tcl_ext/snack/snack/win/sver.sh \
	source/tcl/tcl-87/tcl_ext/snack/snack/win/tcl.m4

all: $(FILES)
clean:; rm -rf $(FILES)
.PHONY: clean

# Directories
source:; mkdir $@
source/tcl: source; mkdir $@
source/tcl/tcl-87: source/tcl; mkdir $@
source/tcl/tcl-87/tcl_ext: source/tcl/tcl-87; mkdir $@
source/tcl/tcl-87/tcl_ext/snack: source/tcl/tcl-87/tcl_ext; mkdir $@
source/tcl/tcl-87/tcl_ext/snack/snack: source/tcl/tcl-87/tcl_ext/snack; mkdir $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos: source/tcl/tcl-87/tcl_ext/snack/snack; mkdir $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/python: source/tcl/tcl-87/tcl_ext/snack/snack/demos; mkdir $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos; mkdir $@
source/tcl/tcl-87/tcl_ext/snack/snack/doc: source/tcl/tcl-87/tcl_ext/snack/snack; mkdir $@
source/tcl/tcl-87/tcl_ext/snack/snack/ext: source/tcl/tcl-87/tcl_ext/snack/snack; mkdir $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic: source/tcl/tcl-87/tcl_ext/snack/snack; mkdir $@
source/tcl/tcl-87/tcl_ext/snack/snack/python: source/tcl/tcl-87/tcl_ext/snack/snack; mkdir $@
source/tcl/tcl-87/tcl_ext/snack/snack/tclconfig: source/tcl/tcl-87/tcl_ext/snack/snack; mkdir $@
source/tcl/tcl-87/tcl_ext/snack/snack/tests: source/tcl/tcl-87/tcl_ext/snack/snack; mkdir $@
source/tcl/tcl-87/tcl_ext/snack/snack/unix: source/tcl/tcl-87/tcl_ext/snack/snack; mkdir $@
source/tcl/tcl-87/tcl_ext/snack/snack/win: source/tcl/tcl-87/tcl_ext/snack/snack; mkdir $@

# Files
source/tcl/tcl-87/tcl_ext/snack/Makefile: source/tcl/tcl-87/tcl_ext/snack; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/Makefile' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/BSD.txt: source/tcl/tcl-87/tcl_ext/snack/snack; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/BSD.txt' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/COPYING: source/tcl/tcl-87/tcl_ext/snack/snack; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/COPYING' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/Makefile.in: source/tcl/tcl-87/tcl_ext/snack/snack; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/Makefile.in' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/aclocal.m4: source/tcl/tcl-87/tcl_ext/snack/snack; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/aclocal.m4' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/changes: source/tcl/tcl-87/tcl_ext/snack/snack; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/changes' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/configure.in: source/tcl/tcl-87/tcl_ext/snack/snack; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/configure.in' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/configure: source/tcl/tcl-87/tcl_ext/snack/snack; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/configure' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/MinSect.py: source/tcl/tcl-87/tcl_ext/snack/snack/demos/python; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/MinSect.py' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/MinSpeg.py: source/tcl/tcl-87/tcl_ext/snack/snack/demos/python; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/MinSpeg.py' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/MinWave.py: source/tcl/tcl-87/tcl_ext/snack/snack/demos/python; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/MinWave.py' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/dataCmd.py: source/tcl/tcl-87/tcl_ext/snack/snack/demos/python; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/dataCmd.py' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/echo.py: source/tcl/tcl-87/tcl_ext/snack/snack/demos/python; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/echo.py' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/ex1.wav: source/tcl/tcl-87/tcl_ext/snack/snack/demos/python; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/ex1.wav' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/generator.py: source/tcl/tcl-87/tcl_ext/snack/snack/demos/python; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/generator.py' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/mixplay.py: source/tcl/tcl-87/tcl_ext/snack/snack/demos/python; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/mixplay.py' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/notescale.py: source/tcl/tcl-87/tcl_ext/snack/snack/demos/python; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/notescale.py' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/oggplay.py: source/tcl/tcl-87/tcl_ext/snack/snack/demos/python; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/oggplay.py' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/playnotes.py: source/tcl/tcl-87/tcl_ext/snack/snack/demos/python; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/playnotes.py' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/polarspec.py: source/tcl/tcl-87/tcl_ext/snack/snack/demos/python; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/polarspec.py' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/python-demos.txt: source/tcl/tcl-87/tcl_ext/snack/snack/demos/python; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/python-demos.txt' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/spectrogram.py: source/tcl/tcl-87/tcl_ext/snack/snack/demos/python; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/spectrogram.py' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/sphere.py: source/tcl/tcl-87/tcl_ext/snack/snack/demos/python; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/sphere.py' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/tkSnack.py: source/tcl/tcl-87/tcl_ext/snack/snack/demos/python; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/tkSnack.py' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/widget.py: source/tcl/tcl-87/tcl_ext/snack/snack/demos/python; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/widget.py' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/CSLwithAB.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/CSLwithAB.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/MinSect.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/MinSect.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/MinSpeg.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/MinSpeg.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/MinWave.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/MinWave.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/Section.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/Section.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/Spectrogram.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/Spectrogram.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/SphereTest.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/SphereTest.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/Waveform.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/Waveform.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/aserver.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/aserver.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/compose.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/compose.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/cool.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/cool.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/cutter.plg: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/cutter.plg' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/dataplot.plg: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/dataplot.plg' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/dbrec.scr: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/dbrec.scr' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/dbrec.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/dbrec.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/echo.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/echo.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/ex1.phn: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/ex1.phn' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/ex1.wav: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/ex1.wav' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/ex2.phn: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/ex2.phn' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/ex2.wav: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/ex2.wav' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/formant.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/formant.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/fourChan.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/fourChan.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/generator.plg: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/generator.plg' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/generator.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/generator.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/generator2.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/generator2.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/levelmeter.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/levelmeter.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/mapChan.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/mapChan.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/mixer.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/mixer.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/mixplay.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/mixplay.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/notescale.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/notescale.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/oggstream.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/oggstream.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/phonetogram.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/phonetogram.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/pitch.plg: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/pitch.plg' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/pitch.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/pitch.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/play.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/play.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/playlist.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/playlist.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/polarspec.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/polarspec.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/record.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/record.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/recrplay.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/recrplay.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/rplay.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/rplay.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/sdx: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/sdx' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/snamp.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/snamp.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/spectrum.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/spectrum.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/tcl-demos.txt: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/tcl-demos.txt' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/tclkit-linux-x86: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/tclkit-linux-x86' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/tomAmp.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/tomAmp.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/vowelspace.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/vowelspace.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/widget.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/widget.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/wrap.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/wrap.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/xs.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/xs.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/doc/AddSubCmd.html: source/tcl/tcl-87/tcl_ext/snack/snack/doc; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/AddSubCmd.html' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/doc/Callback.html: source/tcl/tcl-87/tcl_ext/snack/snack/doc; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/Callback.html' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/doc/CreateFilter.html: source/tcl/tcl-87/tcl_ext/snack/snack/doc; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/CreateFilter.html' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/doc/FileFormat.html: source/tcl/tcl-87/tcl_ext/snack/snack/doc; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/FileFormat.html' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/doc/SampConv.html: source/tcl/tcl-87/tcl_ext/snack/snack/doc; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/SampConv.html' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/doc/SnackLib.html: source/tcl/tcl-87/tcl_ext/snack/snack/doc; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/SnackLib.html' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/doc/SoundData.html: source/tcl/tcl-87/tcl_ext/snack/snack/doc; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/SoundData.html' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/doc/SoundObj.html: source/tcl/tcl-87/tcl_ext/snack/snack/doc; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/SoundObj.html' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/doc/SoundProp.html: source/tcl/tcl-87/tcl_ext/snack/snack/doc; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/SoundProp.html' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/doc/SoundSamp.html: source/tcl/tcl-87/tcl_ext/snack/snack/doc; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/SoundSamp.html' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/doc/SphereFile.txt: source/tcl/tcl-87/tcl_ext/snack/snack/doc; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/SphereFile.txt' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/doc/python-man.html: source/tcl/tcl-87/tcl_ext/snack/snack/doc; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/python-man.html' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/doc/tcl-man.html: source/tcl/tcl-87/tcl_ext/snack/snack/doc; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/tcl-man.html' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/ext/Makefile.in: source/tcl/tcl-87/tcl_ext/snack/snack/ext; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/ext/Makefile.in' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/ext/aclocal.m4: source/tcl/tcl-87/tcl_ext/snack/snack/ext; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/ext/aclocal.m4' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/ext/configure.in: source/tcl/tcl-87/tcl_ext/snack/snack/ext; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/ext/configure.in' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/ext/configure: source/tcl/tcl-87/tcl_ext/snack/snack/ext; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/ext/configure' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/ext/square.c: source/tcl/tcl-87/tcl_ext/snack/snack/ext; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/ext/square.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/ext/square.dsp: source/tcl/tcl-87/tcl_ext/snack/snack/ext; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/ext/square.dsp' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/ext/square.vcproj: source/tcl/tcl-87/tcl_ext/snack/snack/ext; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/ext/square.vcproj' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/ext/test.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/ext; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/ext/test.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/SnackOgg.c: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/SnackOgg.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/SphereFile.c: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/SphereFile.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/confdefs.h: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/confdefs.h' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/ffa.c: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/ffa.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/g711.c: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/g711.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkAudIO.h: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkAudIO.h' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkAudio.c: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkAudio.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkCanvItems.h: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkCanvItems.h' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkCanvSect.c: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkCanvSect.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkCanvSpeg.c: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkCanvSpeg.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkCanvWave.c: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkCanvWave.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkFilter.c: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkFilter.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkFilterIIR.c: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkFilterIIR.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkFormant.c: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkFormant.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkFormant.h: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkFormant.h' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkFormatMP3.c: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkFormatMP3.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkFormatMP3.h: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkFormatMP3.h' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkGetF0.c: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkGetF0.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkGetF0.h: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkGetF0.h' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkMixer.c: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkMixer.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkPitchCmd.c: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkPitchCmd.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkSound.c: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkSound.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkSound.h: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkSound.h' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkSoundEdit.c: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkSoundEdit.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkSoundEngine.c: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkSoundEngine.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkSoundFile.c: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkSoundFile.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkSoundProc.c: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkSoundProc.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkSynthesis.c: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkSynthesis.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/shape.c: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/shape.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/sigproc.c: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/sigproc.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/sigproc2.c: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/sigproc2.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/snack.c: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/snack.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/snack.h: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/snack.h' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/snackDecls.h: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/snackDecls.h' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/snackStubInit.c: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/snackStubInit.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/snackStubLib.c: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/snackStubLib.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/generic/sound.c: source/tcl/tcl-87/tcl_ext/snack/snack/generic; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/sound.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/pkgIndex.tcl.in: source/tcl/tcl-87/tcl_ext/snack/snack; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/pkgIndex.tcl.in' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/python/setup.py: source/tcl/tcl-87/tcl_ext/snack/snack/python; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/python/setup.py' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/python/tkSnack.py: source/tcl/tcl-87/tcl_ext/snack/snack/python; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/python/tkSnack.py' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/tclconfig/install-sh: source/tcl/tcl-87/tcl_ext/snack/snack/tclconfig; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tclconfig/install-sh' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/tclconfig/tcl.m4: source/tcl/tcl-87/tcl_ext/snack/snack/tclconfig; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tclconfig/tcl.m4' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/tests/all.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/tests; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/all.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/tests/audio.test: source/tcl/tcl-87/tcl_ext/snack/snack/tests; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/audio.test' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/tests/cget.test: source/tcl/tcl-87/tcl_ext/snack/snack/tests; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/cget.test' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/tests/concat.test: source/tcl/tcl-87/tcl_ext/snack/snack/tests; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/concat.test' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/tests/conf.test: source/tcl/tcl-87/tcl_ext/snack/snack/tests; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/conf.test' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/tests/convert.test: source/tcl/tcl-87/tcl_ext/snack/snack/tests; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/convert.test' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/tests/copy.test: source/tcl/tcl-87/tcl_ext/snack/snack/tests; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/copy.test' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/tests/crop.test: source/tcl/tcl-87/tcl_ext/snack/snack/tests; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/crop.test' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/tests/cut.test: source/tcl/tcl-87/tcl_ext/snack/snack/tests; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/cut.test' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/tests/data.test: source/tcl/tcl-87/tcl_ext/snack/snack/tests; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/data.test' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/tests/dbpower.test: source/tcl/tcl-87/tcl_ext/snack/snack/tests; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/dbpower.test' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/tests/fileio.test: source/tcl/tcl-87/tcl_ext/snack/snack/tests; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/fileio.test' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/tests/filter.test: source/tcl/tcl-87/tcl_ext/snack/snack/tests; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/filter.test' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/tests/formant.test: source/tcl/tcl-87/tcl_ext/snack/snack/tests; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/formant.test' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/tests/inflush.test: source/tcl/tcl-87/tcl_ext/snack/snack/tests; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/inflush.test' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/tests/insert.test: source/tcl/tcl-87/tcl_ext/snack/snack/tests; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/insert.test' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/tests/length.test: source/tcl/tcl-87/tcl_ext/snack/snack/tests; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/length.test' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/tests/maxmin.test: source/tcl/tcl-87/tcl_ext/snack/snack/tests; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/maxmin.test' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/tests/mixer.test: source/tcl/tcl-87/tcl_ext/snack/snack/tests; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/mixer.test' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/tests/pitch.test: source/tcl/tcl-87/tcl_ext/snack/snack/tests; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/pitch.test' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/tests/play.test: source/tcl/tcl-87/tcl_ext/snack/snack/tests; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/play.test' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/tests/power.test: source/tcl/tcl-87/tcl_ext/snack/snack/tests; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/power.test' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/tests/record.test: source/tcl/tcl-87/tcl_ext/snack/snack/tests; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/record.test' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/tests/reverse.test: source/tcl/tcl-87/tcl_ext/snack/snack/tests; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/reverse.test' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/tests/sample.test: source/tcl/tcl-87/tcl_ext/snack/snack/tests; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/sample.test' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/tests/sound.test: source/tcl/tcl-87/tcl_ext/snack/snack/tests; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/sound.test' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/tests/swap.test: source/tcl/tcl-87/tcl_ext/snack/snack/tests; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/swap.test' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/unix/Makefile.in: source/tcl/tcl-87/tcl_ext/snack/snack/unix; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/Makefile.in' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/unix/aclocal.m4: source/tcl/tcl-87/tcl_ext/snack/snack/unix; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/aclocal.m4' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/unix/configure.in: source/tcl/tcl-87/tcl_ext/snack/snack/unix; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/configure.in' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/unix/configure: source/tcl/tcl-87/tcl_ext/snack/snack/unix; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/configure' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/unix/jkAudIO_alsa.c: source/tcl/tcl-87/tcl_ext/snack/snack/unix; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/jkAudIO_alsa.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/unix/jkAudIO_hp.c: source/tcl/tcl-87/tcl_ext/snack/snack/unix; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/jkAudIO_hp.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/unix/jkAudIO_oss.c: source/tcl/tcl-87/tcl_ext/snack/snack/unix; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/jkAudIO_oss.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/unix/jkAudIO_osx.c: source/tcl/tcl-87/tcl_ext/snack/snack/unix; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/jkAudIO_osx.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/unix/jkAudIO_sgi.c: source/tcl/tcl-87/tcl_ext/snack/snack/unix; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/jkAudIO_sgi.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/unix/jkAudIO_skel.c: source/tcl/tcl-87/tcl_ext/snack/snack/unix; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/jkAudIO_skel.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/unix/jkAudIO_sun.c: source/tcl/tcl-87/tcl_ext/snack/snack/unix; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/jkAudIO_sun.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/unix/pkgIndex.tcl.dll: source/tcl/tcl-87/tcl_ext/snack/snack/unix; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/pkgIndex.tcl.dll' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/unix/snack.decls: source/tcl/tcl-87/tcl_ext/snack/snack/unix; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/snack.decls' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/unix/snack.tcl: source/tcl/tcl-87/tcl_ext/snack/snack/unix; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/snack.tcl' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/unix/snackConfig.sh.in: source/tcl/tcl-87/tcl_ext/snack/snack/unix; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/snackConfig.sh.in' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/win/Makefile.in: source/tcl/tcl-87/tcl_ext/snack/snack/win; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/Makefile.in' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/win/aclocal.m4: source/tcl/tcl-87/tcl_ext/snack/snack/win; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/aclocal.m4' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/win/configure.in: source/tcl/tcl-87/tcl_ext/snack/snack/win; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/configure.in' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/win/configure: source/tcl/tcl-87/tcl_ext/snack/snack/win; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/configure' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/win/jkAudIO_win.c: source/tcl/tcl-87/tcl_ext/snack/snack/win; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/jkAudIO_win.c' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/win/snack.def: source/tcl/tcl-87/tcl_ext/snack/snack/win; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/snack.def' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/win/snack.dsp: source/tcl/tcl-87/tcl_ext/snack/snack/win; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/snack.dsp' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/win/snack.dsw: source/tcl/tcl-87/tcl_ext/snack/snack/win; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/snack.dsw' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/win/snack.sln: source/tcl/tcl-87/tcl_ext/snack/snack/win; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/snack.sln' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/win/snack.vcproj: source/tcl/tcl-87/tcl_ext/snack/snack/win; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/snack.vcproj' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/win/snackConfig.sh.in: source/tcl/tcl-87/tcl_ext/snack/snack/win; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/snackConfig.sh.in' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/win/snackstub.dsp: source/tcl/tcl-87/tcl_ext/snack/snack/win; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/snackstub.dsp' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/win/snackstub.vcproj: source/tcl/tcl-87/tcl_ext/snack/snack/win; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/snackstub.vcproj' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/win/sound.def: source/tcl/tcl-87/tcl_ext/snack/snack/win; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/sound.def' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/win/sound.dsp: source/tcl/tcl-87/tcl_ext/snack/snack/win; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/sound.dsp' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/win/sound.vcproj: source/tcl/tcl-87/tcl_ext/snack/snack/win; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/sound.vcproj' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/win/sver.sh: source/tcl/tcl-87/tcl_ext/snack/snack/win; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/sver.sh' && touch $@
source/tcl/tcl-87/tcl_ext/snack/snack/win/tcl.m4: source/tcl/tcl-87/tcl_ext/snack/snack/win; $(GET) 'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/tcl.m4' && touch $@
