Tags: ValidateEmpty
Feature: ValidateEmpty TextField
    Validate the presence of empty string in a TextField

Scenario:
   # All user are the same so Given is not necessary
    When I write "" on a text-fied      #Before the processing of information
    And when I trigger the OnSaved for the TextField    #ask for the pad to the CheckIn from where I am
    Then I expect to see a Warning and not trigger any action