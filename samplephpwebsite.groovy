job('DSL-job') {
    scm {
        git('git://github.com/waceho/eval_devops2.git')
    }
    triggers {
        scm('H/15 * * * *')
    }
    steps {
        sh './start.sh'
    }
}
