create type role as enum ('Admin', 'Customer');

create table users(
  user_id serial primary key,
  user_role role not null,
  name varchar(50) not null,
  email varchar(100) unique not null,
  password varchar(50),
  phone_number varchar(50) not null
)

  alter table users alter column password drop not null;
  
insert into users(name, email, phone_number, user_role)
values ('Alice', 'alice@gmail.com', '1234567890', 'Customer'),
       ('Bob', 'bob@gmail.com', '0987654321', 'Admin'),
       ('Charlie', 'charlie@example.com', '1122334455', 'Customer');

select * from users;








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

insert into vehicles(vehicle_name, type, model, reg_num, rental_price, ava_status)
values ('Toyota Corolla', 'Car', '2022', 'ABC-123', 50, 'Available'),
       ('Honda Civic', 'Car', '2021', 'DEF-456', 60, 'Rented'),
       ('Yamaha R15', 'Bike', '2023', 'GHI-789', 30, 'Available'),
       ('Ford F-150', 'Truck', '2020', 'JKL-012', 100, 'Maintenance');

select * from vehicles;

select * from vehicles where type = 'Car' and ava_status = 'Available';












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

insert into bookings(user_id, vehicle_id, start_date, end_date, booking_status, total_cost)
values (2, 2, '2023-10-01', '2023-10-05', 'Completed', 240 ),
       (2, 2, '2023-11-01', '2023-11-03', 'Completed', 120 ),
       (4, 2, '2023-12-01', '2023-12-02', 'Confirmed', 60 ),
       (2, 1, '2023-12-10', '2023-12-12', 'Pending', 100 );

select * from bookings;

select b.booking_id, u.name as customer_name, v.vehicle_name, b.start_date, b.end_date, b.booking_status as status from bookings b 
join users u on b.user_id = u.user_id
join vehicles v on b.vehicle_id = v.vehicle_id;


select v.vehicle_id, v.vehicle_name as name, v.type, v.model, v.reg_num, v.rental_price, v.ava_status as status from vehicles v 
left join bookings b on v.vehicle_id = b.vehicle_id
where b.booking_id is null order by v.vehicle_id;


select v.vehicle_name, count(b.vehicle_id) as total_bookings from vehicles v
left join bookings b on v.vehicle_id = b.vehicle_id
group by v.vehicle_id having count(b.vehicle_id) > 2;



























