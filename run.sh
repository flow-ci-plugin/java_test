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

flow_cmd "mvn test -B" --echo --assert
flow_result $?
