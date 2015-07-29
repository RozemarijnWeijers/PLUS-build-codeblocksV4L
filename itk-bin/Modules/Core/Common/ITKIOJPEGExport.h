
#ifndef ITKIOJPEG_EXPORT_H
#define ITKIOJPEG_EXPORT_H

#ifdef ITK_STATIC
#  define ITKIOJPEG_EXPORT
#  define ITKIOJPEG_HIDDEN
#else
#  ifndef ITKIOJPEG_EXPORT
#    ifdef ITKIOJPEG_EXPORTS
        /* We are building this library */
#      define ITKIOJPEG_EXPORT __attribute__((visibility("default")))
#    else
        /* We are using this library */
#      define ITKIOJPEG_EXPORT __attribute__((visibility("default")))
#    endif
#  endif

#  ifndef ITKIOJPEG_HIDDEN
#    define ITKIOJPEG_HIDDEN __attribute__((visibility("hidden")))
#  endif
#endif

#ifndef ITKIOJPEG_DEPRECATED
#  define ITKIOJPEG_DEPRECATED __attribute__ ((__deprecated__))
#  define ITKIOJPEG_DEPRECATED_EXPORT ITKIOJPEG_EXPORT __attribute__ ((__deprecated__))
#  define ITKIOJPEG_DEPRECATED_NO_EXPORT ITKIOJPEG_HIDDEN __attribute__ ((__deprecated__))
#endif

#define DEFINE_NO_DEPRECATED 0
#if DEFINE_NO_DEPRECATED
# define ITKIOJPEG_NO_DEPRECATED
#endif

#endif
