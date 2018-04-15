#!groovy

try {
  properties([parameters([
    string(name: 'BRANCH_NAME',                                  defaultValue: 'master',                                       description: 'Branch to build'),
  ])])
  nodes = ['welles','cage','dali','basquiat']
  nodes.each { thisnode ->
    up = true
    stage(thisnode + 'precheck') {
      node(thisnode) {
        try { 
          timeout(time: 5, unit: 'SECONDS') {
            sh('echo alive on ' + thisnode) 
          }
        } catch(err) {
          echo 'Skipping ' + ${thisnode} + ' as apparently unavailable'
          up = false
        }
      }
    }
    stage(thisnode + 'postcheck') {
        if (up) {
          node(thisnode) {
            sh 'cd /space/git/shutit-home-server && git pull && sudo shutit run'
          }
        }
      }
    }
  }
} catch(err) {
  mail bcc: '', body: '''See: https://jenkins.meirionconsulting.com/

''' + err, cc: '', from: 'shutit-home-server@jenkins.meirionconsulting.com', replyTo: '', subject: 'shutit-home-server run failure', to: 'ian.miell@gmail.com'
  throw(err)
}
