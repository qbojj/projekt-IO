cheat sheet: https://github.com/whiskeyo/Kursy-UWr/blob/master/In%C5%BCynieria%20oprogramowania/Fazy%20konstrukcji.pdf

---

    1. Dla 3 funkcji ( przypadków użycia, historyjek użytkownika) opracowanie dokładnych przypadków testowych, tzw przypadków testowych niższego rzędu (z podaniem konkretnych wartości danych i wyników oraz opisami stanu początkowego i końcowego).

    2. Na podstawie norm ISO/IEC 9126 i 25 000 (zostaną przesłane przed 13 XII) opracowanie pomiarów mających na celu sprawdzenie czy system spełnia opisane w poprzednich dokumentach wymagania niefunkcjonalne.

    3. Opracowanie planu beta testowania.

    4. Napisanie planu zarządzania jakością oprogramowania.

    5. Sporządzenie dokładniejszego planu wykonania produktu, dokładniejszej oceny pracochłonności, dokładniejszego harmonogramu.

    6. Ocena zgodności wykonanych prac z wizją systemu i specyfikacją wymagań.

---


# Zadanie 1: testy

## Usuwanie Produktu

- Stan początkowy: W sklepie istnieje produkt o nazwie "Koszulka sportowa" z dostępną ilością 50 sztuk.

- *Kroki*:
    1. Administrator loguje się do panelu zarządzania sklepem.
    2. Wybiera opcję "Edytuj produkty".
    3. Wybiera produkt "Koszulka sportowa".
    4. Potwierdza decyzję o usunięciu produktu.

> *Oczekiwany wynik*: Produkt "Koszulka sportowa" zostaje usunięty z oferty sklepu.

> Stan końcowy: Produkt "Koszulka sportowa" nie jest już dostępny w sklepie, ilość produktu wynosi 0.



## Zarządzanie Cenami i Stanem Magazynowym:

- Stan początkowy: Cena produktu "Spodnie jeansowe" wynosi 120 zł, a ilość w magazynie to 30 sztuk.

- *Kroki*:
    1. Administrator loguje się do panelu zarządzania sklepem.
    2. Wybiera opcję "Zarządzaj cenami i stanem magazynowym".
    3. Aktualizuje cenę produktu "Spodnie jeansowe" na 150 zł i ilość w magazynie na 40 sztuk.
>Oczekiwany wynik: Cena produktu "Spodnie jeansowe" zostaje zmieniona na 150 zł, a ilość w magazynie wzrasta do 40 sztuk.

>Stan końcowy: Produkt "Spodnie jeansowe" ma cenę 150 zł i ilość 40 sztuk.



## Przypadki testowe dla składania zamówienia online:
### Przypadek testowy 1: Dodanie produktu do koszyka

- Stan początkowy: Klient jest zalogowany na stronie sklepu.
- Kroki:
    1. Przejdź do kategorii "Elektronika".
    2. Dodaj laptop marki XYZ do koszyka.
> Stan końcowy: Laptop marki XYZ jest dodany do koszyka.

### Przypadek testowy 2: Wprowadzenie danych dostawy i płatności

- Stan początkowy: Koszyk jest wypełniony produktami.
- Kroki:
    1. Przejdź do opcji "Złóż zamówienie".
    2. Wprowadź adres dostawy: ul. Testowa 123, Miasto: Testowo, Kod pocztowy: 12-345.
    3. Wybierz metodę płatności: Karta kredytowa.
    4. Wprowadź numer karty: 1234 5678 9012 3456, datę ważności: 12/25, CVV: 123.
> Stan końcowy: Dane dostawy i płatności są wprowadzone, gotowe do potwierdzenia zamówienia.

### Przypadek testowy 3: Potwierdzenie zamówienia

- Stan początkowy: Dane dostawy i płatności są wprowadzone.
- Kroki:
    1. Potwierdź zamówienie.
    2. Sprawdź stronę potwierdzenia.
    Stan końcowy: Generuje się potwierdzenie zamówienia z numerem zamówienia i szczegółami produktów.

## Przypadki testowe dla tworzenia nowych promocji:
### Tworzenie promocji z darmową wysyłką

- Stan początkowy: Brak aktywnych promocji darmowej wysyłki.
- *Kroki*:
    1. Wybierz opcję "Twórz nową promocję".
    2. Wprowadź nazwę promocji: "Wysyłka Gratis".
    3. Wybierz typ rabatu: Darmowa wysyłka.
    4. Określ minimalną kwotę zamówienia: 100 zł.
> Stan końcowy: Promocja "Wysyłka Gratis" jest widoczna dla klientów przy zamówieniach powyżej 100 zł.

# Zadanie 2:


# Zadanie 3: Plan Beta testowania



### 1. Pierwsza faza testowania (pierwsze 3 tygodnie)

- **Cele:**
    - Testowanie funkcji logowania i rejestracji.
    - Weryfikacja poprawności dodawania produktów.
    - Zapewnienie działania systemu obsługującego zamówienia.
- **Zadania:**
    - Tester będzie odpowiedzialny za testowanie kluczowych funkcjonalności.
    - Skoncentrowanie się na poprawności danych i działaniu systemu logowania.
    - Ocena funkcjonalności dodawania produktów oraz zarządzania zamówieniami.
- **Wymagania:**
    - Poprawność procesu logowania i rejestracji.
    - Dodawanie produktów powinno działać bezawaryjnie.
    - System obsługi zamówień powinien być sprawny.
- **Kontrola postępu:**
    - Regularne raporty od testera na temat postępów i ewentualnych problemów.
    - Zapewnienie, że dodawanie produktów do bazy danych jest stabilne i efektywne.

### 2. Druga faza testowania (po stworzeniu części bazy produktów)

- **Cele:**
    - Testowanie dodawania produktów przez wielu użytkowników.
    - Ocena systemu zarządzania produktami w sytuacji dużej liczby dodawanych pozycji.
    - Sprawdzenie funkcjonalności udostępniania i tworzenia zbiorów produktów.
- **Zadania:**
    - Użytkownicy z dostępem do aplikacji przeprowadzą testy dodawania produktów.
    - Dodatkowy tester będzie monitorować działania użytkowników i tworzyć testy na podstawie ich zgłoszeń.
- **Wymagania:**
    - Skuteczność w dodawaniu produktów przez wielu użytkowników.
    - Działanie funkcji tworzenia i udostępniania zbiorów produktów.
- **Kontrola postępu:**
    - Analiza raportów od użytkowników i testera.
    - Ocena stabilności systemu w przypadku dużej ilości dodawanych produktów.

### 3. Trzecia faza testowania (2 tygodnie przed premierą aplikacji)

- **Cele:**
    - Ponowne przeprowadzenie wcześniejszych testów dla potwierdzenia stabilności funkcji.
- **Zadania:**
    - Powtórne przeprowadzenie wcześniejszych testów w celu weryfikacji stabilności funkcji.
- **Wymagania:**
    - Potwierdzenie, że wcześniej testowane funkcje są stabilne i działają poprawnie.
- **Kontrola postępu:**
    - Ostateczna weryfikacja funkcji wcześniej testowanych.

# Plan Zarządzania Jakością
1. **Testowanie Na Bieżąco Funkcji Programistycznych:**
    - Programiści będą odpowiedzialni za jednostkowe testowanie swojego kodu.
    - Regularne przeglądy kodu przez zespoły w celu zapewnienia wysokiej jakości implementacji.
   
2. **Testowanie Bezpieczeństwa Aplikacji i Bazy:**
    - Regularne audyty bezpieczeństwa podczas procesu implementacji.
    - Wykorzystanie profesjonalnych narzędzi do skanowania i testowania pod kątem bezpieczeństwa aplikacji i bazy danych.

3. **Zgodność z Standardami Kodowania:**
    - Stosowanie się do ustalonych standardów kodowania, np. nazewnictwo, struktura kodu, komentarze.
    - Regularne przeglądy kodu i refaktoryzacje w celu utrzymania czytelności i efektywności kodu.

4. **Raportowanie Postępów Co Tydzień:**
    - Pracownicy będą zobowiązani do raportowania postępów co tydzień, zapewniając dotrzymanie ustalonych terminów.
    - Spotkania stand-up lub raporty pisemne będą służyć jako narzędzia do monitorowania postępów i ewentualnego dostosowania harmonogramu.

5. **Używanie Systemu Kontroli Wersji Git:**
    - Cała praca będzie składowana i monitorowana w systemie kontroli wersji Git.
    - Regularne commity i przeglądy kodu w systemie, co ułatwi śledzenie postępu pracy i ewentualne cofnięcie zmian.

6. **Dokumentacja na Zakończenie Projektu:**
    - Wraz z fazą końcową projektu zostanie stworzona i dołączona pełna dokumentacja aplikacji.
    - Dokumentacja będzie zawierać opis architektury, instrukcje użytkownika oraz procedury konserwacji i obsługi.

# Plan wykonania projektu 

| Nr  | Nazwa zadania                                      | Czas        | Początek    | Koniec      |
| --- | -------------------------------------------------- | ----------- | ----------- | ----------- |
| 1   | Analiza wymagań dotyczących systemu                | 1,5 tygodnia | 03-05-2024  | 15-05-2024  |
| 2   | Projektowanie architektury systemu                 | 2 tygodnie  | 15-05-2024  | 29-05-2024  |
| 3   | Prezentacja projektu architektury klientowi        | 1 tydzień   | 29-05-2024  | 05-06-2024  |
| 4   | Wprowadzenie korekt do projektu architektury       | 0,5 tygodnia| 05-06-2024  | 09-06-2024  |
| 5   | Implementacja podstawowych funkcjonalności         | 5 tygodni   | 09-06-2024  | 14-07-2024  |
| 6   | Testowanie i poprawki funkcjonalności bazowych     | 3 tygodnie  | 14-07-2024  | 04-08-2024  |
| 7   | Opracowanie mechanizmów płatności online          | 4 tygodnie  | 04-08-2024  | 01-09-2024  |
| 8   | Testowanie płatności online i wprowadzenie poprawek| 2 tygodnie  | 01-09-2024  | 15-09-2024  |
| 9   | Implementacja systemu zarządzania zamówieniami     | 6 tygodni   | 15-09-2024  | 27-10-2024  |
| 10  | Testowanie systemu zarządzania zamówieniami        | 4 tygodnie  | 27-10-2024  | 24-11-2024  |
| 11  | Integracja systemu z bazą danych sklepu            | 3 tygodnie  | 24-11-2024  | 15-12-2024  |
| 12  | Testy integracyjne i ostateczne poprawki           | 2 tygodnie  | 15-12-2024  | 29-12-2024  |
| 13  | Uruchomienie systemu na serwerze produkcyjnym     | 1 tydzień   | 29-12-2024  | 05-01-2025  |

--- 

# Ocena zgodności wykonanych prac z wizją systemu i specyfikacji wymagań

Dotychczasowe postępy w realizacji projektu są zadowalające. Obserwujemy istotne osiągnięcia zgodne z naszą pierwotną wizją systemu zarządzania sklepem. Niemniej jednak, po dokładniejszej analizie, zauważamy potrzebę rozszerzenia zespołu o drugiego testera. Taki krok pozwoli nam skuteczniej i dogłębniej testować aplikację, zwłaszcza w kontekście weryfikacji i eliminacji błędów powstałych w trakcie implementacji poszczególnych funkcjonalności.

Dodatkowe zatrudnienie będzie miało pozytywny wpływ na jakość aplikacji, umożliwiając wykrywanie i naprawę potencjalnych problemów. Jednakże, ze względu na potrzebę lepszej kontroli jakości oraz zapewnienie optymalnego działania, istnieje możliwość niewielkiego wydłużenia terminu dostarczenia o około dwa tygodnie. To pozwoli nam na dogłębne testowanie i eliminowanie ewentualnych niedociągnięć, co przyczyni się do lepszego odbioru aplikacji przez użytkowników.