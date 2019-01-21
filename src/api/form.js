import request from '@/utils/request'

export function submitSimpleForm(form) {
  const data = form
  //const serverURL = process.env.API_SERVER + process.env.API_URL
  const serverURL = process.env.API_URL
  return request({
    url: serverURL + '/form/submit',
    method: 'post',
    data
  })
}
