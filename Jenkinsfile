#!groovy

try {
    properties([parameters([
    string(name: 'BRANCH_NAME',                                  defaultValue: 'master',                                       description: 'Branch to build'),
  ])])
  stage('welles') {
    def nodetest() { 
      sh('echo alive on $(hostname)') 
    } 
    node('welles') {
      try { 
        timeout(time: 5, unit: 'SECONDS') {
          nodetest()
        }
        sh 'cd /space/git/shutit-home-server && git pull && sudo shutit run'
      } catch(err) {
        echo 'Skipping welles as apparently unavailable'
      }
    }
  }
  stage('cage') {
    def nodetest() { 
      sh('echo alive on $(hostname)') 
    } 
    node('cage') {
      try { 
        timeout(time: 5, unit: 'SECONDS') {
          nodetest()
        }
        sh 'cd /space/git/shutit-home-server && git pull && sudo shutit run'
      } catch(err) {
        echo 'Skipping cage as apparently unavailable'
      }
    }
  }
  stage('dali') {
    def nodetest() { 
      sh('echo alive on $(hostname)') 
    } 
    node('dali') {
      try { 
        timeout(time: 5, unit: 'SECONDS') {
          nodetest()
        }
        sh 'cd /space/git/shutit-home-server && git pull && sudo shutit run'
      } catch(err) {
        echo 'Skipping dali as apparently unavailable'
      }
    }
  }
  stage('basquiat') {
    def nodetest() { 
      sh('echo alive on $(hostname)') 
    } 
    node('basquiat') {
      try { 
        timeout(time: 5, unit: 'SECONDS') {
          nodetest()
        }
        sh 'cd /space/git/shutit-home-server && git pull && sudo shutit run'
      } catch(err) {
        echo 'Skipping basquiat as apparently unavailable'
      }
    }
  }
} catch(err) {
  mail bcc: '', body: '''See: https://jenkins.meirionconsulting.com/

''' + err, cc: '', from: 'shutit-home-server@jenkins.meirionconsulting.com', replyTo: '', subject: 'shutit-home-server run failure', to: 'ian.miell@gmail.com'
  throw(err)
}
