# Infrastructure Challenge

Onan-asil tiny application for big impact.  Built upon two components linked to foundational development dating back to 1972.  Plus, shrink rays of course!

## Getting Started

Use the following steps to create your local dev environment.  Find something wrong, put notes in your pull request to contribute back.  Sneakernet, Slack, email also work for help if anything isn't clear.

## Prerequisities

IDE of choice

Install local versions of the following:

- Python 3
- Postgres
- flask
- Node.js and React


## TL;DR - To quickly get up and running with minimal overhead
## Deploy on Ubuntu (18.04 supported)
Clone the repository locally and run the included shell scripts with included artifacts.  (Wrapper for other environments will be considered based on developer demand)

## Manual steps to install:

#### Install database
```
apt install -y postgresql postgresql-contrib
```
#### Start postgres
```
/etc/init.d/postgresql start
```
- logs: /var/log/postgresql/postgresql*main.log
- Connect to Postgres 
  ``` sudo -u postgres psql ```
### Postgres should be listening on default TCP port 5432, see logs for reference
  
#### Install Python 3 to support flask
```
apt install -y python3-venv virtualenv python3-pip
```
#### Create a flask directory and setup a virtualenv
```
pip3 install virtualenv;virtualenv venv
```
(source the activate binary file and copy artifacts from cloned repo into the virtualenv directory)
#### Start flask
```
flask run
```
### Connect to the react app in your browser at http://localhost:5000

#### Install, initialize and create react app
```
apt install -y nodejs npm
npm init -y; npm install -g create-react-app
create-react-app reactapp
```
(Copy artifacts from cloned repo into reactapp src folder)
#### Start node package manager to bring up react
```
npm start
```
### Connect to the react app in your browser at http://localhost:3000

## Get started editing and changing content
---
To edit contents flask, modify the flaskapp.py file
```
app.route("/")
def greeting():
    return "<h1 style='color:orange'>Hello World!</h1>"

    if __name__ == "__main__":
        app.run(host='0.0.0.0')
```
---
To edit contents of react, modify the App.js file and optionally App.css
```
class App extends Component {
  render() {
    return (
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <p>
            Hello shrunken world!
	  </p>
        </header>
      </div>
    );
  }
}
```

---
## Troubleshooting
### Common issues are incorrect permissions on files such as RWX, starting a command in the wrong directory and not having the PATH set, etc... refer to artifacts for reference with deploying
### When in doubt, look at log files, firewall port blocking, configurations related to restricing access to localhost only and services not running.

---
# Want to make this production ready, here are some ideas to consider

- Python
- Flask and Flask-Restful
- Postgres with SQLAchemy and FlaskMigrate
- Nginx or HAproxy
- Webpack
- React with Redux and Redux Sagas or Relay
- Authentication integration, Auth0 or some type of web token
- Containers (multi-container docker) or k8 vs virtualenv to isolate and scale

Consider integration into AWS with ECR with integrated IAM

# Small scale deployemnt

- Leverage Cloudformation and or Ansible with playbooks
- CI software of choice such as Semaphore, Circle
- Consider to build out on a PaaS such as Heroku, Elastic Beanstalk or roll on bare IaaS such as AWS, Azure
- To monitor the app, tools such as crontab, monit, nagios, zabbix, Grafana, deadmansnitch, DataDog and or VictorOps 
- Perfom testing using tools such as WebLOAD, JMeter, etc...
