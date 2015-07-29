
#ifndef ITKIOGE_EXPORT_H
#define ITKIOGE_EXPORT_H

#ifdef ITK_STATIC
#  define ITKIOGE_EXPORT
#  define ITKIOGE_HIDDEN
#else
#  ifndef ITKIOGE_EXPORT
#    ifdef ITKIOGE_EXPORTS
        /* We are building this library */
#      define ITKIOGE_EXPORT __attribute__((visibility("default")))
#    else
        /* We are using this library */
#      define ITKIOGE_EXPORT __attribute__((visibility("default")))
#    endif
#  endif

#  ifndef ITKIOGE_HIDDEN
#    define ITKIOGE_HIDDEN __attribute__((visibility("hidden")))
#  endif
#endif

#ifndef ITKIOGE_DEPRECATED
#  define ITKIOGE_DEPRECATED __attribute__ ((__deprecated__))
#  define ITKIOGE_DEPRECATED_EXPORT ITKIOGE_EXPORT __attribute__ ((__deprecated__))
#  define ITKIOGE_DEPRECATED_NO_EXPORT ITKIOGE_HIDDEN __attribute__ ((__deprecated__))
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define ITKIOGE_NO_DEPRECATED
#endif

#endif
