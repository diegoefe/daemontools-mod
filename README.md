# daemontools-mod
An experiment with Dr Bernstein's daemontools.<br>
The source site is [here](https://cr.yp.to/daemontools.html)

### Build instructions
- Build the binaries:

```bash
make
```
  this would build all original binaries in ./command, sample server(s) in ./servers and create some directories to run the servers in ./servicios/real/*

- Start the tools:

```bash
./startit
```


- Add a server to the watch list:

```bash
cd servicios
./makelink.sh 1
./makelink.sh 2
...
```

- See the current supervised servers:

```bash
./prnstatus
```

- To stop all servers and the tools type:

```bash
./stopit
```
