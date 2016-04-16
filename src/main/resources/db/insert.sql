/* Populate role Table */
INSERT INTO role(role)
VALUES ('USER');

INSERT INTO role(role)
VALUES ('ADMIN');

INSERT INTO role(role)
VALUES ('GUEST');

INSERT INTO role(role)
VALUES ('SUPERADMIN');

/* Populate user Table */
INSERT INTO user(username, password, firstname, lastname, email, state)
VALUES ('bill','abc123', 'Bill','Watcher','bill@xyz.com', 'Active');

INSERT INTO user(username, password, firstname, lastname, email, state)
VALUES ('danny','abc124', 'Danny','Theys','danny@xyz.com', 'Active');

INSERT INTO user(username, password, firstname, lastname, email, state)
VALUES ('sam','abc125', 'Sam','Smith','samy@xyz.com', 'Active');

INSERT INTO user(username, password, firstname, lastname, email, state)
VALUES ('nicole','abc126', 'Nicole','warner','nicloe@xyz.com', 'Active');

INSERT INTO user(username, password, firstname, lastname, email, state)
VALUES ('kenny','abc127', 'Kenny','Roger','kenny@xyz.com', 'Active');

/* Populate JOIN Table */
INSERT INTO userrole (userid, roleid)
  SELECT user.userid, role.roleid FROM user, role
  where user.username='bill' and role.role='USER';

INSERT INTO userrole (userid, roleid)
  SELECT user.userid, role.roleid FROM user, role
  where user.username='danny' and role.role='USER';

INSERT INTO userrole (userid, roleid)
  SELECT user.userid, role.roleid FROM user, role
  where user.username='sam' and role.role='ADMIN';

INSERT INTO userrole (userid, roleid)
  SELECT user.userid, role.roleid FROM user, role
  where user.username='nicole' and role.role='SUPERADMIN';

INSERT INTO userrole (userid, roleid)
  SELECT user.userid, role.roleid FROM user, role
  where user.username='kenny' and role.role='SUPERADMIN';

INSERT INTO userrole (userid, roleid)
  SELECT user.userid, role.roleid FROM user, role
  where user.username='kenny' and role.role='USER';
