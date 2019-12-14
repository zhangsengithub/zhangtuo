# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.Demo.Debug:
/Users/baidu/zhangsen/zhangtuo/work/cmake_demo/cmake-demo/Demo1/Debug/Demo:
	/bin/rm -f /Users/baidu/zhangsen/zhangtuo/work/cmake_demo/cmake-demo/Demo1/Debug/Demo


PostBuild.Demo.Release:
/Users/baidu/zhangsen/zhangtuo/work/cmake_demo/cmake-demo/Demo1/Release/Demo:
	/bin/rm -f /Users/baidu/zhangsen/zhangtuo/work/cmake_demo/cmake-demo/Demo1/Release/Demo


PostBuild.Demo.MinSizeRel:
/Users/baidu/zhangsen/zhangtuo/work/cmake_demo/cmake-demo/Demo1/MinSizeRel/Demo:
	/bin/rm -f /Users/baidu/zhangsen/zhangtuo/work/cmake_demo/cmake-demo/Demo1/MinSizeRel/Demo


PostBuild.Demo.RelWithDebInfo:
/Users/baidu/zhangsen/zhangtuo/work/cmake_demo/cmake-demo/Demo1/RelWithDebInfo/Demo:
	/bin/rm -f /Users/baidu/zhangsen/zhangtuo/work/cmake_demo/cmake-demo/Demo1/RelWithDebInfo/Demo




# For each target create a dummy ruleso the target does not have to exist
