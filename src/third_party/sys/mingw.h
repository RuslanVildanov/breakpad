// this code was contributed by Hannes Domani, ssbssa@yahoo.de
// to be able to compile plzip under MS Windows (with MINGW compiler)

#ifdef __MSVCRT__

#include <stdint.h>
#include <io.h>

#define fchmod(x,y) 0
#define fchown(x,y,z) 0

#define strtoull std::strtoul

#define SIGHUP SIGTERM
#define S_ISSOCK(x) 0

ssize_t pread(int fd, void *buf, size_t count, long long offset);
ssize_t pwrite(int fd, const void *buf, size_t count, long long offset);

#define _SC_NPROCESSORS_ONLN   1
#define _SC_THREAD_THREADS_MAX 2
long sysconf(int flag);

#endif
