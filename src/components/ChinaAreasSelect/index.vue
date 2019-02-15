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
        type: String
      },
      default: {
        type: String
      }
    },
    data() {
      return {
        inputProvince: '',
        inputCity: '',
        inputArea: '',
        provinces: [],
        cities: [],
        areas: [],
        defaultProvince: '',
        defaultCity: '',
        defaultArea: '',
        returnData: []
      }
    },
    created() {

    },
    mounted() {
      this.provinces = this.loadAll();
    },
    watch: {
      default(curVal, oldVal) {
        if (curVal) {
          //console.log('WATCHING curVal default: ');
          //console.log(curVal);
          //set Default
          let defaultJsonStr = curVal;

          let defaultObj = JSON.parse(defaultJsonStr);

          this.defaultProvince = defaultObj.shift();
          this.defaultCity = defaultObj.shift();
          this.defaultArea = defaultObj.shift();

          this.setDefault();
        }
      },
    },
    methods: {
      handleSelect(item) {
        this.returnData = [];

        if (CITIES[item]) {
          this.inputCity = '';
          this.inputArea = '';
          this.areas = [];
          this.cities = CITIES[item]
        } else if (AREAS[item]) {
          this.inputArea = '';
          this.areas = AREAS[item]
        }

        this.returnData.push(this.inputProvince);
        this.returnData.push(this.inputCity);
        this.returnData.push(this.inputArea);

        this.$emit('handleSelect', JSON.stringify(this.returnData))
      },
      loadAll() {
        return PROVINCES;
      },
      setDefault() {
        if (this.defaultProvince) {
          this.inputProvince = this.defaultProvince;
          this.cities = CITIES[this.inputProvince];
        }

        if (this.defaultCity) {
          this.inputCity = this.defaultCity;
          this.areas = AREAS[this.inputCity];
        }

        if (this.defaultArea) {
          this.inputArea = this.defaultArea;
        }
      }
    }
  }
</script>
