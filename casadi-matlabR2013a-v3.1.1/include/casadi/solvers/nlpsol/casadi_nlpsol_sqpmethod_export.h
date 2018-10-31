
#ifndef CASADI_NLPSOL_SQPMETHOD_EXPORT_H
#define CASADI_NLPSOL_SQPMETHOD_EXPORT_H

#ifdef CASADI_NLPSOL_SQPMETHOD_STATIC_DEFINE
#  define CASADI_NLPSOL_SQPMETHOD_EXPORT
#  define CASADI_NLPSOL_SQPMETHOD_NO_EXPORT
#else
#  ifndef CASADI_NLPSOL_SQPMETHOD_EXPORT
#    ifdef casadi_nlpsol_sqpmethod_EXPORTS
        /* We are building this library */
#      define CASADI_NLPSOL_SQPMETHOD_EXPORT __declspec(dllexport)
#    else
        /* We are using this library */
#      define CASADI_NLPSOL_SQPMETHOD_EXPORT __declspec(dllimport)
#    endif
#  endif

#  ifndef CASADI_NLPSOL_SQPMETHOD_NO_EXPORT
#    define CASADI_NLPSOL_SQPMETHOD_NO_EXPORT 
#  endif
#endif

#ifndef CASADI_NLPSOL_SQPMETHOD_DEPRECATED
#  define CASADI_NLPSOL_SQPMETHOD_DEPRECATED 
#endif

#ifndef CASADI_NLPSOL_SQPMETHOD_DEPRECATED_EXPORT
#  define CASADI_NLPSOL_SQPMETHOD_DEPRECATED_EXPORT CASADI_NLPSOL_SQPMETHOD_EXPORT CASADI_NLPSOL_SQPMETHOD_DEPRECATED
#endif

#ifndef CASADI_NLPSOL_SQPMETHOD_DEPRECATED_NO_EXPORT
#  define CASADI_NLPSOL_SQPMETHOD_DEPRECATED_NO_EXPORT CASADI_NLPSOL_SQPMETHOD_NO_EXPORT CASADI_NLPSOL_SQPMETHOD_DEPRECATED
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define CASADI_NLPSOL_SQPMETHOD_NO_DEPRECATED
#endif

#endif
