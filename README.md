# Projekt-IO

# System zarządzania sprzedażą i zamówieniami online dla sklepu internetowego:

- Zarządzanie produktami: Dodawanie, edycja i usuwanie produktów w sklepie, zarządzanie cenami i stanem magazynowym.
  - nazwa, cena i ilość produktu
- Zamówienia i płatności: Przyjmowanie zamówień online, obsługa płatności elektronicznych (i generowanie faktur).
  - produkt, ilość, karta kredytowa
- Generowanie faktur
  - numer zamównia, Imię i Nazwisko lub NIP, Adres
- Promocje i kody rabatowe: Tworzenie i zarządzanie promocjami, umożliwianie klientom korzystania z kodów rabatowych.
  - nazwa kodu, produkty, przecena

// maybe
- Zarządzanie klientami: Rejestracja klientów, zarządzanie danymi kontaktowymi, historia zamówień.
  - ???

# Tabele

- użytkownicy: id, nick, password, 2fa
- produkty: id, cena, ilość, id-sprzedawcy
- zamówienia: id, id-kupujący, produkty, suma zapłacona
- kody rabatowe: id, id-sprzedawcy, przecena, produkty


# Zadanie 1
  Implementacja tylko podanych funkcji - sklep jest rozległy, więc ograniczyć się z złożonością projektu
