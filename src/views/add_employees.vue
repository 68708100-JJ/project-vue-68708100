<template>
  <div class="container mt-5">
    <div class="row justify-content-center">
      <div class="col-md-6">
        <div class="card shadow-lg p-4">
          <h2 class="text-center mb-4">ฟอร์มเพิ่มพนักงาน</h2>

          <form @submit.prevent="addEmployee">
            <div class="mb-3">
              <label class="form-label">รหัสพนักงาน</label>
              <input
                type="text"
                class="form-control"
                v-model="form.emp_id"
                placeholder="รหัสพนักงาน"
                required
              />
            </div>

            <div class="mb-3">
              <label class="form-label">ชื่อ-นามสกุล</label>
              <input
                type="text"
                class="form-control"
                v-model="form.full_name"
                placeholder="ชื่อ-นามสกุล"
                required
              />
            </div>

            <div class="mb-3">
              <label class="form-label">ตำแหน่ง</label>
              <input
                type="text"
                class="form-control"
                v-model="form.department"
                placeholder="ตำแหน่ง"
                required
              />
            </div>

            <div class="mb-3">
              <label class="form-label">เงินเดือน</label>
              <input
                type="number"
                step="0.01"
                class="form-control"
                v-model="form.salary"
                placeholder="เงินเดือน"
                required
              />
            </div>

            <button type="submit" class="btn btn-primary w-100">
              บันทึก
            </button>
          </form>

          <!-- แสดงผล -->
          <div v-if="message" class="alert mt-3"
               :class="status === 'success' ? 'alert-success' : 'alert-danger'">
            {{ message }}
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      form: {
        emp_id: '',
        full_name: '',
        department: '',
        salary: ''
      },
      message: '',
      status: ''
    }
  },
  methods: {
    async addEmployee() {
      try {
        const res = await fetch('http://localhost/project-vue-68708100/php.api/add.employees.php', {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json'
          },
          body: JSON.stringify(this.form)
        });

        const result = await res.json();

        this.message = result.message;
        this.status = result.status;

        // เคลียร์ฟอร์ม
        if (result.status === 'success') {
          this.form = {
            emp_id: '',
            full_name: '',
            department: '',
            salary: ''
          };
        }

      } catch (error) {
        this.message = 'เชื่อมต่อ API ไม่สำเร็จ';
        this.status = 'error';
      }
    }
  }
}
</script>