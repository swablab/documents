#import "templates/tmpl_page.typ": tmpl_page
#import "templates/form.typ": form, form_field
#let config = yaml("protokoll.yml")

#show: doc => tmpl_page(
  title: config.title,
  subtext: [
    #config.date \
    #config.location \
    Protokoll: #config.author
    Leitung: #config.lead
  ],
  doc,
)

#set enum(numbering: "1.a.i.")
#eval(config.content, mode: "markup")

#v(3em)
#form[Unterschrift][
  #form_field("Protokollant")
  #if config.signature [
    #place(top+left)[
      #image("signature.png")
    ]
  ]
][
  #if config.lead != none [
    #form_field("Leitung")
    #if config.signature [
      #place(top+left)[ 
        #image("signature_lead.png")
      ]
    ]
  ]
]