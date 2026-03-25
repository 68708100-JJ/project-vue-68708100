<template>
  <div class="login-container">
    <form @submit.prevent="handleLogin" class="login-form">
      <h2>Register</h2>
      <p>Please enter your details to register.</p>

      <div class="form-group">
        <label for="Username">Username</label>
        <input 
          type="Username" 
          id="Username" 
          v-model="form.password" 
          placeholder="Create Username" 
          required 
        />
      </div>

      <div class="form-group">
        <label for="password">password</label>
        <input 
          type="Password" 
          id="Password" 
          v-model="form.password" 
          placeholder="••••••••" 
          required 
        />
      </div>

      <div class="form-group">
        <label for="text">FirstName</label>
        <input 
          type="FirstName" 
          id="FirstName" 
          v-model="form.FirstName" 
          placeholder="Enter your firstname" 
          required 
        />
      </div>

      <div class="form-group">
        <label for="text">LastName</label>
        <input 
          type="LastName" 
          id="LastName" 
          v-model="form.LastName" 
          placeholder="Enter your lastname" 
          required 
        />
      </div>

      <div class="form-group mb-4">
        <label for="number">Telephone number</label>
        <input 
          type="phone" 
          id="phone" 
          v-model="form.phone" 
          placeholder="+66 000-000-0000" 
          required 
        />
      </div>

      
      <button type="submit" :disabled="isLoading">
        {{ isLoading ? 'Logging in...' : 'Register' }}
      </button>

      <p v-if="errorMessage" class="error">{{ errorMessage }}</p>
    </form>
  </div>
</template>

<script setup>
import { ref, reactive } from 'vue';

// State management
const form = reactive({
  email: '',
  password: ''
});

const isLoading = ref(false);
const errorMessage = ref('');

// Logic
const handleLogin = async () => {
  isLoading.value = true;
  errorMessage.value = '';

  try {
    // Simulate an API call
    console.log('Sending data:', form);
    await new Promise(resolve => setTimeout(resolve, 1500));
    
    alert('Login successful!');
  } catch (err) {
    errorMessage.value = 'Invalid email or password.';
  } finally {
    isLoading.value = false;
  }
};
</script>

<style scoped>
.login-container {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  background-color: #f5f5f5;
}

.login-form {
  background: white;
  padding: 2rem;
  border-radius: 8px;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  width: 100%;
  max-width: 400px;
}

.form-group {
  margin-bottom: 1rem;
}

label {
  display: block;
  margin-bottom: 0.5rem;
  font-weight: bold;
}

input {
  width: 100%;
  padding: 0.75rem;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box; /* Ensures padding doesn't affect width */
}

button {
  width: 100%;
  padding: 0.75rem;
  background-color: #42b883; /* Vue Green */
  color: white;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-size: 1rem;
}

button:disabled {
  background-color: #a8d5c2;
}

.error {
  color: #e74c3c;
  margin-top: 1rem;
  font-size: 0.9rem;
}
</style>