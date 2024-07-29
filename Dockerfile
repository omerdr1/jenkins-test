# Nginx'in en son resmi imajını kullanarak başla
FROM nginx:latest


# Web sitenizin kaynak dosyalarını Docker imajına kopyala
COPY src/ /usr/share/nginx/html

# Docker konteynerı çalıştığında açılacak port numarası
EXPOSE 80

# Opsiyonel: Nginx sunucusunu başlatma komutu (Nginx imajı bunu default olarak yapar)
CMD ["nginx", "-g", "daemon off;"]

