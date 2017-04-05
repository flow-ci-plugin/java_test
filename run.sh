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

flow_cmd "mvn test -B" --echo --assert
flow_result $?
