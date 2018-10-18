# IBM cloud native Docker container

## Scope

This is so you can have all of the tooling you need to start using
the IBM :cloud: Native applications in one spot.

## Build

Here is how to build it:

```shell
git clone https://github.com/jjasghar/ibm-cloudnative-tools
cd ibm-cloudnative-tools
docker build .
```

## Running the container

```shell
docker run -it jjasghar/ibm-cloudnative-tools
```

### Using BlueMix

```shell
docker run -it jjasghar/ibm-cloudnative-tools
IBM☁️  # ibmcloud login
```

## Questions?

Come join us on [Freenode](http://webchat.freenode.net/?channels=ibmcloud) if you have
any questions.

## License & Authors

If you would like to see the detailed LICENCE click [here](./LICENCE).

- Author: JJ Asghar <jja@ibm.com>

```text
Copyright:: 2018- IBM, Inc

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
