/*
  Uncomment the line below to get started
 */

let hello: string = "Hello, World!"

/*
  This is known as a let-binding. It has the following form:

      let <binding-name>: <type> = <expression>

  The ReScript compiler will "type check" if the value on the right-hand side
  matches the expected type. The code will fail to compile if there is a
  mismatch.

  Other commonly used primitive types are:
    - `int` (32-bit integers),
    - `float`,
    - `bool` (either `true` or `false`).

  -----------------------------------------------------------------------------
  Exercise 1 (easy)
  -----------------------------------------------------------------------------
  Change the type of `hello` to one of the other primitive types.

  This will result in a compilation error because of type mismatch. Inspect
  the compiler error message.

  Once you have understood the error message fix it by changing the annotated
  type of `hello` back to `string`.
  -----------------------------------------------------------------------------

  Did you try changing the annotated type to either `int` or `float` in the
  exercise above?

  The compiler error message includes a contextual recommendation. It points
  you to a library function which can be used to convert a `string` to either
  `int` or `float` types.

  Did you misspell `string` as `sting` or `stirgn`?

  The compiler contains a rudimentary spell-checker which then provides you
  with a hint.

  Compiler errors do not have to scary, cryptic or difficult to understand.
  Fortunately this is a thing of the past, and most new languages and
  compiler authors understand the importance of better error messages. It
  definitely improves the developer experience.
 */

/*
  Uncomment the line below to get started
 */
 let goodbye = "Goodbye!"

/*
  You do not have to manually annotate the type for a binding. The ReScript
  compiler is able to infer the type correctly in most situations. This is
  the __type inference__ feature at work.

  If you are using a recommended editor with the rescript plugin you'll be
  able to hove over the binding to see the automatically inferred type.

  You'll see that the type of the binding `goodbye` is of `string`.

  -----------------------------------------------------------------------------
  Exercise 2 (easy)
  -----------------------------------------------------------------------------
  Change the type of `goodbye` to one of the other primitive types by adding
  a manual type annotation.

  a) Hover over the `binding`. Is the type displayed the same as the manually
  annotated one?

  b) Hover over the red squiggly or wavy line under the value on the
  right-hands side. You can see the compilation error summarized by the
  plugin.

  Fix the compilation error by removing the manual annotation.
  -----------------------------------------------------------------------------

  The type of `goodbye` depends on the value on the right-hand side of the
  let-binding.
 */

/*
  Uncomment the block below.

  The 2nd and 3rd lines are commentend out on purpose (See exercise 3).
 */

let runningTotal = 1 * 1
 let runningTotal = runningTotal+2 * 2
// let runningTotal = 3 * 3


/*
  -----------------------------------------------------------------------------
  Exercise 3 (easy)
  -----------------------------------------------------------------------------
  Uncomment the two bindings with the same name `runningTotal`. You will see
  the compiler warning you about an unused variable. Modify the expression on
  the right-hand side to add the previous value of `runningTotal` to it. Doing
  this uses the binding and the compiler will not warn about an unused
  variable.
  -----------------------------------------------------------------------------

  The variables in ReScript are *immutable* by default. Once declared you
  cannot change its value through assignment.

  But you can *shadow* an existing binding by declaring it again.

  This may feel overly restrictive when you are used to programming in other
  languges where a variable is *mutable* by default. But what you are often
  trying to express are the intermediate steps of a computation.

  When you add the previous `runningTotal` value to get a new *immutable*
  value for `runningTotal`, you are representing the intermediate steps
  required to reach the final value of `runningTotal`.

  The example above is trivial, but *immutable* by default prevents various
  latent bugs in your code. In other languages writing *immutable* code
  you incur a performance penalty. The ReScript compiler is able to perform
  smart optimizations under the hood, that the generated JavaScript code
  will not incur any performance penalty.

  ReScript is not a *pure* language like Haskell/Elm/PureScript. Even though
  *immutable* is the default, there is a different syntax for mutable
  expressions. You will learn more about that later in this tutorial.
 */

/*
  Uncomment the block below.
 */

let sumOfInts = 1 + 2 + 3 + 4
let sumOfFloats = 1. +. 2.2 +. 3.14
let joinedStrings = "Hello, " ++ "World" ++ "!"


/*
  In the expressions above are adding together multiple integers, floats
  strings. Depending on the type of the values you can guess what the
  final value will be when the expression is evaluated.

  You will notice that in ReScript you use a different operator, when the
  type of the value changes.

  To add integer values you use the `+` operator.
  To add float values you use the `+.` operator.
  To add string values you use the `++` operator.

  In object-oriented languages you will have experience writing
  expressions like:

    `1 + 2`

  and

    `"deep work" + " and " + "deliberate practice"`

  expecting them to just work. Those languages have support for a kind
  of polymorphism known as *ad-hoc polymorphism*. The operator `+` is
  polymorphic function which can be applied to arguments of different
  types.

  Some of these languages may also allow you to overload the `+`
  operator for your own custom types. You can use the same
  name with different types. They can act in totally different ways
  which is decided at compilation time, and it depends on the context -
  which is the types of the values being applied to that polymorphic
  function.

  Ad-hoc polymorphism is not a feature of the ReScript/OCaml type
  system.

  The ReScript compiler can therefore recognize when the programmer
  makes a mistake in code. If you intended to add float type values
  but supplied an integer, you have to explicitly cast the integer
  to a float. This type of syntax may feel awkward when you get
  started, but without it you'll encounter subtle bugs which are
  difficult to track down.

  In the long run, these tiny details add up and have a compounding
  effect in writing programs which are safe - because once the code
  compiles the type checker guarantees that a class of errors simply
  do not exist in your code.

  -----------------------------------------------------------------------------
  Exercise 4 (easy)
  -----------------------------------------------------------------------------
  Attempt mixing up the operators and the value types in the above bindings.
  For example, change an integer value to a float like this `1` -> `1.`. Try
  every combination you can.

  See if you can slip one past the ReScript type checker!

  Move on when you have convinced yourself that the ReScript compiler has got
  your back :)
  -----------------------------------------------------------------------------

  **Note regarding exercise 4**

  The ReScript compiler error messages will include hints on the `Belt`
  library functions like:

  - Belt.Float.toInt,
  - Belt.Int.toFloat,
  - Belt.Float.toString,
  - Belt.Int.toString to name a few...

  You can use these functions to explicitly convert a value from one type
  to another. But before you can use them in code, we need to learn a few
  other concepts. This will be covered later in the tutorial, and you will
  revisit these functions.
 */

/*
  Uncomment the block below.
 */

let bookName = "Deep Work"
let tagline = "Rules for Focused Success in a Distracted World"

let book2 = {
  let bookName = "Real World OCaml"
  let tagline = "Functional programming for the masses"

  bookName ++ ": " ++ tagline
}

let book = bookName ++ ": " ++ tagline


/*
  A new block scope can be created by putting code within curly braces `{}`.

  The two bindings within `book2` shadow the bindings with the same name
  outside the block scope.

  What is the value of `book2`?

  The last expression within the block scope is evaluated and implicitly
  returned.

  In ReScript there is no explicit `return` keyword. It is always
  the final expression.

  -----------------------------------------------------------------------------
  Exercise 5 (easy)
  -----------------------------------------------------------------------------
  Try to answer for yourself:

  a) What is the value of `book`?
  b) What is the value of `book2`?
  c) When you remove the shadowed bindings inside the block scope what is the
  new value of `book2`?

  Hint: You can verify your answer by looking up `book` & `book2` in the
  JavaScript generated by the ReScript compiler. It has the same filename
  as this file with the extension `.bs.js`
  -----------------------------------------------------------------------------
 */

/*
  Uncomment the block below.

  The 2nd and 3rd lines are commentend out on purpose (See exercise 6).
 */

let two = 2
let one = 1
let sum = one + two
let three = 3
let sum2 = sum + three




/*
  -----------------------------------------------------------------------------
  Exercise 6 (easy)
  -----------------------------------------------------------------------------
  Uncomment the bindings `sum` & `sum2`.

  You'll spot the following compiler error:

    **The value sum can't be found**

  Reorder the bindings to fix the compilation error.
  -----------------------------------------------------------------------------

  You may have guessed the nature of the problem in the code above.

  A let-binding cannot be used in an expression before it has been declared.

  So the order of bindings matters within a ReScript source file. It follows
  a top-bottom order.

  This makes it increasingly predictable when reading ReScript programs. You
  can always expect the binding to have been declared somewhere above before
  it is used in an expression.
 */
