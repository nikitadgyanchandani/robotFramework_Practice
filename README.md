# Robot Framework Practice Project

A comprehensive Robot Framework automation testing project that demonstrates web UI testing capabilities across multiple applications including Heroku's "The Internet" demo site and a CRM application.

## 📋 Project Overview

This project showcases Robot Framework automation testing with the following key features:
- **Web UI Testing** using SeleniumLibrary
- **Page Object Model** implementation for maintainable test code
- **Multiple Test Suites** covering different applications
- **Resource Management** with reusable keywords and variables
- **Test Data Management** with setup and teardown procedures

## 🏗️ Project Structure

```
robotFramework_Practice/
├── Tests/                          # Test suites
│   ├── myFirstRobotFile.robot     # Basic Robot Framework introduction
│   ├── herokuTests.robot          # Heroku "The Internet" app tests
│   ├── crm.robot                  # CRM application tests
│   └── variable_demo.robot        # Variable demonstration
├── Resources/                      # Reusable resources
│   ├── commons.robot              # Common keywords and variables
│   ├── heroku.robot               # Heroku-specific keywords
│   ├── crm.robot                  # CRM-specific keywords
│   └── PageObject/                # Page Object Model files
│       ├── homePage_heroku.robot  # Heroku homepage object
│       ├── login.robot            # Login page object
│       ├── addNewCustomer.robot   # Add customer page object
│       └── customerServicePage.robot # Customer service page object
├── Results/                        # Test execution results
│   ├── log.html                   # Detailed test logs
│   ├── report.html                # Test reports
│   ├── output.xml                 # Robot Framework output
│   └── selenium-screenshot-*.png  # Screenshots from test runs
└── README.md                      # This file
```

## 🧪 Test Suites

### 1. My First Robot File (`myFirstRobotFile.robot`)
- **Purpose**: Basic Robot Framework introduction
- **Tests**: 
  - Simple logging demonstration
  - Google homepage title verification
- **Browser**: Chrome

### 2. Heroku Tests (`herokuTests.robot`)
- **Purpose**: Testing Heroku's "The Internet" demo application
- **URL**: https://the-internet.herokuapp.com/
- **Test Cases**:
  - Home page title verification
  - Checkbox interaction testing
  - Drag and drop functionality
- **Tags**: SmokeTest
- **Features**: 
  - Suite setup/teardown
  - Test setup/teardown
  - Resource management

### 3. CRM Tests (`crm.robot`)
- **Purpose**: Testing CRM application functionality
- **URL**: https://automationplayground.com/crm/
- **Test Cases**:
  - Home page loading verification
  - User login with valid credentials
  - New customer creation
  - Existing customer editing
- **Tags**: Smoke, Sanity test
- **Features**: Complete user workflow testing

### 4. Variable Demo (`variable_demo.robot`)
- **Purpose**: Demonstrating Robot Framework variables
- **Tests**: Basic web test with custom keywords

## 🔧 Prerequisites

Before running the tests, ensure you have the following installed:

1. **Python 3.7+**
2. **Robot Framework**
   ```bash
   pip install robotframework
   ```
3. **SeleniumLibrary**
   ```bash
   pip install robotframework-seleniumlibrary
   ```
4. **WebDriver** (Chrome/Firefox)
   - Chrome: Download ChromeDriver and add to PATH
   - Firefox: Download GeckoDriver and add to PATH

## 🚀 Getting Started

### 1. Clone the Repository
```bash
git clone <repository-url>
cd robotFramework_Practice
```

### 2. Install Dependencies
```bash
pip install robotframework robotframework-seleniumlibrary
```

### 3. Run Tests

#### Run All Tests
```bash
robot Tests/
```

#### Run Specific Test Suite
```bash
# Run Heroku tests
robot Tests/herokuTests.robot

# Run CRM tests
robot Tests/crm.robot

# Run basic tests
robot Tests/myFirstRobotFile.robot
```

#### Run Tests with Specific Tags
```bash
# Run only smoke tests
robot --include SmokeTest Tests/

# Run smoke and login tests
robot --include "Smoke OR login" Tests/
```

#### Run Tests with Specific Browser
```bash
# Run with Firefox
robot --variable BROWSER:firefox Tests/

# Run with Chrome (default)
robot --variable BROWSER:chrome Tests/
```

## 📊 Test Reports

After test execution, you can find the following reports in the `Results/` directory:

- **`report.html`**: Comprehensive test report with pass/fail status
- **`log.html`**: Detailed execution logs
- **`output.xml`**: Machine-readable XML output
- **`selenium-screenshot-*.png`**: Screenshots captured during test failures

## 🏛️ Architecture

### Page Object Model
The project follows the Page Object Model pattern for better maintainability:

- **`homePage_heroku.robot`**: Handles Heroku homepage interactions
- **`login.robot`**: Manages CRM login functionality
- **`addNewCustomer.robot`**: Handles customer creation forms
- **`customerServicePage.robot`**: Manages customer service operations

### Resource Management
- **`commons.robot`**: Common keywords and browser management
- **`heroku.robot`**: Heroku-specific business logic
- **`crm.robot`**: CRM-specific business logic

### Test Organization
- **Setup/Teardown**: Proper test data management
- **Tags**: Organized test categorization
- **Documentation**: Comprehensive test documentation

## 🔍 Key Features

### Browser Management
- Automatic browser opening/closing
- Window maximization
- Timeout configuration
- Multi-browser support (Chrome, Firefox)

### Test Data Management
- Suite-level setup and teardown
- Test-level setup and teardown
- Test data insertion and cleanup

### Error Handling
- Screenshot capture on failures
- Detailed logging
- Wait strategies for dynamic content

### Reusability
- Modular keyword design
- Resource file organization
- Variable management

## 🛠️ Configuration

### Browser Configuration
Default browser is set to Chrome in `commons.robot`:
```robot
${BROWSER} =     chrome
```

### Timeout Settings
Selenium timeout is set to 3 seconds for most operations.

### Window Size
Default window size: 1935x1090 pixels

## 📝 Test Credentials

### CRM Application
- **Email**: testAutomatinon@gmail.com
- **Password**: Welcome@1234

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Add your tests following the existing patterns
4. Ensure all tests pass
5. Submit a pull request

## 📚 Learning Resources

This project demonstrates:
- Robot Framework basics
- SeleniumLibrary usage
- Page Object Model implementation
- Test organization and management
- Resource file structure
- Tag-based test execution

## 🐛 Troubleshooting

### Common Issues

1. **WebDriver not found**: Ensure ChromeDriver/GeckoDriver is in your PATH
2. **Timeout errors**: Increase timeout values in test files
3. **Element not found**: Check if page has loaded completely
4. **Browser crashes**: Update WebDriver to match browser version

### Debug Mode
Run tests with debug output:
```bash
robot --loglevel DEBUG Tests/
```

## 📄 License

This project is for educational and practice purposes.

---

**Happy Testing! 🚀**
