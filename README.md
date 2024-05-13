# Ecommerce Website Test Automation
This project demonstrates test automation for an ecommerce website using Robot Framework with Selenium Library. The tests cover scenarios such as login, selecting products from the catalog, and adding products to the shopping cart. - https://rahulshettyacademy.com/loginpagePractise/
**Prerequisites**
Python 3.x installed on your system.
pip package manager installed.
Chrome or Firefox web browser installed.
**Setup**
Clone the repository:
git clone https://github.com/KasuriT/RobotFramework.git
Navigate to the project directory:
cd test
Install the required Python dependencies:
pip install -r requirements.txt

Download the appropriate WebDriver for your browser and place it in the drivers directory:
ChromeDriver for Google Chrome
GeckoDriver for Mozilla Firefox
**Usage**
Running Tests
To execute the test cases, run the following command:
robot test/
This will execute all test cases located in the tests directory.
**Test Suites**
login_tests.robot: Contains test cases related to login functionality.
product_selection_tests.robot: Contains test cases for selecting products from the catalog.
cart_management_tests.robot: Contains test cases for adding products to the shopping cart.
**Test Data**
Test data such as usernames, passwords, and product details can be found in the test_data directory. Modify these files as needed for your specific test scenarios.
**Test Reports**
After running the tests, Robot Framework generates detailed test reports. Open the results directory to view HTML reports for each test suite executed.
**Contributing**
Contributions are welcome! If you encounter any issues or have suggestions for improvements, please create an issue or submit a pull request.



