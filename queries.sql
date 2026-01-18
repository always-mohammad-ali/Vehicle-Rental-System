create type role as enum ('Admin', 'Customer');

create table users(
  user_id serial primary key,
  user_role role not null,
  name varchar(50) not null,
  email varchar(100) unique not null,
  password varchar(50) not null,
  phone_number varchar(50) not null
)



create type vehicle_type as enum ('Car', 'Bike', 'Truck')
create type status as enum ('Available','Rented','Maintenance')
create table vehicles(
  vehicle_id serial primary key,
  vehicle_name varchar(50) not null,
  type vehicle_type not null,
  model varchar(50) not null,
  reg_num varchar(50) unique not null,
  rental_price integer not null,
  ava_status status not null
)




create type booking_status as enum ('Pending','Confirmed','Completed','Cancelled')

create table bookings(
  booking_id serial primary key,
  user_id int references users(user_id),
  vehicle_id int references vehicles(vehicle_id),
  start_date date not null,
  end_date date not null,
  booking_status booking_status not null,
  total_cost int not null
)






















