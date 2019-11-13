self.addEventListener('install', event => {
    self.skipWaiting();
    console.log('[Service Worker] Installed Service Worker!', event);
    event.waitUntil(
        caches.open('cache')
        .then(cache => {
            return cache.addAll([
                '/',
                '/icon.64.jpg?static=1',
                '/icon.jpg?static=1',
                '/css/w3.css?static=1',
                '/css/materialdesignicons.min.css?static=1',
                '/fonts/materialdesignicons-webfont.woff2?static=1'
            ]);
        })
        .then(console.log)
    );
});
self.addEventListener('fetch', function(event) {
    event.respondWith(
        caches.match(event.request).then(response => {
            return response || fetch(event.request);
        })
    );
});
