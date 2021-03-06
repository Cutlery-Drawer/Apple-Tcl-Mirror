#ifdef WIN32
/* Restore the usage of the original names */
#undef TIFFGetVersion
#undef TIFFFindCODEC
#undef TIFFRegisterCODEC
#undef TIFFUnRegisterCODEC
#undef _TIFFmalloc
#undef _TIFFrealloc
#undef _TIFFmemset
#undef _TIFFmemcpy
#undef _TIFFmemcmp
#undef _TIFFfree
#undef TIFFClose
#undef TIFFFlush
#undef TIFFFlushData
#undef TIFFGetField
#undef TIFFVGetField
#undef TIFFGetFieldDefaulted
#undef TIFFVGetFieldDefaulted
#undef TIFFReadDirectory
#undef TIFFScanlineSize
#undef TIFFRasterScanlineSize
#undef TIFFStripSize
#undef TIFFVStripSize
#undef TIFFTileRowSize
#undef TIFFTileSize
#undef TIFFVTileSize
#undef TIFFDefaultStripSize
#undef TIFFDefaultTileSize
#undef TIFFFileno
#undef TIFFGetMode
#undef TIFFIsTiled
#undef TIFFIsByteSwapped
#undef TIFFIsUpSampled
#undef TIFFIsMSB2LSB
#undef TIFFCurrentRow
#undef TIFFCurrentDirectory
#undef TIFFNumberOfDirectories
#undef TIFFCurrentDirOffset
#undef TIFFCurrentStrip
#undef TIFFCurrentTile
#undef TIFFReadBufferSetup
#undef TIFFWriteBufferSetup
#undef TIFFWriteCheck
#undef TIFFCreateDirectory
#undef TIFFLastDirectory
#undef TIFFSetDirectory
#undef TIFFSetSubDirectory
#undef TIFFUnlinkDirectory
#undef TIFFSetField
#undef TIFFVSetField
#undef TIFFWriteDirectory
#undef TIFFReassignTagToIgnore
#undef TIFFPrintDirectory
#undef TIFFReadScanline
#undef TIFFWriteScanline
#undef TIFFReadRGBAImage
#undef TIFFReadRGBAStrip
#undef TIFFReadRGBATile
#undef TIFFRGBAImageOK
#undef TIFFRGBAImageBegin
#undef TIFFRGBAImageGet
#undef TIFFRGBAImageEnd
#undef TIFFOpen
#undef TIFFFdOpen
#undef TIFFClientOpen
#undef TIFFFileName
#undef TIFFError
#undef TIFFWarning
#undef TIFFSetErrorHandler
#undef TIFFSetWarningHandler
#undef TIFFSetTagExtender
#undef TIFFComputeTile
#undef TIFFCheckTile
#undef TIFFNumberOfTiles
#undef TIFFReadTile
#undef TIFFWriteTile
#undef TIFFComputeStrip
#undef TIFFNumberOfStrips
#undef TIFFReadEncodedStrip
#undef TIFFReadRawStrip
#undef TIFFReadEncodedTile
#undef TIFFReadRawTile
#undef TIFFWriteEncodedStrip
#undef TIFFWriteRawStrip
#undef TIFFWriteEncodedTile
#undef TIFFWriteRawTile
#undef TIFFSetWriteOffset
#undef TIFFSwabShort
#undef TIFFSwabLong
#undef TIFFSwabDouble
#undef TIFFSwabArrayOfShort
#undef TIFFSwabArrayOfLong
#undef TIFFSwabArrayOfDouble
#undef TIFFReverseBits
#undef TIFFGetBitRevTable
#undef TIFFPredictorInit
#undef _TIFFSetupFieldInfo
#undef TIFFMergeFieldInfo
#undef _TIFFPrintFieldInfo
#undef TIFFFindFieldInfo
#undef TIFFFieldWithTag
#undef _TIFFSampleToTagType
#undef _TIFFgetMode
#undef _TIFFNoRowEncode
#undef _TIFFNoStripEncode
#undef _TIFFNoTileEncode
#undef _TIFFNoRowDecode
#undef _TIFFNoStripDecode
#undef _TIFFNoTileDecode
#undef _TIFFNoPostDecode
#undef _TIFFNoPreCode
#undef _TIFFNoSeek
#undef _TIFFSwab16BitData
#undef _TIFFSwab32BitData
#undef _TIFFSwab64BitData
#undef TIFFFlushData1
#undef TIFFFreeDirectory
#undef TIFFDefaultDirectory
#undef TIFFSetCompressionScheme
#undef TIFFSetDefaultCompressionState
#undef _TIFFSetDefaultCompressionState
#undef _TIFFDefaultStripSize
#undef _TIFFDefaultTileSize
#undef _TIFFsetByteArray
#undef _TIFFsetString
#undef _TIFFsetShortArray
#undef _TIFFsetLongArray
#undef _TIFFsetFloatArray
#undef _TIFFsetDoubleArray
#undef _TIFFprintAscii
#undef _TIFFprintAsciiTag
#undef TIFFInitDumpMode
#undef TIFFInitPackBits
#undef TIFFInitCCITTRLE
#undef TIFFInitCCITTRLEW
#undef TIFFInitCCITTFax3
#undef TIFFInitCCITTFax4
#undef TIFFInitThunderScan
#undef TIFFInitNeXT
#undef TIFFInitLZW
#undef TIFFInitOJPEG
#undef TIFFInitJPEG
#undef TIFFInitJBIG
#undef TIFFInitZIP
#undef TIFFInitPixarLog
#undef TIFFInitSGILog
#endif /* WIN32 */
