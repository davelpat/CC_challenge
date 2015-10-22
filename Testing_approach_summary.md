# Web Site Testing Approach Summary


## General Overview

The general approach will be to automate as much as possible during the itereation to support the product work being done in the iteration. Where it is not feasible or worthwhile automating, iteration work will be manually tested. Open source test tools will be investigated to support the test automation where tools have not already been deployed. The testing of the iteration work is the responsibility of the whole delivery team.

Testing will be done in a virtual machine to isolate the site from any development or staging environments.

Functional, integration, and acceptance testing will use Behavioral Driven Development to specify the tests and to ensure apprporiate coverage as determined by the Product Owner and the delivery team. Point tools will be used to automate specific aspects of testing, such as load and performance testing or link checking.

Test Driven Development is strongly encouraged for unit tests.

## Types of Testing

### Functional

1. **Links**  
  Links will be tested with a link checker looking for
    * broken links
    * hard coded links from the wrong environment, e.g. links to dev in production  
  
2. **Navigation**  
  Navigation tests will be based on typical user flow through the site, based on priorities and feedback from the Product Owner and UX. These flows will be automated based on those priorities. Links will be checked that they have the correct targets, e.g. as part of the flow testing, ensure we arrive at the page with the correct title or specific content.

  Test that sticky navbar remains visible while scrolling and takes the user to the correct section of the page.
  
3. **Cookies and Beacons**
  + cookies not allowed
  + cookies deleted during visit
  + cookies deleted between visits
  
4. **Forms**  
  Forms will be tested for  
    + correct data for required fields
    + required fields will indicate they are required
    + optional fields not required  
    + optional fields will not indicate they are required
    + correct format of fields entered, e.g. valid format for email addresses and phone numbers  
    + invalid formats have reasonable error messages  
    + text fields will allow accented characters and special characters as appropriate for the field
    + test text fields with empty strings, max allowed length
    + text fields over max allowed length will either be trucated or report an error message, as specified by the Product Owner or UX
    + date fields will allow valid dates, including leap years
    + invalid dates will display an appropriate error message
    + Numeric
    + check boxes will enable or disable actions depending on whether they are checked or not
    + if a checkbox is required for an action and it is not checked when the action is initiated, an appropriate error message will be displayed
    + controls become active when minimum required data is available and either not active until then or an appropriate error message is displayed to the user

5. **Dynamic Content**
  + flash works properly
  + movies work properly

6. **Look & Feel**  
  The web site will be available to UX for look and feel validation during the iteration as the features are implemented.  

### Performance
Performance tests will be run on actual hardware, not virtual machines.

1. **Respoonse Times**  
  Benchmark navigation actions on demand to ensure minimal response time as specified by the Product Owner. Response time should not deteriorate with new builds.

2. **Performance**

3. **Load**  
  A small subset of Navigation tests representing typical user actions will be selected to verify the web site will hold up under the specified load for the specified duration. A load runner, such as jrunner. jmeter, or something equivalent will be used to drive the tests.

4. **Stress**  
  The same load runner will be used to 

5. **Long haul tests**
  A VM will be set up to run a subset of user flow tests continuously, at a reasonable rate, and logs monitored for any errors that occur. The tests will continue to run until a crash occurs. Errors will be reported.

### Database Tests

### Security
1. Ensure links do not have sensitive data in clear text
2. SQL injection tests

### Usability

#### Common 

### Configuration

