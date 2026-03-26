<?php

include 'condb.php';

// รับค่า JSON จาก client
$data = json_decode(file_get_contents("php://input"), true);

// เช็คว่าข้อมูลครบถ้วนหรือไม่
if (
    empty($data['emp_id']) ||
    empty($data['full_name']) ||
    empty($data['department']) ||
    empty($data['salary'])
) {
    echo json_encode([
        "status" => "error",
        "message" => "กรุณากรอกข้อมูลให้ครบ"
    ]);
    exit;
}

    try {
         // เพิ่มข้อมูลพนักงาน
        $sql = "INSERT INTO employees (emp_id, full_name, department, salary, active)
                VALUES (:emp_id, :full_name, :department, :salary, :active)";

        $stmt = $conn->prepare($sql);

        $stmt->bindParam(":emp_id", $data['emp_id']);
        $stmt->bindParam(":full_name", $data['full_name']);
        $stmt->bindParam(":department", $data['department']);
        $stmt->bindParam(":salary", $data['salary']);
        $stmt->bindParam(":active", isset($data['active']) ? $data['active'] : 1);

        if ($stmt->execute()) {
            echo json_encode([
                "status" => "success",
                "message" => "เพิ่มข้อมูลเรียบร้อย"
            ]);
        } else {
            echo json_encode([
                "status" => "error",
                "message" => "ไม่สามารถเพิ่มข้อมูลได้"
            ]);
        }

    } catch (PDOException $e) {
        echo json_encode([
            "status" => "error",
            "message" => $e->getMessage()
        ]);
    }

?>