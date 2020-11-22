# hello-jenkins


## install Jenkins on Mac

installing by Homebrew

```
brew install jenkins
```

starting the service

```
brew services start jenkins
```

c.f. [macOS Installers for Jenkins Weekly](https://www.jenkins.io/download/weekly/macos/)

## plugins

* install recommended plugins when startup
* you may need to install `Docker Plugin` and `Docker Pipeline Plugin` to run docker in pipeline

## settings

Docker on mac may not work by default in pipeline.
To run docker in Jenkins Pipeline, change the setting file of Jenkins to add PATH to docker.

`/usr/local/opt/jenkins/homebrew.mxcl.jenkins.plist`

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
  <dict>
    <key>Label</key>
    <string>homebrew.mxcl.jenkins</string>
    <key>ProgramArguments</key>
    <array>
      <string>/usr/local/opt/openjdk@11/bin/java</string>
      <string>-Dmail.smtp.starttls.enable=true</string>
      <string>-jar</string>
      <string>/usr/local/opt/jenkins/libexec/jenkins.war</string>
      <string>--httpListenAddress=127.0.0.1</string>
      <string>--httpPort=8080</string>
    </array>
    <key>EnvironmentVariables</key>
    <dict>
      <key>PATH</key>
      <string>/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin</string>
    </dict>
    <key>RunAtLoad</key>
    <true/>
  </dict>
</plist>
```

