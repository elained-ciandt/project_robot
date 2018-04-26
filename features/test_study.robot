*** Settings ***
Documentation
Resource  /Users/elained/Documents/AB/project_robot/step_definition/test_study.robot


*** Test Cases ***

Login keyword
#	[Arguments]	${user}	${password}
	Given open app
	When inform user
	And password
  Then login successfully
