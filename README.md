# Project 6 - ByteNote
### Ruby on Rails Project

### Roles
* Overall Project Manager: Carter Brown
* Coding Manager: Dan Greer
* Testing Manager: Ally Chitwood
* Documentation: Will Greenway

### Contributions
Please list who did what for each part of the project.
Also list if people worked together (pair programmed) on a particular section.

Carter Brown
  - Model, Views, and Controller for Notebooks
  - Helped Ally with Notes
  - Used Bootstrap to layout certain views
  - Established Notebooks-Users and Notes-Notebooks relationships

Ally Chitwood
  - Model, Views, and Controller for Notes
  - Testing for all Models
  - Added trix
  
Will Greenway
  - Model, View and Controller for Themes
  - Created theme_sheets for theme styling
  - Added JQuery and JQuery UI

Daniel Greer
  - Model, View, and Controller for Users
  - Testing for all Controllers
  - Added Devise
  
Nathan Simpson
  - View and controller for Games
  - Set up email validation procedure
  - Helped with notes and notebook views
  
### Running ByteNote Web App  
1. $cd project_6
2. $bundle install
3. $rails db:migrate
4. $rails server
5. In firefox, navigate to localhost:3000/

### Testing
See rspec testing in spec folder, in /project_6 run:
$rspec spec

Did not use test folder for final testing.
- Controllers
  - games
  - greetings
  - notebooks
  - notes
  - themes
- Models
  - note
  - notebook
  - user


## Presentation 
See presentation in Brainstorming folder under name ByteNote - byteme Final Project.pdf

### Contributions
Carter Brown
  - Bootstrap slides
  - Notes controller slide
  - Notebooks controller slide

Ally Chitwood
  - Introduction slide
  - Entity Relationship Diagram
  - Routes slide
  - Notes controller table slide
  - Rspec slides
  - Trix slides
  
  
Will Greenway
  - Routes slides
  - JQuery and JQuery UI slides

Daniel Greer
  - Slides for Devise
  - Welcome Page
  - Greetings Controller
  - New Welcome Page Routing
  - Welcome Page Redirecting
  
Nathan Simpson
  - Bootstrap slides
  - REST diagram slides
  
  ### Sources
  - Devise: 
    - https://github.com/plataformatec/devise
  - Games: 
    - https://www.freeonlinegames.com/tag/puzzle-games/solitaire
    - https://www.freeonlinegames.com/tag/puzzle-games/cube-crush-hd
    - https://www.freeonlinegames.com/tag/sports-games/mini-putt
  - Rspec: 
    - https://guides.rubyonrails.org/testing.html
    - http://rspec.info/
  - Rails Textbook: 
    - https://www.railstutorial.org/book/beginning
  - Trix:
    - https://github.com/basecamp/trix
  - Diagram:
    - https://www.draw.io/
  - Bootstrap:
    - https://getbootstrap.com/
  - JQuery/JQuery UI
    - https://jqueryui.com
