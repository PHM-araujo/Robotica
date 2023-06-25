link1 = Link([0 0 2 0 0]);
link1.qlim = [-pi/2 pi/2];

link2 = Link([0 0 3 pi 0]);
link2.qlim = [-pi/2 pi/2];

link3 = Link([0 0 0 pi 1]);
link3.qlim = [0 2];

link4 = Link([0 1 0 0 0]);
link4.qlim = [-pi/2 pi/2];

ws = [-10 10 -10 10 -10 10];
R = SerialLink([link1 link2 link3 link4], 'name', 'Scara');
q = [0 0 0 0];

R.plot(q, 'workspace', ws)
R.teach