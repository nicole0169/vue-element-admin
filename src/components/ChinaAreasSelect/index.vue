<template>
  <div>
    <el-select v-model="inputProvince"
               v-bind="$attrs"
               v-on="$listeners"
               placeholder="请选择省份"
               @change="handleSelect">
      <el-option v-for="item in provinces"
                 :key="item.id"
                 :label="item.name"
                 :value="item.id">
      </el-option>
    </el-select>
    <el-select v-model="inputCity"
               v-bind="$attrs"
               v-on="$listeners"
               placeholder="请选择城市"
               @change="handleSelect">
      <el-option v-for="item in cities"
                 :key="item.id"
                 :label="item.name"
                 :value="item.id">
      </el-option>
    </el-select>
    <el-select v-model="inputArea"
               v-bind="$attrs"
               v-on="$listeners"
               placeholder="请选择区县"
               @change="handleSelect">
      <el-option v-for="item in areas"
                 :key="item.id"
                 :label="item.name"
                 :value="item.id">
      </el-option>
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
      value: []
    },
    computed: {
      inputProvince: {
        get() {
          return [...this.value]
        },
        set(val) {
          this.$emit('input', [...val])
        }
      },
      inputCity: {
        get() {
          return [...this.value]
        },
        set(val) {
          this.$emit('input', [...val])
        }
      },
      inputArea: {
        get() {
          return [...this.value]
        },
        set(val) {
          this.$emit('input', [...val])
        }
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
      };
    },
    methods: {
      handleSelect(item) {
        if (CITIES[item]) {
          this.inputCity = '';
          this.inputArea = '';
          this.areas = [];
          this.cities = CITIES[item];
        } else if (AREAS[item]) {
          this.inputArea = '';
          this.areas = AREAS[item];
        }
        this.$root.bus.$emit('province_code', item);
        this.$emit('handleSelect', item);
      },
      loadAll() {
        return PROVINCES;
      }
    },
    mounted() {
      this.provinces = this.loadAll();
    }
  }
</script>
