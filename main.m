#include <stdio.h>
#include <stdlib.h>
#import <spawn.h>

int main(int argc, const char *argv[]) {
	@autoreleasepool {
		printf("Starting\n");
		char filename[] = "/var/mobile/Library/Preferences/com.apple.MobileAsset.plist";
		remove(filename);
		pid_t pid;
		const char* args[] = {"fakeroot", "ldrestart", NULL, NULL};
		posix_spawn(&pid, "/usr/bin/fakeroot", NULL, NULL, (char* const*)args, NULL);
	}
	return 0;
}
