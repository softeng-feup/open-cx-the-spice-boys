Tags: ValidateChars
Feature: ValidateChars button
    Validate the presence of strange characters in a String

Scenario:
   # All user are the same so Given is not necessary
    When I write "fsahp%}" on a text-fied      #Before the processing of information
    And when I trigger the OnSaved for the TextField    #ask for the pad to the CheckIn from where I am
    Then I expect to see a Warning and not trigger any action