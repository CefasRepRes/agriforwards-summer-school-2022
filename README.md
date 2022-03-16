# AgriFoRwArdS summer school

## Introduction

The
[AgriFoRwArdS](https://www.uea.ac.uk/research/research-with-us/postgraduate-research/latest-phds-and-research-studentships/partnerships-in-doctoral-training/agriforwards)
summer school is being organised by UEA and Cefas to provide training
and development for 28 AgriFoRwArdS CDT students. Based at The UEA in
Norwich, the dates are confirmed as 4th - 8th July 2022.

The event will include [a challenge](#the-challenge), a trip to
[Cefas](#cefas), a trip to the [Norfolk Broads](#norfolk-broads), various
talks, media training, entrepreneurship and
presentations. Please see the [timetable](#timetable).

Our aim is to quickly produce a minimum viable product (MVP) event and
then iteratively improve it before July.

For each module we want two people - a domain expert and an engineer.

This document is a work in progress.

## Priorities

- [ ] Firm up the [timetable](#timetable) so that resources can be booked

- [ ] Allocate leaders to [modules](#design) so that they can proceed independently

## TODO Next

- [ ] Questions about gender balance etc. in the allocations.

- [ ] Rob to figure out risk assessment to allow Cefas people to go
      boating on The Broads. Discussions ongoing

- [ ] Richard to follow up with with Productivity East to confirm our
      requirements.

- [ ] Richard and Julie to talk urgently to the student who has
      objections to killing fish.

- [ ] Look around Productivity East - perhaps hold the next meeting
      there.

- [ ] What tools are there for simulating robot arms? Ask Lincoln
      (RH).

- [ ] Book the robotic equipment.

- [ ] Find out how to program the UEA robot arms. (RH).

- [ ] Ask the Holbeach National Centre for Food Manufacturing (Mark
      Swainson) for advice (RH).

- [ ] Firm up the timetable

- [ ] Can we firm up on the Broads trip? Who at the Broads Authority
      should we speak to? Which boat would we use? KH could put us in
      touch with somebody unless RH knows?

## TODO Backlog

- [ ] Invite an audience for the presentations.
- [ ] Mavis to organise breakfast, lunch and dinner each day
- [ ] Firm up on coach booking
- [ ] Book the Broads Education Officer
- [ ] Book the Broads transport
- [ ] Book the Broads boat trip
- [ ] Book UEA accommodation (+ for Rob and other supervisors?)
- [ ] Ask students for their GitHub accounts.
- [ ] WiFi access at Cefas?

Also see todo items scattered amongst the text below.

## Timetable

|                  |                                                                                                          |
|-----------------:|:---------------------------------------------------------------------------------------------------------|
|       **Mon AM** | Students arrive and check in.                                                                            |
|           **PM** | Pizza / buffet style lunch.                                                                              |
|                  | Welcome and introductions. (RH)                                                                          |
|                  | Introduction to Cefas (JB, KH)                                                                           |
|                  | Introduction to [the challenge](#the-challenge). (RH)                                                    |
|            15:00 | Talk: Graham Finlayson on entrepreneurship.                                                              |
|  **Tues** **AM** | Bus to Lowestoft for a full day at [Cefas](http://www.cefas.co.uk).                                      |
|                  | Visit the MIsT team to see kit. Visit to RAP team?                                                       |
|                  | Get into [teams](#teams) and build a simple, one page company [launch website](#corporate-website-task). |
|                  | Work on [the challenge](#the-challenge) assisted by Cefas experts                                        |
|           **PM** | Brown bag lunch from a local caterer TBD                                                                 |
|                  | [Show and tell talks](#cefas).    TBD                                                                    |
|                  | Evening: Rounders / Frisbee / Football on the beach. OR work on the challenge  (weather dependent)       |
|                  | Take away fish and chips eaten outside OR in Cefas (weather dependent)                                   |
|                  | Bus back to UEA                                                                                          |
|  **Weds** **AM** | An unannounced [media crisis](#media-training).  (RH)                                                    |
|                  | Talk about networking (RH)                                                                               |
|           **PM** | [Trip to The Norfolk Broads](#norfolk-broads).                                                           |
| **Thurs** **AM** | Work on [the challenge](#the-challenge).                                                                 |
|           **PM** | Early evening presentations to an invited audience, dinner and a few beers.                              |
|   **Fri** **AM** | Presentation feedback.                                                                                   |
|                  | Talk: How to convert this to a real businesses - funding, marketing (RH?).                               |
|                  | Roundtable reflections, discussions, Q and A.                                                            |
|                  | Close. Packets of sandwiches to go.                                                                      |


## The-challenge

### Introduction

Imagine you are forming a start-up company that aims to design, build
and operate a fleet of robots to catch fish and serve up fish and
chips.

Fishing is one of the most dangerous occupations.

Managed correctly, aquatic environments are an important source of
food.

### Concept

The system consists of a robot arm onboard an unmanned autonomous
vessel.

When the boat is at sea, the robot uses line fishing to catch and land
the fish.

Fish are then identified and sorted. Small fish and bycatch are
returned to the sea. Sea bass and herring are then prepared and put
into cold storage.

When the boat returns to shore, the robot fillets the fish and cooks
fresh fish and chips to be served on the quayside.

### Design

In order to receive investment, five modules must be designed,
prototyped and demonstrated this week:

0. [The fish finder](#the-fish-finder)
1. [The fish catcher](#the-fish-catcher)
2. [The fish sorter](#the-fish-sorter)
3. [The fish cooker](#the-cooker)
4. [The fish seller](#the-fish-seller) an option for consideration

- [ ] Finalise the list of modules.

### Teams

We have split you into X teams, with each team tackling a separate
module.

### Presentation

Each team will be expected to present their design and demonstrate
prototypes to an assembled audience on Thursday evening.

## The fish finder

### Introduction

Software must navigate the autonomous vessel to the fishing grounds,
considering collision avoidance and minimising fuel costs.

- [ ] Rob to flesh this out a bit more detail and consult Kieran to
      try to make it realistic or at least plausible.

### Task

Given data about bathymetry, windfarms and shipping (AIS), determine
an optimal fishing location and plot a passage plan. Show your results
on a map.

- [ ] Rob to explore UKHO and other GIS data sets. Contact Paulette
      Posen (insight project, wrecks, GIS layers etc).

AIS data?

Consider using some kind of constraint satisfaction / linear
optimisation framework? Random utility models are used in
economics. Variables include cost, distance, probability etc.

Fishing grounds are dependent on habitat, tidal aspects etc. but we
will probably just use poetic licence and make up some suitable
location. Also which species? Bait hook and line? etc.

### Notes

The task could involve talking to Cefas about the locations of fishing
grounds and the factors affecting fish abundance etc (Jeroen?)

This could be an interesting modelling, data science and GIS exercise.

Could involve aspects of fleet robotics, safety, weather, logistics.

## The fish catcher

- [ ] RH to lead on this or appoint a module owner
- [x] Ask Kieran Hyder to advise on line fishing aspects

### Introduction

This robot must cast a line, catch a fish and land it.

KH Notes that line casting is hard, so we may wish to simplify the
problem using jogging arms, general bait fishing and electric
reels. Perhaps considering mixed fishing, bottom bait cod / whiting /
flatfish.

### Task

Use a robot arm to cast a line, catch a fish and land it.

- [ ] What tools are there for simulating robot arms? Ask Lincoln (RH)
- [ ] Book the robotic equipment.
- [ ] Find out how to program the UEA robot arms.
- [ ] Can we get hold of some rods and line?
- [ ] Can we get some model fishes?
- [ ] Can we get somebody to demonstrate line fishing? Could the students have a go?

### Notes

Line catching for sustainability.

## The fish sorter

### Introduction

This robot must use a vision system to sort wanted fish from
bycatch. As such it needs segmentation, classification and
measurement.

- [x] Michal to design, build and lead this module which could have
      sub-groups.

KH Notes that images are from general demersal fishery - cod, haddock
, whiting etc.

### Notes

Computer vision / image processing problem.

Task variations include - dealing with bias / class imbalance. Image
augmentation. Different cameras etc. Segmentation. Measurement,

## The Cooker

### Introduction

This robot must fillet the fish and cook it with chips.

- [ ] RH to lead on this or appoint a module owner

### Task

Program a robot arm to pick up fish, put them in a "deep fat fryer",
put the lid on and then retrieve the fish after x minutes.

- [ ] Ask the Holbeach National Centre for Food Manufacturing (Mark Swainson) for advice (RH).

### Notes

Doing this with a real deep fat fryer seems infeasible/. Perhaps we
use rubber fish and a pretend setup?

Do we have a kitchen? Perhaps one of the local technical colleges
could help?

Conveyor belt?

What about the batter? Mixing? Ingredients.

Safety issues.

- [ ] Firm up this idea

## The fish seller

### Introduction

You need to market the product and manage supply and demand.

- [ ] Decide whether this option is a goer.
- [ ] RH to lead on this or appoint a module owner

### Task

KH Notes that there are a number of apps that connect individual
fishers with markets. E.g. [Abalobi](http://abalobi.org) . KH could
put us in touch with the founder.

- [ ] Firm up this idea

A web app - RH TBD

## Media training

### Unannounced crisis

E.g. *An unmanned autonomous vehicle has just collided with a wind turbine
in the North Sea. One person is injured. You have been invited to
appear on BBC Breakfast TV to comment*

### Content

Role play media interviews. Can we get some video cameras in?

Feedback, discussion and training.

- [ ] RH to lead?
- [ ] Get some cameras in?

## Teams

- [ ] Look at skill set of the students and allocate them to modules accordingly.
- [ ] Consider a questionnaire to find out more about the students and
      what they'd like to learn.

## Cefas

- [ ] Julie to consider the list of speakers and topics
- [ ] Can we get a Cefas talk on sustainable fishing /  Issues around fish and chips?

Which species are more or less sustainable and shy?

#### Overview of Cefas and Cefas science

JB?

Becca Skirrow (fisheries)?

#### Data Science and Statistics at Cefas

Rob to talk about machine learning. Joe Riberio?

#### Marine imagery

Jon Hawes / John Sperry (marine underwater imagery)?

#### Kieran Hyder Talk and QA

The value chain for fish. What can I buy a sea bass for on the
quayside? What are the volume discounts? How much would I pay at the
supermarket? At a fishmonger? At a London restaurant?

Aspects of ethics, sustainability, nutrition, animal welfare etc.

## Norfolk Broads

Trip out to see the Broads and get a flavour of the blue economy leisure industry.

Take some UEA and Cefas people so that students get an opportunity to talk and network.

- [ ] Broad Authority Education officer talk?
- [ ] Oulton Broad paddle steamer?
- [ ] Invite selected Cefas and UEA people (CCSUS?) to accompany to The Broads.

- [ ] Ask Mavis to consider the options.

## Corporate website task

- [ ] Decide whether this option is a goer.

### Introduction

Design and build a simple, one-page corporate website to officially
represent your start-up on the Web.

### Things to consider

What purposes should a company website fulfil?

What information should the website contain?

How important are logos, branding, styling and choice of colour?

### Task

Design a single-page web site using either HTML or Markdown, and add
it to the event's GitHub repository.

### Deliverable

A single page website that that represents you start-up on the
Web. (80% of the marks will be awarded for content and 20% for
presentation).

### Notes

The intention is to get the students to consider the whole project
before diving into the detail.

## References

[The good fish guide](https://www.mcsuk.org/goodfishguide/) published by the Marine Conservation Society.

[Technological innovations in the recreational fishing sector: implications for fisheries management and policy](https://link.springer.com/article/10.1007/s11160-021-09643-1)

## Done 20220302

- [x] Michal to book Graham Finlayson. Only availability is 4th
      July. Rob has sent a meeting invite, but no confirmation
      received.

- [x] Mavis, Kate and Richard to meet and allocate students to
      modules.

- [x] Julie to confirm booking of Cefas facilities on Tuesday 5th July
      2022


## Done 20220202

- [x] Confirm numbers - 28
- [x] Confirm dates
- [x] Confirm accommodation availability.
- [x] Reserve Cefas lecture theatre. JB

## Done 20220216

Kieran Hyder (Cefas) now onboard to advise on fishing aspects.

- [x] We decided that the fish finder / navigation is worth pursuing

We decided not to use the train. Mavis has lined up a 33 seater coach.
