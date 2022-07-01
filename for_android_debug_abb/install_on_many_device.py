import sys
from subprocess import check_call, check_output, CalledProcessError

if len(sys.argv) <= 1:
    exit(-1)

try:
    adb_ouput = check_output(["adb", "devices"])
except CalledProcessError as e:
    print(e.returncode)

if len(adb_ouput) == 0:
    exit(-1)

adb_list_devices = str(adb_ouput).split("\\r\\n")
list_of_real_devices = []
key_word = "\\tdevice"
for dev in adb_list_devices:
    if key_word in dev:
        list_of_real_devices.append(dev.replace(key_word, ""))
        continue

for dev in list_of_real_devices:
    if len(sys.argv) > 2:
        try:
            ### adb uninstall % PACKAGE_NAME %
            check_call(["adb", "-s", dev, "uninstall", sys.argv[2]])
        except CalledProcessError as e:
            print(e.returncode)
    try:
        ### adb -s <DEVICE ID> install <PATH TO APK>
        check_call(["adb", "-s", dev, "install", sys.argv[1]])
    except CalledProcessError as e:
        print(e.returncode)

    if len(sys.argv) > 2:
        try:
            ### adb shell monkey -p %PACKAGE_NAME% -c android.intent.category.LAUNCHER 1
            check_call(["adb", "shell", "-s", dev, "monkey", "-p", sys.argv[2], "-c", "android.intent.category.LAUNCHER", 1])
        except CalledProcessError as e:
            print(e.returncode)

print(sys.argv[1] + " was installed on {}.".format(list_of_real_devices))
