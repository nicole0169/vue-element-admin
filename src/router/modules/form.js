import Layout from '@/views/layout/Layout'

const formRouter = {
  path: '/form',
  Component: Layout,
  redirect: '/form/complex-form',
  meta: {
    title: 'Form',
    icon: 'form'
  },
  children: [
    {
      path: 'simple-form',
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
    }
  ]
}

export default formRouter
