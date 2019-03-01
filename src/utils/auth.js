import Cookies from 'js-cookie'

const TokenKey = 'Admin-Token';
// 设置jwt
const AccessToken = 'access_token';

export function getToken() {
  return Cookies.get(TokenKey)
}

export function setToken(token) {
  return Cookies.set(TokenKey, token)
}

export function removeToken() {
  return Cookies.remove(TokenKey)
}

// 设置jwt的操作
export function setAccessToken(token) {
  return Cookies.set(AccessToken, token)
}

export function getAccessToken() {
  return Cookies.get(AccessToken)
}

export function removeAccessToken() {
  return Cookies.remove(AccessToken)
}
