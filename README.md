
# java_test Step
Run test use `mvn test`

### INPUTS
* `FLOW_ENABLE_FAILURE` - 

## EXAMPLE 

```yml
steps:
  - name: java_test
    enable: true
    failure: true
    plugin:
      name: java_test
      inputs:
        - FLOW_ENABLE_FAILURE=$FLOW_ENABLE_FAILURE
```
