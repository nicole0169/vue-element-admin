import Layout from '@/views/layout/Layout'

const formRouter = {
  path: '/form',
  component: Layout,
  redirect: '/form/complex-form',
  meta: {
    title: 'Form',
    icon: 'form'
  },
  children: [
    {
      path: 'simple-form/:id(\\d+)?',
      // 注意这里书写顺序不能交换
      component: () => import('@/views/form/simpleForm/index'),
      name: 'SimpleForm',
      meta: {
        title: 'simpleForm'
      }
    },
    {
      path: 'complex-form',
      // 注意这里书写顺序不能交换
      component: () => import('@/views/form/complexForm/index'),
      name: 'ComplexForm',
      meta: {
        title: 'complexForm'
      }
    },
    {
      path: 'custom-components-form',
      component: () => import('@/views/form/customComponentsForm/index'),
      name: 'CustomComponentsForm',
      meta: {
        title: 'customComponentsForm'
      }
    }
  ]
}

export default formRouter
