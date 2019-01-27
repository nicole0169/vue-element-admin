<template>
  <div style="padding:30px;">
    <el-form ref="customComponentsForm" :rules="rules" :model="customComponentsForm" label-width="80px">
      <el-form-item label="评委姓名" prop="name">
        <el-input v-model="customComponentsForm.name"/>
      </el-form-item>
      <el-form-item label="入围美食">
        <simple-food-select v-model="customComponentsForm.food"/>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" @click.native.prevent="handleCustomComponentsForm('customComponentsForm')">立即创建
        </el-button>
        <el-button>取消</el-button>
      </el-form-item>
    </el-form>
  </div>
</template>
<script>
import { submitCustomComponentsForm } from '@/api/form'
import SimpleFoodSelect from '@/components/SimpleFoodSelect'

export default {
  name: 'CustomComponentsForm',
  components: { SimpleFoodSelect },
  data() {
    return {
      customComponentsForm: {
        name: '',
        food: ''
      },
      loading: false,
      rules: {
        name: [
          { required: true, message: '请输入评委姓名', trigger: 'blur' }
        ]
      }
    }
  },
  methods: {
    handleCustomComponentsForm(formName) {
      this.$refs[formName].validate((valid) => {
        if (valid) {
          this.loading = true
          // 开始提交表单
          new Promise((resolve, reject) => {
            submitCustomComponentsForm(this.customComponentsForm).then(response => {
              console.log('onSubmit')
              resolve()
            }).catch(error => {
              reject(error)
            })
          })
        }
      })
    }
  }
}
</script>
