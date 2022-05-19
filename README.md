# daemontools-mod
An experiment with Dr Bernstein's daemontools.  
The source site is [here](https://cr.yp.to/daemontools.html)
 

### Build instructions

-   Build the binaries:

```bash
make
```
this would build all original binaries in ./command, sample server(s) in
./servers and create some directories to run the servers in ./local/real/\*

-   Set the path:

```bash
. setpath.sh
```

-   Start the tools:

```bash
./startit
```

-   Add a server to the watch list:

```bash
cd local
./makelink.sh 1
./makelink.sh 2
...
```

-   See the current supervised servers:

```bash
./prnstatus
```
-   To stop all servers and the tools type:

```bash
./stopit
```
