<template>
    <div class="container my-5">
        <table class="table table-hover">
  <thead>
    <tr class="tabel table-dark table-hover">
      <th>รหัสพนักงาน</th>
      <th>ชื่อ</th>
      <th>ตำแหน่ง</th>
      <th>เงินเดือน</th>
      <th>สถานะ</th>
      <th>สร้างเมื่อ</th>
    </tr>
  </thead>
  <tbody>
    <tr v-for="item in employees" :key="item.customer_id">
      <td>{{ item.emp_id }}</td>
      <td>{{ item.full_name }}</td>
      <td>{{ item.department }}</td>
      <td>{{ item.salary }}</td>
      <td>
        <span v-if="item.active==1">ปกติ</span>
        <span v-else >ลาออก</span>
      </td>
      <td>{{ item.created_at }}</td>
    </tr>
  </tbody>
</table>
    </div>
</template>>

<script setup>
import { ref, onMounted } from 'vue'

const employees = ref([])
const loading = ref(true)
const error = ref(null)

onMounted(async () => {
  try {
    const res = await fetch('http://localhost/project-vue-68708100/php.api/Show_Employees.php')
    employees.value = await res.json()
    //products.value = data.products
  } catch (err) {
    error.value = 'โหลดข้อมูลไม่สำเร็จ'
  } finally {
    loading.value = false
  }
})
</script>