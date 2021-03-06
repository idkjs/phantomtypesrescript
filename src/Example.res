type option<'a> =
  | Some('a)
  | None

module type FormData = {
  type formData<'a>
  type validated
  type unvalidated
  let formData: string => formData<unvalidated>
  let upperCase: formData<unvalidated> => formData<unvalidated>
  let validate: formData<unvalidated> => option<formData<validated>>
}

module FormData: FormData = {
  type formData<'a> = string
  type validated
  type unvalidated
  let formData = a => a
  let upperCase = a => String.uppercase_ascii(a)
  let validate = a =>
    if String.length(a) > 3 {
      Some(a)
    } else {
      None
    }
}

let a: FormData.formData<FormData.unvalidated> = FormData.formData("foobar")

let b: option<FormData.formData<FormData.validated>> = FormData.validate(a)

Js.log(a)
/*
   uncomment to verify

   let c =
   switch (b) {
   | Some(a) => FormData.upperCase(a)
   | None => a
   };

 Js.log(c); */
