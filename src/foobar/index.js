export function foobar() {
  for (let i in arguments) {
    console.log(arguments[i]);
  }
}

export default function ddf() {
  console.log('It is default Foobar.');
}

console.log('import and run...');
