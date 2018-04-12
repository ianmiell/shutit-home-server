#!groovy


try {
  stage('basquiat') {
    node('basquiat') {
      sh 'cd /space/git/shutit-home-server && git pull && sudo shutit run'
    }
  }
  stage('cage') {
    node('cage') {
      sh 'cd /space/git/shutit-home-server && git pull && sudo shutit run'
    }
  }
  stage('dali') {
    node('dali') {
      sh 'cd /space/git/shutit-home-server && git pull && sudo shutit run'
    }
  }
  stage('welles') {
    node('welles') {
      sh 'cd /space/git/shutit-home-server && git pull && sudo shutit run'
    }
  }
} catch(err) {
  mail bcc: '', body: '''See: https://jenkins.meirionconsulting.com/

''' + err, cc: '', from: 'shutit-home-server@jenkins.meirionconsulting.com', replyTo: '', subject: 'shutit-home-server run failure', to: 'ian.miell@gmail.com'
  throw(err)
}
