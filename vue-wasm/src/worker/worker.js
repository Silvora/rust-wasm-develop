import {fib} from "../wasm/fib";

self.onmessage = function (event) {
    console.log('Received message ', event.data);
    let num = event.data.args
    self.postMessage(fib(num));
}
