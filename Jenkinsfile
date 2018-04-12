#!groovy

try {
  properties([parameters([
    string(name: 'BRANCH_NAME',                                  defaultValue: 'master',                                       description: 'Branch to build'),
  ])])
  stage('welles') {
    node('welles') {
      try { 
        timeout(time: 5, unit: 'SECONDS') {
          sh('echo alive on $(hostname)') 
        }
        sh 'cd /space/git/shutit-home-server && git pull && sudo shutit run'
      } catch(err) {
        echo 'Skipping welles as apparently unavailable'
      }
    }
  }
  stage('cage') {
    node('cage') {
      try { 
        timeout(time: 5, unit: 'SECONDS') {
          sh('echo alive on $(hostname)') 
        }
        sh 'cd /space/git/shutit-home-server && git pull && sudo shutit run'
      } catch(err) {
        echo 'Skipping cage as apparently unavailable'
      }
    }
  }
  stage('dali') {
    node('dali') {
      try { 
        timeout(time: 5, unit: 'SECONDS') {
          sh('echo alive on $(hostname)') 
        }
        sh 'cd /space/git/shutit-home-server && git pull && sudo shutit run'
      } catch(err) {
        echo 'Skipping dali as apparently unavailable'
      }
    }
  }
  stage('basquiat') {
    node('basquiat') {
      try { 
        timeout(time: 5, unit: 'SECONDS') {
          sh('echo alive on $(hostname)') 
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
