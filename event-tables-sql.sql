CREATE TABLE "event" (
  "id" int PRIMARY KEY,
  "name" varchar,
  "status" varchar,
  "description" varchar,
  "start_time" timestamp,
  "end_time" timestamp,
  "created_by" varchar,
  "created_for" varchar
);

CREATE TABLE "event_order" (
  "id" int PRIMARY KEY,
  "status" varchar,
  "description" varchar,
  "table_no" int,
  "created_time" timestamp,
  "event_id" int
);

CREATE TABLE "order_table" (
  "id" int PRIMARY KEY,
  "description" varchar,
  "table_no" int,
  "created_time" timestamp,
  "event_order_id" int
);

CREATE TABLE "table_items" (
  "id" int PRIMARY KEY,
  "description" varchar,
  "table_no" int,
  "created_time" timestamp,
  "order_table" int,
  "Items" int
);

CREATE TABLE "category" (
  "id" int PRIMARY KEY,
  "name" varchar,
  "description" varchar,
  "created_on" timestamp,
  "updated_on" timestamp
);

CREATE TABLE "sub_category" (
  "id" int PRIMARY KEY,
  "name" varchar,
  "description" varchar,
  "created_on" timestamp,
  "updated_on" timestamp,
  "category_id" int
);

CREATE TABLE "Items" (
  "id" int PRIMARY KEY,
  "name" varchar,
  "description" varchar,
  "price" double,
  "created_on" timestamp,
  "updated_on" timestamp,
  "sub_category_id" int
);

ALTER TABLE "event_order" ADD FOREIGN KEY ("event_id") REFERENCES "event" ("id");

ALTER TABLE "order_table" ADD FOREIGN KEY ("event_order_id") REFERENCES "event_order" ("id");

ALTER TABLE "table_items" ADD FOREIGN KEY ("order_table") REFERENCES "order_table" ("id");

ALTER TABLE "table_items" ADD FOREIGN KEY ("Items") REFERENCES "Items" ("id");

ALTER TABLE "sub_category" ADD FOREIGN KEY ("category_id") REFERENCES "category" ("id");

ALTER TABLE "Items" ADD FOREIGN KEY ("sub_category_id") REFERENCES "sub_category" ("id");
