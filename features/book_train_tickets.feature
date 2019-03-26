Feature: customer books train ticket

  As a customer
  I want to book train tickets
  In order to reserve seats on a train   

  Max 70% of entire train can be booked. Ideally, max 70% of each coach can be booked.
  All seats for one reservation are booked in one coach.

  Background: a train is selected to book seats
  	Given a train with 20 seats

  Scenario: too many seats already booked
    Given 11 seats are booked
    When I book 4 seats
    Then no seats are booked

	Scenario: enough seats available
		Given 9 seats are booked
		When I book 2 seats
		Then I get a ticket for 2 seats

	Scenario: ideally max 70% of each coach should be booked
		Given there are 2 coaches with 10 seats
		And 6 seats are booked in the first coach
		And 0 seats are booked in the second coach
		When I book 4 seats
		Then I get a ticket for 4 seats in the second coach

	Scenario: ideally max 70% of each coach should be booked
		Given there are 2 coaches with 10 seats
		And 6 seats are booked in the first coach
		And 0 seats are booked in the second coach
		When I book 4 seats
		Then I get a ticket for 4 seats in the second coach






