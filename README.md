Steps for adding different modules:

1. In nodes.pp file we can include different modules.
2. For creating a Create a directory named apache
3. Inside that there should be directory named manifests
4. Inside the manifests directory there should be file named init.pp. In this file it should have puppet script for installing apache.
5. There should a nodes.pp inside that we can include different modules.

Guidelines for creating puppet script:

Try to develop the script as seperate classes as in init.pp of apache so that we can include diffent classes as follows:

class apache::install {

       --------------

class apache::otheroption {

        -------------

class apache {
        include apache::install, apache::otheroption
        }
