User.create!([{
               name: "Yilan",
               email: "dongyila@grinnell.edu",
               animalPreference: "cat",
               numberPreference: "9",
               password: "password!",
               password_confirmation: "password!"
              }])
p "created #{User.count} user(s)"
