# Web Site Testing Approach Summary


## General Overview

The general approach will be to automate as much as possible during the itereation to support the product work being done in the iteration. Where it is not feasible or worthwhile automating, iteration work will be manually tested. Open source test tools will be investigated to support the test automation where tools have not already been deployed. The testing of the iteration work is the responsibility of the whole delivery team.

Testing will be done in a virtual machine to isolate the site from any development or staging environments.

Functional, integration, and acceptance testing will use Behavioral Driven Development to specify the tests and to ensure apprporiate coverage as determined by the Product Owner and the delivery team.

Test Driven Development is strongly encouraged for unit tests.

## Types of Testing

### Functional

1. **Links**  
  Links will be tested with a link checker looking for
    * broken links
    * hard coded links from the wrong environment, e.g. links to dev in production  

  Additionally, as part of the Navigation tests, link will be checked 
    * for sensitive data passed as clear text in urls
    * that they have the correct targets

2. **Navigation**  
  Navigation tests will be based on typical user flow through the site, based on priorities and feedback from the Product Owner and UX. These flows will be automated based on those priorities.

3. **Forms**  
  Forms will be tested for  
    + correct data for required fields  
    + optional fields not required  
    + correct format of fields entered, e.g. valid format for email addresses and phone numbers  
    + invalid formats have reasonable error messages  
    + controls active when minimum required data is available and either  
      * not active until then or  
      * an appropriate error message is displayed to the user  

4. **Look & Feel**  
  The web site will be available to UX for look and feel validation during the iteration as the features are implemented.  

### Performance

#### Respoonse Times
#### Load
#### Stress

### Security

### Usability

#### Common 

### Configuration

