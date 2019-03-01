<template>
  <div style="padding:30px;">
    <el-form ref="simpleForm" :rules="rules" :model="simpleForm" label-width="80px">
      <el-form-item label="活动名称" prop="name">
        <el-input v-model="simpleForm.name"></el-input>
      </el-form-item>
      <el-form-item label="活动区域" prop="region">
        <el-select v-model="simpleForm.region" placeholder="请选择活动区域">
          <el-option label="区域一" value="shanghai"></el-option>
          <el-option label="区域二" value="beijing"></el-option>
        </el-select>
      </el-form-item>
      <el-form-item label="活动时间" required>
        <el-col :span="11">
          <el-form-item prop="date1">
            <el-date-picker type="date" v-model="simpleForm.date1" placeholder="选择日期"
                            style="width: 100%;" value-format="yyyy-MM-dd"></el-date-picker>
          </el-form-item>
        </el-col>
        <el-col class="line" :span="2">-</el-col>
        <el-col :span="11">
          <el-form-item prop="date2">
            <el-time-picker type="fixed-time" v-model="simpleForm.date2" placeholder="选择时间"
                            style="width: 100%;" value-format="HH:mm:ss"></el-time-picker>
          </el-form-item>
        </el-col>
      </el-form-item>
      <el-form-item label="即时配送" prop="delivery">
        <el-switch v-model="simpleForm.delivery" :active-value="1" :inactive-value="0"></el-switch>
      </el-form-item>
      <el-form-item label="活动性质" prop="type">
        <el-checkbox-group v-model="simpleForm.type">
          <el-checkbox label="1" name="type">美食/餐厅线上活动</el-checkbox>
          <el-checkbox label="2" name="type">地推活动</el-checkbox>
          <el-checkbox label="3" name="type">线下主题活动</el-checkbox>
          <el-checkbox label="4" name="type">单纯品牌曝光</el-checkbox>
        </el-checkbox-group>
      </el-form-item>
      <el-form-item label="特殊资源" prop="resource">
        <el-radio-group v-model="simpleForm.resource">
          <el-radio :label="1">线上品牌商赞助</el-radio>
          <el-radio :label="2">线下场地免费</el-radio>
        </el-radio-group>
      </el-form-item>
      <el-form-item label="活动省市" prop="area">
        <china-areas-select @handleSelect="getArea" :default="simpleForm.area"></china-areas-select>
      </el-form-item>
      <el-form-item label="活动形式">
        <el-input type="textarea" v-model="simpleForm.desc"></el-input>
      </el-form-item>
      <el-form-item label="所在省市" prop="area2">
        <china-areas-select @handleSelect="getArea2" :default="simpleForm.area2"></china-areas-select>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" @click.native.prevent="handleSimpleForm('simpleForm')">立即创建</el-button>
        <el-button>取消</el-button>
      </el-form-item>
    </el-form>
  </div>
</template>

<script>
  import {submitSimpleForm, fetchSimpleForm} from '@/api/form'
  import ChinaAreasSelect from '@/components/ChinaAreasSelect'

  export default {
    name: 'SimpleForm',
    components: {ChinaAreasSelect},
    data() {
      return {
        simpleForm: {
          name: '',
          region: '',
          date1: '',
          date2: '',
          delivery: '',
          type: [],
          type_json: '',
          resource: '',
          desc: '',
          area: '',
          area2: ''
        },
        loading: false,
        rules: {
          name: [
            {required: true, message: '请输入活动名称', trigger: 'blur'}
          ],
          region: [
            {required: true, message: '请输入活动区域', trigger: 'blur'}
          ],
          date1: [
            {required: true, message: '请选择活动日期', trigger: 'blur'}
          ],
          date2: [
            {required: true, message: '请选择活动时间', trigger: 'blur'}
          ],
          type: [
            {required: true, message: '请至少选择一项活动', trigger: 'blur'}
          ],
          resource: [
            {required: true, message: '请选择特殊资源', trigger: 'blur'}
          ],
          area: [
            {required: true, message: '请选择活动省市', trigger: 'blur'}
          ],
          area2: [
            {required: true, message: '请选择所在省市', trigger: 'blur'}
          ]
        }
      }
    },
    created() {
      if (this.$route.params && this.$route.params.id) {
        const id = this.$route.params && this.$route.params.id;
        this.fetchFormData(id)
      }
    },
    methods: {
      getArea(val) {
        //console.log('Get Area1 return Data: ' + val);
        this.$set(this.simpleForm, 'area', val);
      },
      getArea2(val) {
        //console.log('Get Area2 return Data: ' + val);
        this.$set(this.simpleForm, 'area2', val);
      },
      fetchFormData(id) {
        new Promise((resolve, reject) => {
          fetchSimpleForm(id).then(response => {
            //console.log(response.data);
            for (let key in response.data) {
              this.$set(this.simpleForm, key, response.data[key]);
            }
            this.$set(this.simpleForm, 'area', response.data.active_ssq);
            this.$set(this.simpleForm, 'area2', response.data.active_belong_ssq);
            this.$set(this.simpleForm, 'type', JSON.parse(response.data.type_json));
            resolve()
          }).catch(err => {
            console.log('handle error.');
            reject(err)
          })
        })
      },
      handleSimpleForm(formName) {
        this.$refs[formName].validate((valid) => {
          if (valid) {
            this.loading = true;
            //整理数据
            this.$set(this.simpleForm, 'type_json', JSON.stringify(this.simpleForm.type));
            //开始提交表单
            new Promise((resolve, reject) => {
              submitSimpleForm(this.simpleForm).then(response => {
                console.log('onSubmit');
                resolve()
              }).catch(err => {
                reject(err)
              })
            })
          }
        })
      }
    }
  }
</script>
