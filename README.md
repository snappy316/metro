# Metro - Scheduling Simulator

This app simulates scheduling assignments in a Metro Transit system.It allows users to create/edit drivers and coaches, and then create assignments for the drivers and coaches.

## Approach

Each resource was scaffolded, and then a "has many through" relationship was implemented: drivers have many coaches through assignments, and vice versa.

Drivers have a name, email, and their assignment preference (time of day, and coach). Drivers can view their upcoming assignments on their individual driver pages, as well as through the Assignments Index page.

Coaches have a classification (through the klass column), model, and year of manufacture.

Assignments keep track of their driver id and coach id, as well as what route they will be on, and the start and end times.

## Issues / Further Improvements

- All the views were scaffolded, and don't look very pretty.
- There is no authentication or authorization implemented. As such, there are no policies implemented to prevent drivers from creating/editing their own assignments, and only allowing supervisors to create/edit assignments.
- Coach IDs are generated automatically, and all coach classifications (bus, train, streetcar, etc.) are all lumped together in the Coach class. In order to more closely simulate Metro's actual numbering scheme, it might be nice to assign each classification a different range of IDs, so that it is easier to tell which classification a specific coach is based on it's ID.
