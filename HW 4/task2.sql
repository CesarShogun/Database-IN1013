INSERT INTO petevent SET petname = 'Fluffy', eventdate = '2020-10-15', eventtype = 'vet', remark = 'antibiotics';

INSERT INTO petPet SET petname = 'Hammy', owner = 'Diane', species = 'hamster', gender = 'M', birth = '2010-10-30';

INSERT INTO petevent SET petname = 'Hammy', eventdate = '2020-10-15', eventtype = 'vet', remark = 'antibiotics';

INSERT INTO petevent SET petname = 'Fluffy', eventdate = '2024-10-23', eventtype = 'litter', remark = '5 kittens, 2 male';

UPDATE petevent SET petname = 'Claws' WHERE eventdate = '1997-08-03';

UPDATE petPet SET death = '2020-09-01' WHERE petname = 'Puffball';

DELETE FROM petevent WHERE petname = 'Buffy';

DELETE FROM petPet WHERE petname = 'Buffy';
