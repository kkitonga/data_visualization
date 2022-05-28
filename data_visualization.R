#======================AFFIRMATIONS AND PLAYSLIST==========----
                       
                       #UNATHAMINIKA! 
                      #YOU ARE PRECIOUS!
#Playlist:ROKIA TRAORE
#https://www.youtube.com/watch?v=GdfXY3h1CHs

#====================INTRODUCTION==========================----

# SECTION 1 :Script details----
#:Author,content,date of preparation,contact
#See below an example        

#Author (s): kkitonga
#script content :Data visualization 
#Date of authorship:28/05/2022

#================1.PACKAGE INSTALLATION=====================----
                
#Install packages if you have do not have
install.packages("DiagrammeR")
install.packages("PRISMAstatement")

#====================2.LOAD LIBRARIES=======================----
                  
#load libraries
library(DiagrammeR)
library(PRISMAstatement)

#===================3.PRISMA FLOWCHART======================----
       
#3.1.Generic PRISMA flowchart----

prisma(found = 750,
       found_other =124 ,
       no_dupes = 776, 
       screened = 776, 
       screen_exclusions = 13, 
       full_text = 763,
       full_text_exclusions = 17, 
       qualitative = 746, 
       quantitative = 319,
       width = 800, height = 800)

#3.2.Customized PRISMA flowchart----
#i.Customizing labels:i.e for found and found other
#You have to insert the n in your amended labels

prisma(1000, 20, 270, 270, 10, 260, 20, 240, 107,font_size = 10,
       labels = list(found = "Literature search through electornic databases
       (SCORPUS,Web of Science,PROSPERO)
            (n=1000)", 
      found_other = "Records identified through other sources 
      (n=20)",
      screen_exclusions = "Records excluded after reading title and abstract
      and found to be unrelated 
      (n=13)"))

#===============4.RANDOMIZATION FLOWCHART==================-----

#link :https://www.researchgate.net/figure/Patient-block-stratified-randomization-procedure_fig1_269710993

#4.1.Horizontal flowchart ----
#block stratified randomization

DiagrammeR(
  "graph LR
A[Patients in participating  Family health Teams]-->B[Patients with CHF]
A-->C[Patients with DM]
A-->D[Patients with COPD]
B-->I(Community paramedic)
B-->J(Standard care)
C-->H(Community paramedic)
C-->G(Standard care)
D-->F(Community paramedic)
D-->E(Standard care)
style A fill:white
style B fill:RoyalBlue
style C fill:RoyalBlue
style D fill:RoyalBlue
style E fill:lime
style F fill:RoyalBlue
style G fill:lime
style H fill:RoyalBlue
style I fill:RoyalBlue
style J fill:lime
",width=450,height=450)

#4.2 Vertical flowchart (Top Down)----
#block stratified randomization

DiagrammeR(
  "graph TD
A[Patients in participating  Family health Teams]-->B[Patients with CHF]
A-->C[Patients with DM]
A-->D[Patients with COPD]
B-->I(Community paramedic)
B-->J(Standard care)
C-->H(Community paramedic)
C-->G(Standard care)
D-->F(Community paramedic)
D-->E(Standard care)
style A fill:white
style B fill:RoyalBlue
style C fill:RoyalBlue
style D fill:RoyalBlue
style E fill:lime
style F fill:RoyalBlue
style G fill:lime
style H fill:RoyalBlue
style I fill:RoyalBlue
style J fill:lime
",width=450,height=250)

#==================5.SEQUENCE DIAGRAMS====================#----

#5.1 Sequence diagram :library management system----
#*https://www.gleek.io/blog/sequence-library-management.html
#* i did a few additions

DiagrammeR("
sequenceDiagram;
Member->>Librarian: request a book;
Librarian->>Book: Check availability;
Book->>Librarian: Check availability;
alt available
Librarian->>Member: validate;
Librarian->>Member: check no.of issued books;
Librarian->>Member: issue a book;
Librarian->>Transaction: create;
Librarian->>Transaction: add member and book details;
else unavailable
Librarian->>Member: please check again next week;
end
")

#5.2 Sequence diagram:Payment system
#link:http://www.programsformca.com/2012/03/uml-diagrams-book-store.html
#* I did a few additions

DiagrammeR("
sequenceDiagram;
Customer->>Checkout_System: brings items to counter;
Cashier->>Checkout_System: scans items;
Cashier->>Checkout_System: total order;
Cashier->>Customer: request payment;
Customer->>Cashier: gives credit card;
Cashier->>Checkout_System: scans card;
Cashier->>Verifier: scans card;
alt fact check
Verifier->>Cashier: accept card;
Customer->>Cashier: sign credit card slip;
Cashier->>Customer: order is shipped;
else card not valid
Cashier->>Customer: please talk to your bank;
end
")

                       #YOU ARE PRECIOUS!
#============================END==========================#-----
