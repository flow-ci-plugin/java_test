# ************************************************************
#
# This step will run your project tests
#
#   Variables used:
#     $FLOW_ENABLE_FAILURE
#
#   Outputs:
#
# ************************************************************

cd $FLOW_CURRENT_PROJECT_PATH

if [[ ! -f ./pom.xml ]]; then
  echo -e "${ANSI_RED}No such file ./pom.xml!${ANSI_RESET}"
  flow_terminate 2
fi

if [[ ! -f ./mvnw ]]; then
  flow_cmd "mvn test -B" --echo --assert
else
  flow_cmd "./mvnw test -B" --echo --assert
fi

flow_result $?
