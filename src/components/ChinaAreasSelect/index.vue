<template>
  <div>
    <el-select
      v-model="inputProvince"
      v-bind="$attrs"
      placeholder="请选择省份"
      v-on="$listeners"
      @change="handleSelect">
      <el-option
        v-for="item in provinces"
        :key="item.id"
        :label="item.name"
        :value="item.id"/>
    </el-select>
    <el-select
      v-model="inputCity"
      v-bind="$attrs"
      placeholder="请选择城市"
      v-on="$listeners"
      @change="handleSelect">
      <el-option
        v-for="item in cities"
        :key="item.id"
        :label="item.name"
        :value="item.id"/>
    </el-select>
    <el-select
      v-model="inputArea"
      v-bind="$attrs"
      placeholder="请选择区县"
      v-on="$listeners"
      @change="handleSelect">
      <el-option
        v-for="item in areas"
        :key="item.id"
        :label="item.name"
        :value="item.id"/>
    </el-select>
  </div>
</template>

<script>
import PROVINCES from './assets/provinces'
import CITIES from './assets/cities'
import AREAS from './assets/areas'

export default {
  name: 'ChinaAreasSelect',
  props: {
    value: {
      type: String,
      default: ''
    }
  },
  data() {
    return {
      inputProvince: '',
      inputCity: '',
      inputArea: '',
      provinces: [],
      cities: [],
      areas: []
    }
  },
  mounted() {
    this.provinces = this.loadAll()
  },
  methods: {
    handleSelect(item) {
      if (CITIES[item]) {
        this.inputCity = ''
        this.inputArea = ''
        this.areas = []
        this.cities = CITIES[item]
      } else if (AREAS[item]) {
        this.inputArea = ''
        this.areas = AREAS[item]
      }
      this.$root.bus.$emit('province_code', item)
      this.$emit('handleSelect', item)
    },
    loadAll() {
      return PROVINCES
    }
  }
}
</script>
