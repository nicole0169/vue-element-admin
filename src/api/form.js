import request from '@/utils/request'

export function submitSimpleForm(form) {
  const data = form
  return request({
    url: '/form/submit',
    method: 'post',
    data
  })
}
