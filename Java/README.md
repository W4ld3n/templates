# Java
### Package Structure
~~~
build.xml
src/
bin/
lib/
dist/
doc/
test/
~~~

The above structure depends a little bit on whether `ANT` is used to build the project or if it uses `Maven`. In the latter case the test folder is not located at the project root but in the src/ folder:
~~~
src/
  main/com/...
  test/com/...
~~~
