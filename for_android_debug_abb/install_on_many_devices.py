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

my_apk_name = sys.argv[1]
my_package_name = sys.argv[2] if len(sys.argv) > 2 else ""
my_activity_name  = sys.argv[3] if len(sys.argv) > 3 else ""

adb_list_devices = str(adb_ouput).split("\\r\\n")
list_of_real_devices = []
key_word = "\\tdevice"
for dev in adb_list_devices:
    if key_word in dev:
        list_of_real_devices.append(dev.replace(key_word, ""))
        continue

for dev in list_of_real_devices:
    if my_package_name:
        try:
            ### adb uninstall % PACKAGE_NAME %
            print("to unistall on {0} this {1}-{2}".format(dev, my_apk_name, my_package_name))
            check_call(["adb", "-s", dev, "uninstall", my_package_name])
        except CalledProcessError as e:
            print(e.returncode)
    try:
        ### adb -s <DEVICE ID> install <PATH TO APK>
        print("to install on {0} this {1}-{2}".format(dev, my_apk_name, my_package_name))
        check_call(["adb", "-s", dev, "install", my_apk_name])
    except CalledProcessError as e:
        print(e.returncode)

    if my_activity_name:
        try:
            # it doesn't work now although it used to work
            ### adb shell monkey -p %PACKAGE_NAME% -c android.intent.category.LAUNCHER 1
            # check_call(["adb", "-s", dev, "shell", "monkey", "-p", my_package_name, "-c", "android.intent.category.LAUNCHER", "1"])

            ###adb -s 0123456789ABCDEF shell am start -n com.wb.goog.legojurassicworld_test/com.wb.goog.legojurassicworld.GameActivity
            print("to run on {0} this {1}-{2}".format(dev, my_apk_name, my_package_name))
            check_call(["adb", "-s", dev, "shell", "am", "start", "-n", my_package_name+"/"+my_activity_name])
        except CalledProcessError as e:
            print(e.returncode)

print(my_apk_name + " was installed on {}.".format(list_of_real_devices))