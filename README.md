# openCX- Spearch Development Report

Welcome to the documentation pages of Spearch of **openCX**!

You can find here detailed information about the product, hereby mentioned as module, from a high-level vision to low-level implementation decisions, a kind of Software Development Report (see [template](https://github.com/softeng-feup/open-cx/blob/master/docs/templates/Development-Report.md)), organized by discipline (as of RUP):

- Business modeling
  - [Product Vision](#Product-Vision)
  - [Elevator Pitch](#Elevator-Pitch)
- Requirements
  - [Use Case Diagram](#Use-case-diagram)
  - [User stories](#User-stories)
  - [Domain model](#Domain-model)
- Architecture and Design
  - [Architectural and design decisions](#Architecture-and-Design)
  - [Logical architecture](#Logical-architecture)
  - [Physical architecture](#Physical-architecture)
- Implementation
  - [Iterations](#Implementation)
- Test
  - [Automated tests](#Test): Functional tests, integration tests, acceptance tests, as much automated as possible.
- Change management
  - [Issues at Github](#Configuration-and-change-management)
- Project management
  - [Tasks management tool](#Project-management)

So far, contributions are exclusively made by the initial team, but we hope to open them to the community, in all areas and topics: requirements, technologies, development, experimentation, testing, etc.

Please contact us!

Thank you!

_Gustavo Speranzini Tosi Tavares_

_João Miguel dos Santos de Lima Monteiro_

_João Oliveira da Rocha_

_João Paulo Ribeiro Nunes_

_Jorge David Monteiro Pacheco_

# Business modeling

## Product Vision

We aim to provide a solid and reliable solution to lost attendees in conferences, while allowing friends to find each other across the event site.

## Elevator Pitch

Ever got lost at a convention? Having a hard time finding a friend? Just _Spearch_ it out! Our product will solve all those your problems.

We aim to deliver a better user experience when attending an event by allowing you to locate your friends or peers, but also finding out where a certain talk will take place, while still being able to maintain your privacy if desired.

# Requirements

## Use case diagram

<img src="/docs/images/user_case_diagram.png" alt="User Case Diagram" height="350">


*Locate other users* - Using the app, the user can find the latest knowed location of another user. 

*Locate rooms of events* - Using the app. the user can access all the relevant information related to the conference's events

- **Actor**: A conference participant who downloaded the app.
- **Description**: Improving the conference&#39;s experience by making it easier for people to find each other or a desired session location.
- **Preconditions**:

-
  1. Having a smartphone with GPS and Internet connection.
  2. App must be installed.
  3. User must be attending the conference and have an account.
  4. Target users must have also the app and a valid account.
- **Postconditions**.
  1. Describe the state of the system at the conclusion of the use case execution (postconditions).
- **Normal Flow**.
  1. A user opens the app.
  2. Picks a person or a place, out of the available options;
    1. The app should show a list of the next scheduled events and their location for  convenience.
  3. The app should display the path and navigate the person to its destination.
  4.  The users can also hide their location.
  5. Users receive a notification when other users start to navigate towards their location.
- **Alternative Flows and Exceptions**.
  1. Target user hides their location mid-navigation: The user gets a notice about the situation and can decide to break navigation or continue to last known location.
  2. User smartphone disconnect from internet or can&#39;t connect to server: User can&#39;t access live information about users. Current navigations try to progress with the offline data.
  3. User smartphone doesn&#39;t have GPS location: User can&#39;t start any navigation and current navigations should halt.

## User stories

**User story 1:**

I wish I could, as an user, easily find people, like my friends, when attending a conference with them.

**Acceptance Test:**

Given that I have the app, a valid account, GPS, internet connection and my location visible.

When I search for a friend or other attendee.

Then the app should display their location.

Value: Should Have

Effort: XL

**User story 2:**

As a user, if I am interested in hearing a specific speaker, I would want to find out when and where his next session is.

**Acceptance Test:**

Given that I have the app, a valid account.

When I search for a specific speaker.

Then the app should retrieve information about the next lecture give by that speaker.

Value: Must Have

Effort: M

**User story 3:**

As a participant in a workshop inside the conference, I would like to know where that event is being held.

**Acceptance Test:**

Given that I have the app, internet connection, and GPS / Bluetooth.
When I&#39;m near a beacon and I choose the event that I want to attend.
Then the app should display the location and the time of the event.

Value: Must Have

Effort: M

**User story 4:**

As a logged user, I want to choose whether people can track me or not so that I can have some privacy.

**Acceptance Test:**

Given that I have the app, a valid account, GPS / Bluetooth

When I don&#39;t want to be disturbed;

Then the app should allow to not share my location.

Value: Could Have

Effort: L

**User Story 5:**

As a user, I want to still have access to events information even without an _active_ internet connection, so that I can attend the event and not worry about having a internet connection.

**Acceptance Test:**

Given that I have the app.

When I lose connection to the internet and still want to search for an event.

Then the app should store information about them and retrieve them.

Value: Could Have

Effort: L


 
![User Story Map](/docs/images/user_case_map.png)
 
## Domain model

![Class Diagram](/docs/images/class_diagram.png)

## Architecture and Design

Our project is composed by two main modules:
  * Mobile Application
  * Database
  Our **app** is being developed in Flutter, and, currently, can track other users location, find specific speakers and events.
  The **database** is not fully developed and connected to our **app**. As so, we use a dart file with array variables that store all the relevant information for the app utilization.

### Logical architecture

![Logical architecture](/docs/images/logical.png)


### Physical architecture

![Physical architecture](/docs/images/physical_arc.png)

The diagrams showned above represent the logical and physical architectures of the initial application ideia and not the one of the final version, due to complications with the backend's performance and obstacles found during the implementation of some features.

### Prototype

1. After receiving a valid input, the program queries the database and gets the values for latitude and longitude for the person in question. Afterwards, it will change the camera position to the coordinates received.

2. After searching for an existing speaker, the app will access the information stored and will display the user page accordingly and will give the user the option to locate the person.

3. After searching for a conference event, the application will access the information stored and will display the event related page accordingly.


## Implementation

Our application was developed with the use of the Flutter SDK and two GPS APIs, specifically designed for Flutter (google_maps_flutter and geolocator plugins) and necessary to obtain the specific locations of each user.

Below you will find a small description of each one of the project iterations.

**Iteration 1:**
  Development of the project idea, project vision, mockups, use case diagram, user stories initial version and elevator pitch.

**Iteration 2:**
  Improvement of the project idea, improvement of user stories and acceptance tests.
  Project requirements and business modeling.

**Iteration 3:**
  Initial flutter development, beginning to implement simple features.
  Progress on report: finishing user stories, requirements and business modeling. Starting on domain model.

**Iteration 4:**
  In the fourth part of the development we integrated what we've done in previous iterations with our own backend and started working on the tracking aspect of the application and figuring out the best way of doing it.
  The backend was designed in order to accomplish the needs or our app.
  
  The Group established the use of the above refered APIs, google_maps_flutter and geolocator, two open source plugins for Flutter wich turned out to be very useful.
  Finishing report.
  
**Iteration 5:**
  We were asked to integrate one of our features on the main project (open-cx).
  Integrated contacts and marker show-on-map functionalities to the main project.

## Test

Most of the interaction with the app is done by tapping button like navigate to a screen or add a friend. This does not required extensive testing. However the user might input text to use some features like searching for a friend. We've used unit tests for some text inputs on our app.
The main focus was for testing the presence of strange characters: `/ [ * } $ ,etc` in text inputs (Username, Password and Searchbar);

- There are some of the characters that can affect the back-end processing of data ( SQL-injection or code-injeciton for example) so it shouldn't be sent to the server.
- Also tested for the presence of a empty string;
- We've used the flutter_test and the flutter_driver libraries;
- The tests files are in the project folder and can be run by the Android Studio.


## Configuration and change management

Throughout the development of the project, the team decided to use the features presented by the Github Flow in order to manage the application's progress:

 - Use of **branches** every time a new iteration was launched.
 - Use of **pull requests** every time a branch was completed and ready to be merge with the main branch.

## Project management

As a project management tool, we have adopted Trello as it is a simple tool that allows us to keep an overview of the development of the project, as well as plan future changes in which we can easily assign and register tasks.
In addition to this we use Miro to perform the user case map. 
Outside that, Github is being used as the repository to keep the code and other resources.

- [Trello] (https://trello.com/b/4Lg9LMpn/esof)
- [Miro] (https://miro.com/app/board/o9J_kwfPXrU=/)

