self.addEventListener('install', function(event){
    console.log('[Service Worker] Installed Service Worker!', event);
    event.waitUntil(
        caches.open('cache').then(function(cache) {
            return cache.addAll([
                '/',
                '/icon.64.jpg?static=1',
                '/icon.jpg?static=1',
                '/css/w3.css?static=1',
                '/css/materialdesignicons.min.css?static=1'
            ]);
        })
    );
});
self.addEventListener('fetch', function(event) {
    event.respondWith(
        caches.match(event.request).then(function(response) {
            return response || fetch(event.request);
        })
    );
});
