# Project Jobs App
Daml templates designed for a job platform for proposing job offers to get applied by candidates, and those applications can get rejected/approved by hr managers.

### Pre-reqs: 

- Daml sdk 
- make 
- A browser

### Overview 
- This project was created by using the `empty-skeleton` template.
- The project adopts and exemplifies the `proposal-accept` design pattern.
- A manager signatory can create `job offer` contracts.
- Candidates, on the other hand, can exercise `apply` nonconsuming choice, as a controller, on the `job offer`.
- Applying for a `job offer` will generate a `job application`.
- `Job applications` are either approved or rejected by its respective `job offer` manager.
- If the manager excercises the `reject`, the `job application` gets archived.
- Upon manager excercises the `accept` choice, the `job application` gets archived, and a `job` contract is created.

### Building
To compile the project, run under contracts/ folder:
```
$ daml build
```

### Testing
To test all scripts:
Either run the pre-written script in the `Test.daml` under /contracts/daml OR run under contracts/ folder:
```
$ daml test --files daml/Test.daml
```

### Running
To load the project into the sandbox and start navigator, run under contracts/ folder:
```
$ daml start
```

### Generate project artifacts
Run under root/ folder:
```
$ make build
```

### Genearate deployment package
Run under root/ folder:
```
$ make build
$ make deploy
```

### Clean generated Make files
Run under root/ folder:
```
$ make clean
```
