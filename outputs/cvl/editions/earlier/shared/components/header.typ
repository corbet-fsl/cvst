// Shared application header backed by canonical profile data.
#import "../profile.typ": profile, localized-profile

#let application-header(locale: "en-ch") = {
  let localized = localized-profile.at(locale)

  align(center)[#text(size: 15.75pt, weight: "bold")[#profile.name]]
  v(6.3pt)
  align(center)[
    #text(size: 9.03pt)[
      #link("mailto:" + profile.email)[#profile.email] |
      #link(profile.phone-href)[#profile.phone-label] |
      #profile.location |
      #profile.languages |
      #localized.nationality-and-permit |
      #link(profile.linkedin)[LinkedIn] |
      #link(profile.website)[Web] |
      #localized.availability
    ]
  ]
}
