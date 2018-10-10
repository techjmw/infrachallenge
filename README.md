# infrachallenge

Onan-asil tiny application for big impact.  Built upon two components linked to foundational development dating back to 1972.  Plus, shrink rays of course!

## Getting Started

Use the following steps to create your local dev environment. 

## Prerequisities

IDE of choice

Install local versions of the following:

- Python 3
- Postgres
- flask
- Node.js and React


## TL;DR - To quickly get up and running with minimal overhead
## Deploy on Ubuntu (18.04 supported)
Clone the repository locally and run the included shell scripts and artifacts.  (Wrapper for other environments will be considered based on developer demand)

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
To edit contents of react, modify the App.js file
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


