#!/usr/bin/env perl
use strict;
use warnings;
use autodie;
use v5.14;
use utf8;
$| = 1;

use warnings  qw< FATAL utf8 >;
use open      qw< :std :utf8 >;
use charnames qw< :full >;
use feature   qw< say unicode_strings >;
use Carp      qw< confess >;

use File::Basename qw< basename >;
use File::Spec::Functions;
use File::Spec::Unix;
use Data::Dumper;
use Getopt::Long;

END { close STDOUT }
local $SIG{__DIE__} = sub {
	confess "Uncaught exception: @_" unless $^S;
};

my $VAR1 = {
	'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/python' => [
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/python/setup.py',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/python/setup.py.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/python/tkSnack.py',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/python/tkSnack.py.auto.html'
	],
	'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic' => [
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/SnackOgg.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/SnackOgg.c.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/SphereFile.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/SphereFile.c.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/confdefs.h',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/confdefs.h.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/ffa.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/ffa.c.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/g711.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/g711.c.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkAudIO.h',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkAudIO.h.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkAudio.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkAudio.c.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkCanvItems.h',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkCanvItems.h.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkCanvSect.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkCanvSect.c.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkCanvSpeg.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkCanvSpeg.c.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkCanvWave.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkCanvWave.c.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkFilter.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkFilter.c.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkFilterIIR.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkFilterIIR.c.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkFormant.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkFormant.c.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkFormant.h',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkFormant.h.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkFormatMP3.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkFormatMP3.c.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkFormatMP3.h',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkFormatMP3.h.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkGetF0.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkGetF0.c.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkGetF0.h',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkGetF0.h.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkMixer.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkMixer.c.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkPitchCmd.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkPitchCmd.c.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkSound.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkSound.c.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkSound.h',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkSound.h.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkSoundEdit.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkSoundEdit.c.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkSoundEngine.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkSoundEngine.c.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkSoundFile.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkSoundFile.c.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkSoundProc.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkSoundProc.c.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkSynthesis.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/jkSynthesis.c.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/shape.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/shape.c.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/sigproc.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/sigproc.c.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/sigproc2.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/sigproc2.c.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/snack.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/snack.c.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/snack.h',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/snack.h.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/snackDecls.h',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/snackDecls.h.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/snackStubInit.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/snackStubInit.c.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/snackStubLib.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/snackStubLib.c.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/sound.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic/sound.c.auto.html'
	],
	'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python' => [
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/MinSect.py',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/MinSect.py.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/MinSpeg.py',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/MinSpeg.py.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/MinWave.py',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/MinWave.py.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/dataCmd.py',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/dataCmd.py.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/echo.py',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/echo.py.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/ex1.wav',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/generator.py',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/generator.py.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/mixplay.py',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/mixplay.py.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/notescale.py',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/notescale.py.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/oggplay.py',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/oggplay.py.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/playnotes.py',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/playnotes.py.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/polarspec.py',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/polarspec.py.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/python-demos.txt',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/python-demos.txt.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/spectrogram.py',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/spectrogram.py.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/sphere.py',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/sphere.py.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/tkSnack.py',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/tkSnack.py.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/widget.py',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python/widget.py.auto.html'
	],
	'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl' => [
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/CSLwithAB.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/CSLwithAB.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/MinSect.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/MinSect.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/MinSpeg.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/MinSpeg.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/MinWave.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/MinWave.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/Section.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/Section.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/Spectrogram.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/Spectrogram.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/SphereTest.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/SphereTest.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/Waveform.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/Waveform.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/aserver.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/aserver.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/compose.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/compose.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/cool.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/cool.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/cutter.plg',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/cutter.plg.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/dataplot.plg',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/dataplot.plg.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/dbrec.scr',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/dbrec.scr.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/dbrec.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/dbrec.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/echo.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/echo.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/ex1.phn',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/ex1.phn.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/ex1.wav',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/ex2.phn',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/ex2.phn.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/ex2.wav',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/formant.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/formant.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/fourChan.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/fourChan.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/generator.plg',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/generator.plg.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/generator.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/generator.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/generator2.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/generator2.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/levelmeter.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/levelmeter.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/mapChan.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/mapChan.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/mixer.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/mixer.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/mixplay.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/mixplay.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/notescale.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/notescale.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/oggstream.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/oggstream.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/phonetogram.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/phonetogram.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/pitch.plg',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/pitch.plg.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/pitch.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/pitch.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/play.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/play.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/playlist.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/playlist.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/polarspec.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/polarspec.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/record.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/record.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/recrplay.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/recrplay.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/rplay.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/rplay.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/sdx',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/snamp.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/snamp.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/spectrum.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/spectrum.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/tcl-demos.txt',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/tcl-demos.txt.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/tclkit-linux-x86',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/tomAmp.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/tomAmp.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/vowelspace.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/vowelspace.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/widget.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/widget.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/wrap.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/wrap.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/xs.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl/xs.tcl.auto.html'
	],
	'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/ext' => [
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/ext/Makefile.in',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/ext/Makefile.in.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/ext/aclocal.m4',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/ext/aclocal.m4.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/ext/configure',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/ext/configure.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/ext/configure.in',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/ext/configure.in.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/ext/square.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/ext/square.c.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/ext/square.dsp',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/ext/square.dsp.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/ext/square.vcproj',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/ext/square.vcproj.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/ext/test.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/ext/test.tcl.auto.html'
	],
	'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tclconfig' => [
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tclconfig/install-sh',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tclconfig/install-sh.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tclconfig/tcl.m4',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tclconfig/tcl.m4.auto.html'
	],
	'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos' => [
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/python',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos/tcl'
	],
	'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix' => [
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/Makefile.in',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/Makefile.in.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/aclocal.m4',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/aclocal.m4.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/configure',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/configure.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/configure.in',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/configure.in.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/jkAudIO_alsa.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/jkAudIO_alsa.c.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/jkAudIO_hp.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/jkAudIO_hp.c.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/jkAudIO_oss.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/jkAudIO_oss.c.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/jkAudIO_osx.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/jkAudIO_osx.c.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/jkAudIO_sgi.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/jkAudIO_sgi.c.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/jkAudIO_skel.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/jkAudIO_skel.c.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/jkAudIO_sun.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/jkAudIO_sun.c.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/pkgIndex.tcl.dll',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/pkgIndex.tcl.dll.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/snack.decls',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/snack.decls.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/snack.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/snack.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/snackConfig.sh.in',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix/snackConfig.sh.in.auto.html'
	],
	'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests' => [
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/all.tcl',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/all.tcl.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/audio.test',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/audio.test.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/cget.test',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/cget.test.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/concat.test',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/concat.test.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/conf.test',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/conf.test.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/convert.test',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/convert.test.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/copy.test',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/copy.test.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/crop.test',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/crop.test.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/cut.test',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/cut.test.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/data.test',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/data.test.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/dbpower.test',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/dbpower.test.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/fileio.test',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/fileio.test.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/filter.test',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/filter.test.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/formant.test',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/formant.test.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/inflush.test',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/inflush.test.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/insert.test',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/insert.test.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/length.test',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/length.test.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/maxmin.test',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/maxmin.test.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/mixer.test',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/mixer.test.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/pitch.test',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/pitch.test.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/play.test',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/play.test.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/power.test',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/power.test.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/record.test',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/record.test.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/reverse.test',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/reverse.test.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/sample.test',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/sample.test.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/sound.test',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/sound.test.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/swap.test',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests/swap.test.auto.html'
	],
	'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win' => [
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/Makefile.in',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/Makefile.in.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/aclocal.m4',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/aclocal.m4.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/configure',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/configure.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/configure.in',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/configure.in.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/jkAudIO_win.c',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/jkAudIO_win.c.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/snack.def',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/snack.def.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/snack.dsp',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/snack.dsp.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/snack.dsw',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/snack.dsw.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/snack.sln',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/snack.sln.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/snack.vcproj',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/snack.vcproj.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/snackConfig.sh.in',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/snackConfig.sh.in.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/snackstub.dsp',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/snackstub.dsp.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/snackstub.vcproj',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/snackstub.vcproj.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/sound.def',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/sound.def.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/sound.dsp',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/sound.dsp.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/sound.vcproj',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/sound.vcproj.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/sver.sh',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/sver.sh.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/tcl.m4',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win/tcl.m4.auto.html'
	],
	'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/' => [
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/Makefile',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/Makefile.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack'
	],
	'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack' => [
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/BSD.txt',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/BSD.txt.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/COPYING',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/COPYING.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/Makefile.in',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/Makefile.in.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/aclocal.m4',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/aclocal.m4.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/changes',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/changes.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/configure',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/configure.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/configure.in',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/configure.in.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/demos',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/ext',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/generic',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/pkgIndex.tcl.in',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/pkgIndex.tcl.in.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/python',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tclconfig',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/tests',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/unix',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/win'
	],
	'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc' => [
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/AddSubCmd.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/AddSubCmd.html.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/Callback.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/Callback.html.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/CreateFilter.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/CreateFilter.html.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/FileFormat.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/FileFormat.html.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/SampConv.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/SampConv.html.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/SnackLib.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/SnackLib.html.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/SoundData.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/SoundData.html.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/SoundObj.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/SoundObj.html.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/SoundProp.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/SoundProp.html.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/SoundSamp.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/SoundSamp.html.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/SphereFile.txt',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/SphereFile.txt.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/python-man.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/python-man.html.auto.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/tcl-man.html',
		'https://opensource.apple.com/source/tcl/tcl-87/tcl_ext/snack/snack/doc/tcl-man.html.auto.html'
	]
};

# Generate a makefile, not a dwarf planet
sub makeMake {
	(my %input) = @_;
	my @keys = sort { length $a <=> length $b } keys %input;
	my %make = ();
	foreach(@keys){
		s|^https?://[^/]*/||i;
		$_ = File::Spec::Unix->canonpath($_);
		do {
			my $target = $_;
			s|/[^/]+$||;
			$make{$target} = $_;
		} while(-1 != index $_, "/");
		$make{$_} = "";
	}
	
	# Directories
	my $output = "\n# Directories\n";
	foreach(sort keys %make){
		$output .= "$_:";
		$output .= sprintf ' %s', $make{$_} if $make{$_};
		$output .= "; mkdir \$@\n";
	}
	
	# Files
	my @fileRecipes = ();
	my @fileRecipeNames = ();
	foreach(sort values %input){
		(my @list) = @{$_};
		foreach(@list){
			(my $url = $_) =~ s/'/'\''/g;
			s|^https?://[^/]*/||i;
			next if defined $make{$_} or m/\.auto\.html$/;
			my $target = $_;
			s|/[^/]+$||;
			push @fileRecipes, "$target: $_; \$(GET) '$url' && touch \$@";
			push @fileRecipeNames, $target;
		}
	}
	@fileRecipes = sort { length $a <=> length $b } @fileRecipes;
	$output .= "\n# Files\n" . join("\n", sort @fileRecipes) . $/;
	(my $fl = join " \\\n", sort @fileRecipeNames) =~ s/^/\t/gm;
	($output = <<EOF) =~ s/\s*$//;
GET = cd \$^ && wget --no-adjust-extension --no-server-response -q
FILES = \\
$fl

all: \$(FILES)
clean:; rm -rf \$(FILES)
.PHONY: clean
$output
EOF
	return $output;
}

say makeMake %$VAR1;
