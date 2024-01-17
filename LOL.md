# Wprowadzenie systemu ShopMaster na rynek

## Oszacowanie pojemności bazy danych

### W bazie danych ShopMaster przewiduje się następujące tabele:

1. **Tablica użytkowników:**
    - ID: 4 bajty
    - Nick: 28 bajtów
    - Hasło (hash): 32 bajty
    - Salt: 16 bajtów
    
    Każdy użytkownik zajmuje w sumie 80 bajtów.

2. **Tablica zamówień:**
    - ID: 8 bajtów
    - Użytkownik: 4 bajty
    - Status realizacji: 2 bajty
    - Status dostarczenia: 2 bajty
    
    Każde zamówienie zajmuje w sumie 16 bajtów.

3. **Tablica zamawianych produktów:**
    - ID: 8 bajtów
    - Zamówienie: 8 bajtów
    - Produkt: 4 bajty
    - Ilość: 4 bajty
    - Cena (po promocjach): 4 bajty
    
    Każdy zamówiony produkt zajmuje w sumie 28 bajtów.

4. **Tablica promocji:**
    - ID: 4 bajty
    - Produkt: 4 bajty
    - Nowa cena: 4 bajty
    - Max liczba produktu: 4 bajty
    - Data ważności: 4 bajty
    
    Każda promocja zajmuje w sumie 20 bajtów.

5. **Tablica produktów:**
    - ID: 4 bajty
    - Cena: 4 bajty
    - Ilość: 4 bajty
    
    Każdy produkt zajmuje w sumie 12 bajtów.

### W bazie danych ShopMaster przewiduje się następujące wielkości dla tabel:

1. **Tablica użytkowników:**
   - Zakładamy około 100 000 nowych użytkowników w ciągu pierwszych 3 miesięcy (czas reklamy), a następnie około 20 000 nowych użytkowników miesięcznie.
   - 100,000 nowych użytkowników x 3 miesiące = 300,000 użytkowników
   - 20,000 nowych użytkowników miesięcznie x 9 miesięcy = 180,000 użytkowników
   - Razem: 480,000 użytkowników
   
   - Sumaryczna wielkość tablicy użytkowników po pierwszym roku: 480,000 użytkowników * 80 bajtów/użytkownik = 38,400,000 bajtów = 38.4 MB

2. **Tablica zamówień:**
   - Przyjmuje się, że miesięcznie przybywa około 20 000 zamówień.
   - Przez pierwsze 3 miesiące zakładamy przybycie około 150 000 zamówień (czas reklamy).
   
   - 150,000 zamówień przez pierwsze 3 miesiące
   - 20,000 zamówień miesięcznie x 9 miesięcy = 180,000 zamówień
   - Razem: 330,000 zamówień
   
   - Sumaryczna wielkość tablicy zamówień po pierwszym roku: 330,000 zamówień * 16 bajtów/zamówienie = 5,280,000 bajtów = 5.28 MB

3. **Tablica zamawianych produktów:**
   - Przyjmuje się, że miesięcznie przybywa około 20 000 zamówionych produktów.
   - Przez pierwsze 3 miesiące zakładamy przybycie około 200 000 zamówionych produktów (czas reklamy).

   - 200,000 zamówionych produktów przez pierwsze 3 miesiące
   - 20,000 zamówionych produktów miesięcznie x 9 miesięcy = 180,000 zamówionych produktów
   - Razem: 380,000 zamówionych produktów

   - Sumaryczna wielkość tablicy zamawianych produktów po pierwszym roku: 380,000 zamówionych produktów * 28 bajtów/produkt = 10,640,000 bajtów = 10.64 MB

4. **Tablica promocji:**
   - Przyjmuje się, że miesięcznie przybywa około 20 000 promocji.
   - Przez pierwsze 3 miesiące zakładamy przybycie około 40 000 promocji (czas reklamy).

   - 40,000 promocji przez pierwsze 3 miesiące
   - 20,000 promocji miesięcznie x 9 miesięcy = 180,000 promocji
   - Razem: 220,000 promocji
   
   - Sumaryczna wielkość tablicy promocji po pierwszym roku: 220,000 promocji * 20 bajtów/promocja = 4,400,000 bajtów = 4.4 MB


5. **Tablica produktów:**
   - Przyjmuje się, że liczba produktów pozostaje względnie stała, a ich ilość i cena mogą się zmieniać.
   - Przez pierwsze 3 miesiące zakładamy że będzie około 10 000 produktów

   - 10,000 produktów przez pierwsze 3 miesiące
   - Liczba produktów pozostaje względnie stała

   - Sumaryczna wielkość tablicy produktów: 10,000 produktów * 12 bajtów/produkt = 120,000 bajtów = 0.12 MB

38.4 MB (użytkownicy) + 5.28 MB (zamówienia) + 10.64 MB (zamówione produkty) + 4.4 MB (promocje) + 0.12 MB (produkty) = 58.84 MB

Wynika z tego, że sumaryczna wielkość wszystkich tablic po pierwszym roku wynosi 58.84 MB.

Podsumowując, rozmiary tabel są szacunkowe i zależą od faktycznych operacji i danych występujących w sklepie internetowym ShopMaster. Wartości podane są w przybliżeniu, a rzeczywisty rozmiar bazy danych będzie zależał od konkretnych danych oraz rozwoju sklepu.

## Plan Wdrożenia Projektu ShopMaster

| Nr  | Nazwa zadania                                      | Czas        | Początek    | Koniec      |
| --- | -------------------------------------------------- | ----------- | ----------- | ----------- |
| 1   | Analiza wymagań dotyczących systemu                | 2 tygodnie  | 01-02-2024  | 14-02-2024  |
| 2   | Projektowanie architektury systemu                 | 3 tygodnie  | 14-02-2024  | 06-03-2024  |
| 3   | Prezentacja projektu architektury klientowi        | 1 tydzień   | 06-03-2024  | 13-03-2024  |
| 4   | Wprowadzenie korekt do projektu architektury       | 1 tydzień   | 13-03-2024  | 20-03-2024  |
| 5   | Implementacja podstawowych funkcjonalności         | 6 tygodni   | 20-03-2024  | 01-05-2024  |
| 6   | Testowanie i poprawki funkcjonalności bazowych     | 4 tygodnie  | 01-05-2024  | 29-05-2024  |
| 7   | Opracowanie mechanizmów płatności online          | 6 tygodni  | 29-05-2024  | 10-07-2024  |
| 8   | Testowanie płatności online i wprowadzenie poprawek| 3 tygodnie  | 10-07-2024  | 31-07-2024  |
| 9   | Implementacja systemu zarządzania zamówieniami     | 7 tygodni   | 31-07-2024  | 18-09-2024  |
| 10  | Testowanie systemu zarządzania zamówieniami        | 5 tygodni  | 18-09-2024  | 23-10-2024  |
| 11  | Integracja systemu z bazą danych sklepu            | 4 tygodnie  | 23-10-2024  | 20-11-2024  |
| 12  | Testy integracyjne i ostateczne poprawki           | 3 tygodnie  | 20-11-2024  | 11-12-2024  |
| 13  | Uruchomienie systemu na serwerze produkcyjnym     | 2 tygodnie   | 11-12-2024  | 25-12-2024  |

## Plan Migracji Danych

| Nr  | Nazwa zadania                                      | Czas        | Początek    | Koniec      |
| --- | -------------------------------------------------- | ----------- | ----------- | ----------- |
| 1   | Eksport danych z istniejącego systemu (jeśli istnieje)| 2 tygodnie | 01-12-2024 | 14-12-2024 |
| 2   | Przygotowanie danych do migracji                  | 1 tydzień   | 14-12-2024 | 21-12-2024 |
| 3   | Import danych do nowego systemu                   | 2 tygodnie  | 21-12-2024 | 03-01-2025 |
| 4   | Weryfikacja i poprawki w danych migracyjnych       | 1 tydzień   | 03-01-2025 | 10-01-2025 |

## Plan Wdrożenia Projektu (Infrastruktura)

| Nr  | Nazwa zadania                                      | Czas        | Początek    | Koniec      |
| --- | -------------------------------------------------- | ----------- | ----------- | ----------- |
| 1   | Rozpoczęcie pisania dokumentacji infrastruktury    | 1 tydzień   | 01-01-2025 | 07-01-2025 |
| 2   | Przygotowanie środowiska testowego                 | 2 tygodnie  | 07-01-2025 | 21-01-2025 |
| 3   | Testowanie systemu oraz infrastruktury technicznej  | 3 tygodnie  | 21-01-2025 | 11-02-2025 |
| 4   | Poprawa zgłoszonych błędów w infrastrukturze       | 1 tydzień   | 11-02-2025 | 18-02-2025 |
| 5   | Zaimplementowanie aplikacji na serwerze produkcyjnym| 2 tygodnie  | 18-02-2025 | 04-03-2025 |
| 6   | Migracja danych na serwer produkcyjny              | 1 tydzień   | 04-03-2025 | 11-03-2025 |
| 7   | Otwarcie produkcyjne systemu                      | 1 tydzień   | 11-03-2025 | 18-03-2025 |





3. Szkolenia

## Cele Szkoleń:
1. **Zapoznanie z Interfejsem:**
   - Zrozumienie struktury systemu.
   - Nabycie umiejętności nawigacji po panelu administracyjnym.

2. **Zarządzanie Produktami:**
   - Dodawanie, edycja i usuwanie produktów.
   - Zarządzanie cenami i ilościami produktów.

3. **Zamówienia i Płatności:**
   - Proces składania zamówień online.
   - Obsługa płatności elektronicznych.
   - Generowanie faktur.

4. **Promocje i Kody Rabatowe:**
   - Tworzenie i zarządzanie promocjami.
   - Wykorzystanie kodów rabatowych.

5. **Zarządzanie Kontem Użytkownika:**
   - Zmiana hasła i ustawienia konta.
   - Włączanie i konfiguracja dwuskładnikowej autentykacji.

## Plan Organizacji Szkoleń:

### Faza Przygotowawcza:

1. **Analiza Grupy Docelowej:**
   - Określenie poziomu doświadczenia użytkowników.
   - Zidentyfikowanie kluczowych obszarów, które mogą wymagać dodatkowej uwagi.

2. **Przygotowanie Materiałów Szkoleniowych:**
   - Opracowanie prezentacji, dokumentacji i tutoriali.
   - Przygotowanie wideoinstrukcji.

3. **Ustalenie Terminów Szkoleń:**
   - Zaplanowanie sesji szkoleniowych w zależności od dostępności użytkowników.

### Faza Szkoleniowa:

4. **Sesje Szkoleniowe:**
   - Przeprowadzenie sesji online lub offline w zależności od preferencji użytkowników.
   - Omówienie poszczególnych funkcji systemu.

5. **Warsztaty Praktyczne:**
   - Ćwiczenia praktyczne z wykorzystaniem środowiska testowego.
   - Rozwiązanie problemów i odpowiedzi na pytania uczestników.

6. **Ewaluacja i Feedback:**
   - Zebranie opinii uczestników na temat szkoleń.
   - Wprowadzenie ewentualnych poprawek do procesu szkoleniowego.

### Faza Monitoringu i Wsparcia:

7. **Wsparcie Poszkoleniowe:**
   - Udostępnienie materiałów szkoleniowych w formie podręcznika.
   - Umożliwienie kontaktu zespołu wsparcia w razie pytań.

8. **Monitorowanie Użytkowania:**
   - Analiza statystyk dotyczących korzystania z systemu.
   - Wykrywanie ewentualnych obszarów problematycznych.

9. **Cykliczne Aktualizacje Szkoleń:**
   - Dostosowywanie szkoleń do nowych funkcji wprowadzanych w systemie.
