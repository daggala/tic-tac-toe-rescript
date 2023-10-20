module Field = {
  type t = [#square | #circle]

  let toString = (squareType: t) => (squareType :> string)

  @react.component
  let make = (~_type: t) => {
    switch _type {
    | #square => <button className={_type->toString}> {React.string("X")} </button>
    | #circle => <button className={_type->toString}> {React.string("O")} </button>
    }
  }
}

@react.component
let default = () => {
  <Field _type=#square />
}
