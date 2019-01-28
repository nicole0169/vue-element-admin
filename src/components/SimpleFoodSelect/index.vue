<template>
  <div>
    <el-select v-model="selectFood" placeholder="请选择美食：" @change="handleSelect">
      <el-option
        v-for="item in foodlist"
        :key="item.value"
        :label="item.label"
        :value="item.value"/>
    </el-select>
  </div>
</template>
<script>
import ElSelect from 'element-ui/lib/select'

export default {
  name: 'SimpleFoodSelect',
  components: { ElSelect },
  props: {
    value: {
      type: String,
      default: ''
    }
  },
  data() {
    return {
      selectFood: '',
      foodlist: [
        {
          value: '10001',
          label: '八爷烤鸭'
        },
        {
          value: '22010',
          label: '宫廷老豆腐'
        },
        {
          value: '30019',
          label: '京八件'
        }
      ]
    }
  },
  methods: {
    handleSelect(item) {
      console.log(item)
      this.$emit('handleSelect', item)
    }
  }
}
</script>
