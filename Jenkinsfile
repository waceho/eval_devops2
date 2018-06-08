import BaseJobBuilder

String directory = 'Job-eval'
folder(directory) {
    description 'contient les jobs à exécuter'
}

[
    [
        name: 'job_version_1',
        repository: 'https://github.com/waceho/eval_devops2.git',
        branch: 'V1',
        gitTag:'GIT_TAG_1',
        script:'start.sh'
    ],
    [
        name: 'job_version_2',
        repository: 'https://github.com/waceho/eval_devops2.git',
        branch: 'V2',
        gitTag:'GIT_TAG_2',
        script:'start.sh'
    ],
    [
        name: 'job_version_3',
        repository: 'https://github.com/waceho/eval_devops2.git',
        branch: 'V3',
        gitTag:'GIT_TAG_3',
        script:'start.sh'
    ]
].each { Map config ->
    new BaseJobBuilder(
        directory: directory,
        name: config.name,
        repository: config.repository,
        branch: config.branch,
        gitTag: config.gitTag,
        script: config.script,
        gradleTasks: 'version builded'
    ).build(this)
}
