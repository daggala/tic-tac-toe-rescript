module Square = {
  type t = [#cross | #circle]

  let toString = (squareType: t) => (squareType :> string)

  @react.component
  let make = () => {
    <button className="square">
      {React.string("hey")}
      //   {switch _type {
      //   | Some(#cross) => React.string("X")
      //   | Some(#circle) => React.string("O")
      //   | None => React.null
      //   }}
    </button>
  }
}

module Board = {
  @react.component
  let make = () => {
    <>
      <div className="board-row">
        <Square />
        <Square />
        <Square />
      </div>
      <div className="board-row">
        <Square />
        <Square />
        <Square />
      </div>
      <div className="board-row">
        <Square />
        <Square />
        <Square />
      </div>
    </>
  }
}

@react.component
let default = () => {
  <div />
}
