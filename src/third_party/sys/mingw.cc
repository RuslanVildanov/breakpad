// this code was contributed by Hannes Domani, ssbssa@yahoo.de
// to be able to compile plzip under MS Windows (with MINGW compiler)

#ifdef __MSVCRT__

#include <cerrno>

#include <windows.h>
#include "mingw.h"

ssize_t pread(int fd, void *buf, size_t count, long long offset)
{
	OVERLAPPED o = {0,0,0,0,0};
	HANDLE fh = (HANDLE)_get_osfhandle(fd);
	uint64_t off = offset;
	DWORD bytes;
	BOOL ret;

	if (fh == INVALID_HANDLE_VALUE) {
		errno = EBADF;
		return -1;
	}

	o.Offset = off & 0xffffffff;
	o.OffsetHigh = (off >> 32) & 0xffffffff;

	ret = ReadFile(fh, buf, (DWORD)count, &bytes, &o);
	if (!ret) {
		errno = EIO;
		return -1;
	}

	return (ssize_t)bytes;
}

ssize_t pwrite(int fd, const void *buf, size_t count, long long offset)
{
	OVERLAPPED o = {0,0,0,0,0};
	HANDLE fh = (HANDLE)_get_osfhandle(fd);
	uint64_t off = offset;
	DWORD bytes;
	BOOL ret;

	if (fh == INVALID_HANDLE_VALUE) {
		errno = EBADF;
		return -1;
	}

	o.Offset = off & 0xffffffff;
	o.OffsetHigh = (off >> 32) & 0xffffffff;

	ret = WriteFile(fh, buf, (DWORD)count, &bytes, &o);
	if (!ret) {
		errno = EIO;
		return -1;
	}

	return (ssize_t)bytes;
}

long sysconf( int flag )
{
	switch( flag )
	{
	    case _SC_NPROCESSORS_ONLN:
		{
			SYSTEM_INFO si;
			GetSystemInfo( &si );
			return si.dwNumberOfProcessors;
		}

	    case _SC_THREAD_THREADS_MAX:
			return 32;
	}

	return 0;
}

#endif
