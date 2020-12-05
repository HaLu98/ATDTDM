const controller = {};
controller.list = (req, res) => {
  req.getConnection((err, conn) => {
    conn.query('SELECT * FROM KHACHHANG', (err, KHACHHANGS) => {
     if (err) {
      res.json(err);
     }
     res.render('KHACHHANGS', {
        data: KHACHHANGS
     });
    });
  });
};
controller.save = (req, res) => {
  const data = req.body;
  console.log(req.body);
  req.getConnection((err, connection) => {
      conn.query('INSERT INTO KHACHHANG set ?', data, (err, KHACHHANG) => {
      console.log(KHACHHANG);
      res.redirect('/');
    });
  });
};
controller.edit = (req, res) => {
  const { MAKH } = req.params;
  req.getConnection((err, conn) => {
    conn.query("SELECT * FROM KHACHHANG WHERE MAKH = ?", [MAKH], (err, rows) => {
      res.render('KHACHHANGS_edit', {
        data: rows[0]
      });
    });
  });
};
controller.update = (req, res) => {
  const { MAKH } = req.params;
  const newKhachhang = req.body;
  req.getConnection((err, conn) => {
  conn.query('UPDATE KHACHHANG set ? where MAKH = ?', [newKhachhang, MAKH], (err, rows) => {
    res.redirect('/');
  });
  });
};
controller.delete = (req, res) => {
  const { MAKH } = req.params;
  req.getConnection((err, connection) => {
    conn.query('DELETE FROM KHACHHANG WHERE MAKH = ?', [MAKH], (err, rows) => {
      res.redirect('/');
    });
  });
};
module.exports = controller;
