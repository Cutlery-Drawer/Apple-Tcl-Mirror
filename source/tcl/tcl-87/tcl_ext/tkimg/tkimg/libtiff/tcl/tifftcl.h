/*
 * tifftcl.h --
 *
 *	Interface to libtiff.
 *
 * Copyright (c) 2002-2004 Andreas Kupries <andreas_kupries@users.sourceforge.net>
 *
 * Zveno Pty Ltd makes this software and associated documentation
 * available free of charge for any purpose.  You may make copies
 * of the software but you must include all of this notice on any copy.
 *
 * Zveno Pty Ltd does not warrant that this software is error free
 * or fit for any purpose.  Zveno Pty Ltd disclaims any liability for
 * all claims, expenses, losses, damages and costs any user may incur
 * as a result of using, copying or modifying the software.
 *
 * $Id: tifftcl.h 154 2008-10-22 11:44:55Z nijtmans $
 *
 */

#ifndef __TIFFTCL_H__
#define __TIFFTCL_H__

#include "tcl.h"
#include "../libtiff/tif_config.h"

#define TIFFTCL_MAJOR_VERSION	3
#define TIFFTCL_MINOR_VERSION	8
#define TIFFTCL_RELEASE_LEVEL	TCL_RELEASE
#define TIFFTCL_RELEASE_SERIAL	2

#define TIFFTCL_VERSION		"3.8.2"
#define TIFFTCL_PATCH_LEVEL	"3.8.2"

/*
 * Used to block the rest of this header file from resource compilers so
 * we can just get the version info.
 */
#ifndef RC_INVOKED

/* TIP 27 update. If CONST84 is not defined we are compiling against a
 * core before 8.4 and have to disable some CONST'ness.
 */

#ifndef CONST84
#   define CONST84
#endif
#ifndef CONST86
#   define CONST86
#endif

/*
 * Fix the Borland bug that's in the EXTERN macro from tcl.h.
 */
#ifndef TCL_EXTERN
#   undef DLLIMPORT
#   undef DLLEXPORT
#   if defined(STATIC_BUILD)
#	define DLLIMPORT
#	define DLLEXPORT
#   elif (defined(__WIN32__) && (defined(_MSC_VER) || (__BORLANDC__ >= 0x0550) || (defined(__GNUC__) && defined(__declspec)))) || (defined(MAC_TCL) && FUNCTION_DECLSPEC)
#	define DLLIMPORT __declspec(dllimport)
#	define DLLEXPORT __declspec(dllexport)
#   elif defined(__BORLANDC__)
#	define OLDBORLAND 1
#	define DLLIMPORT __import
#	define DLLEXPORT __export
#   else
#	define DLLIMPORT
#	define DLLEXPORT
#   endif
    /* Avoid name mangling from C++ compilers. */
#   ifdef __cplusplus
#	define TCL_EXTRNC extern "C"
#   else
#	define TCL_EXTRNC extern
#   endif
    /* Pre-5.5 Borland requires the attributes be placed after the */
    /* return type. */
#   ifdef OLDBORLAND
#	define TCL_EXTERN(RTYPE) TCL_EXTRNC RTYPE TCL_STORAGE_CLASS
#   else
#	define TCL_EXTERN(RTYPE) TCL_EXTRNC TCL_STORAGE_CLASS RTYPE
#   endif
#endif



/*
 * These macros are used to control whether functions are being declared for
 * import or export in Windows,
 * They map to no-op declarations on non-Windows systems.
 * Assumes that tcl.h defines DLLEXPORT & DLLIMPORT correctly.
 * The default build on windows is for a DLL, which causes the DLLIMPORT
 * and DLLEXPORT macros to be nonempty. To build a static library, the
 * macro STATIC_BUILD should be defined before the inclusion of tcl.h
 *
 * If a function is being declared while it is being built
 * to be included in a shared library, then it should have the DLLEXPORT
 * storage class.  If is being declared for use by a module that is going to
 * link against the shared library, then it should have the DLLIMPORT storage
 * class.  If the symbol is beind declared for a static build or for use from a
 * stub library, then the storage class should be empty.
 *
 * The convention is that a macro called BUILD_xxxx, where xxxx is the
 * name of a library we are building, is set on the compile line for sources
 * that are to be placed in the library.  When this macro is set, the
 * storage class will be set to DLLEXPORT.  At the end of the header file, the
 * storage class will be reset to DLLIMPORt.
 */

#undef TCL_STORAGE_CLASS
#ifdef BUILD_tifftcl
# define TCL_STORAGE_CLASS DLLEXPORT
#else
# ifdef USE_TIFFTCL_STUBS
#  define TCL_STORAGE_CLASS
# else
#  define TCL_STORAGE_CLASS DLLIMPORT
# endif
#endif

/*
 *----------------------------------------------------------------------------
 * C API for Tifftcl generic layer
 *----------------------------------------------------------------------------
 */

/*
 *----------------------------------------------------------------------------
 * Function prototypes for publically accessible routines
 *----------------------------------------------------------------------------
 */

#include "tifftclDecls.h"

/*
 *----------------------------------------------------------------------------
 * Function prototypes for stub initialization.
 *----------------------------------------------------------------------------
 */

#ifdef USE_TIFFTCL_STUBS
EXTERN const char *
Tifftcl_InitStubs _ANSI_ARGS_((Tcl_Interp *interp, const char *version, int exact));
#else

/*
 * When not using stubs, make it a macro.
 */

#define Tifftcl_InitStubs(interp, version, exact) \
    Tcl_PkgRequire(interp, "tifftcl", (CONST84 char *) version, exact)
#endif


#undef TCL_STORAGE_CLASS
#define TCL_STORAGE_CLASS DLLIMPORT

#endif /* RC_INVOKED */
#endif /* __TIFFTCL_H__ */
