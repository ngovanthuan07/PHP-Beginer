<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý thành viên</title>
    <style>
        table, th, td { 
            border: 1px solid black; 
        }
        #user-info {
            boder: 1px solid #ccc;
            width: 700px;
            margin: 0 auto;
            padding: 25px;
        }

        #user-info table {
            margin: 10px auto 0 auto;
            text-align: center;
        }

        #user-info h1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <h1>Hello</h1>

    <?php 
        include './connect_db.php';
        $result = mysqli_query($con, "SELECT * FROM user");
        mysqli_close($con);
    ?>

    <div>
        <h1>Danh sách tài khoản</h1>
        <a href="./create_user.php">Tạo tài khoản mới</a>
        <table id="user-listing" style="width:700px">
            <td>Username</td>
            <td>Trạng thái</td>
            <td>Cập nhật lần cuối</td>
            <td>Sửa</td>
            <td>Xoá</td>
            <?php while ($row = mysqli_fetch_array($result)) { ?>
                <tr>
                    <td><?= $row['username'] ?></td>
                    <td><?= $row['status'] == 1 ? "Kích hoạt" : "Block" ?></td>
                    <td><?= date('d/m/Y H:i', $row['created_time']) ?></td>
                    <td><?= date('d/m/Y H:i', $row['last_updated']) ?></td>
                    <td><a href="./edit_user.php?id=<?= $row['id'] ?>">Sửa</a></td> 
                    <td><a href="./delete_user.php?id=<?= $row['id'] ?>">Xoá</a></td> 
                </tr>
            <?php } ?>
        </table>
    </div>

</body>
</html>