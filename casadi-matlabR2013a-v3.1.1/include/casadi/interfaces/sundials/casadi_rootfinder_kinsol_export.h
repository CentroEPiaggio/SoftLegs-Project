
#ifndef CASADI_ROOTFINDER_KINSOL_EXPORT_H
#define CASADI_ROOTFINDER_KINSOL_EXPORT_H

#ifdef CASADI_ROOTFINDER_KINSOL_STATIC_DEFINE
#  define CASADI_ROOTFINDER_KINSOL_EXPORT
#  define CASADI_ROOTFINDER_KINSOL_NO_EXPORT
#else
#  ifndef CASADI_ROOTFINDER_KINSOL_EXPORT
#    ifdef casadi_rootfinder_kinsol_EXPORTS
        /* We are building this library */
#      define CASADI_ROOTFINDER_KINSOL_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define CASADI_ROOTFINDER_KINSOL_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef CASADI_ROOTFINDER_KINSOL_NO_EXPORT
#    define CASADI_ROOTFINDER_KINSOL_NO_EXPORT 
#  endif
#endif

#ifndef CASADI_ROOTFINDER_KINSOL_DEPRECATED
#  define CASADI_ROOTFINDER_KINSOL_DEPRECATED 
#endif

#ifndef CASADI_ROOTFINDER_KINSOL_DEPRECATED_EXPORT
#  define CASADI_ROOTFINDER_KINSOL_DEPRECATED_EXPORT CASADI_ROOTFINDER_KINSOL_EXPORT CASADI_ROOTFINDER_KINSOL_DEPRECATED
#endif

#ifndef CASADI_ROOTFINDER_KINSOL_DEPRECATED_NO_EXPORT
#  define CASADI_ROOTFINDER_KINSOL_DEPRECATED_NO_EXPORT CASADI_ROOTFINDER_KINSOL_NO_EXPORT CASADI_ROOTFINDER_KINSOL_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define CASADI_ROOTFINDER_KINSOL_NO_DEPRECATED
#endif

#endif
