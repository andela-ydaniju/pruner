node('docker') {
  docker.image('postgres').withRun { container ->
    docker.image('3.3.4-slim-bookworm').inside("--link=${container.id}:postgres") { 
      stage 'Install Gems'
      bundle install

      stage 'Invoke Rake'
    withEnv(['DATABASE_URL=postgres://postgres@postgres:5432/']) {
        bundle exec rake
      }
      junit 'spec/reports/*.xml'
    }
  }
}
