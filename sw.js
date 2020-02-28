var CACHE = 'cache-2020-1';
var assets = [
	'/',
	'/icon.64.jpg?static=1',
	'/icon.jpg?static=1',
	'/css/w3.css?static=1',
	'/css/materialdesignicons.min.css?static=1',
	'/fonts/materialdesignicons-webfont.woff2?static=1'
];

self.addEventListener('install', function(evt) {
  console.log('[Service Worker] Installed.');
  
  evt.waitUntil(precache());
});

self.addEventListener('fetch', function(evt) {
  console.log('[Service Worker] Serving Asset. ', evt.request);
  evt.respondWith(fromCache(evt.request));
  evt.waitUntil(update(evt.request));
});

function precache() {
  return caches.open(CACHE).then(function (cache) {
    return cache.addAll(assets);
  }).then(() => {
	  console.log('[Service Worker] Precached Assets.');
	  console.log('[Service Worker] Assets: ', asset);
  });
}

function fromCache(request) {
  return caches.open(CACHE).then(function (cache) {
    return cache.match(request).then(function (matching) {
      return matching || fetch(request);
    });
  });
}

function update(request) {
  return caches.open(CACHE).then(function (cache) {
    return fetch(request).then(function (response) {
      return cache.put(request, response);
    });
  });
}
