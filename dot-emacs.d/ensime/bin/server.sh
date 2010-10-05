#!/bin/bash
set -f

case "$1" in
  -h|--help|"")
    echo "$0 should be run by emacs plugin. M-x ensime should start the server for you"
    exit 1
  ;;
  *)
    PORT_FILE=$1
  ;;
esac

INITIAL_HEAP=256M
MAX_HEAP=1024M
CLASSPATH=lib/nekohtml-1.9.6.2.jar:lib/maven-repository-metadata-2.2.1.jar:lib/wagon-file-1.0-beta-6.jar:lib/maven-artifact-manager-2.2.1.jar:lib/backport-util-concurrent-3.1.jar:lib/maven-ant-tasks-2.1.0.jar:lib/maven-plugin-registry-2.2.1.jar:lib/wagon-provider-api-1.0-beta-6.jar:lib/plexus-interpolation-1.11.jar:lib/ensime_2.8.1.RC2-0.3.5.jar:lib/maven-profile-2.2.1.jar:lib/maven-project-2.2.1.jar:lib/maven-artifact-2.2.1.jar:lib/wagon-http-shared-1.0-beta-6.jar:lib/plexus-utils-1.5.15.jar:lib/plexus-container-default-1.0-alpha-9-stable-1.jar:lib/org.scala-refactoring.library-0.2.0-20100921.164431-23.jar:lib/asm-3.2.jar:lib/core-3.4.2.v_883_R34x.jar:lib/asm-commons-3.2.jar:lib/ant-1.6.5.jar:lib/xercesMinimal-1.9.6.2.jar:lib/wagon-http-lightweight-1.0-beta-6.jar:lib/ant-launcher-1.8.1.jar:lib/scala-library.jar:lib/maven-error-diagnostics-2.2.1.jar:lib/ivy-2.1.0.jar:lib/scala-compiler.jar:lib/scalariform_2.8.0-0.0.5.jar:lib/ant-1.8.1.jar:lib/asm-tree-3.2.jar:lib/classworlds-1.1-alpha-2.jar:lib/maven-model-2.2.1.jar:lib/maven-settings-2.2.1.jar
java -classpath $CLASSPATH -Xms${INITIAL_HEAP} -Xmx${MAX_HEAP} org.ensime.server.Server $PORT_FILE
