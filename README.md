### pytest_template

``` shell
# Create file requirements.txt and save all packages here
pip freeze > requirements.txt 

# Install all packages from file
pip install -r requirements.txt
```

### Allure reporting
1. Install **allure-pytest** modul (create report in JSON format)
2. Converting JSON filed to HTML report  
-- Install Java 8+  
-- Install node.js  
-- Install allure command line tool
``` shell
npm install -g allure-commandline --save-dev
```
3. Create dir to save reports (in JSON format) 
4. Run the command
``` shell
pytest --alluredir AllureReports Test_dir
```  
5. Run the command (to convert JSON files in HTML)  
``` shell
allure serve AllureReports  
```
### Pytest report
**pytest-html-reporter==0.2.9** lib

### Git
username: alexandranayanzina@gmail.com
pass:AlexTest2021

### Allure configuration in Jenkins
1. Manage Jenkins -> Manage Plugins -> Install "Allure" plugin
2. Manage pipeline -> Global Tool Configuration -> Allure Commandline-> set allure settings



