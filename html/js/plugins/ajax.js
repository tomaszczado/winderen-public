/*
 * Ajax method
 * https://pingsoft.pl/
 */

'use strict';

window.sendGet = function (url, data, headers) {
  headers = headers || {};

  return new Promise((resolve, reject) => {
    let xhr = new XMLHttpRequest();
        xhr.open('GET', url);
        xhr.responseType = 'json';
    
    if (!!headers) {
      let keys = Object.keys(headers);
          keys.forEach((key) => {
            xhr.setRequestHeader(key, headers[key]);
          });
    }

    xhr.onload = () => {
      if (xhr.status >= 200 && xhr.status < 300) {
        resolve(xhr.response);
      } else {
        reject(xhr/* .statusText */);
      }
    };
    xhr.onerror = () => reject(xhr/* .statusText */);
    xhr.send(data);
  });
};

window.sendPost = function (url, data, headers) {
  headers = headers || {};

  return new Promise((resolve, reject) => {
    let xhr = new XMLHttpRequest();
        xhr.open('POST', url);
        xhr.responseType = 'json';

    if (!!headers) {
      let keys = Object.keys(headers);
          keys.forEach((key) => {
            xhr.setRequestHeader(key, headers[key]);
          });
    }

    xhr.onload = () => {
      if (xhr.status >= 200 && xhr.status < 300) {
        resolve(xhr.response);
      } else {
        reject(xhr/* .statusText */);
      }
    };
    xhr.onerror = () => reject(xhr/* .statusText */);
    xhr.send(data);
  });
};