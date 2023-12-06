**1. Zarządzanie Produktami:**

a. **Dodawanie Nowego Produktu:**
   1. Administrator loguje się do panelu zarządzania sklepem.
   2. Wybiera opcję "Dodaj nowy produkt".
   3. Wprowadza nazwę, opis, zdjęcie, cenę, ilość i inne szczegóły produktu.
   4. Zapisuje zmiany, co powoduje dodanie produktu do oferty sklepu.

b. **Edycja Istniejącego Produktu:**
   1. Administrator loguje się do panelu zarządzania sklepem.
   2. Wybiera opcję "Edytuj produkty".
   3. Wybiera produkt, którego chce edytować.
   4. Wprowadza nowe dane produktu.
   5. Zapisuje zmiany, co aktualizuje informacje o produkcie.

c. **Usuwanie Produktu:**
   1. Administrator loguje się do panelu zarządzania sklepem.
   2. Wybiera opcję "Edytuj produkty".
   3. Wybiera produkt, który chce usunąć.
   4. Potwierdza decyzję o usunięciu produktu.

d. **Zarządzanie Cenami i Stanem Magazynowym:**
   1. Administrator loguje się do panelu zarządzania sklepem.
   2. Wybiera opcję "Zarządzaj cenami i stanem magazynowym".
   3. Aktualizuje ceny i ilość produktów w magazynie.
   4. Zapisuje zmiany, co aktualizuje informacje na stronie sklepu.

**2. Zamówienia i Płatności:**

a. **Składanie Zamówienia Online:**
   1. Klient przegląda ofertę sklepu.
   2. Dodaje produkty do koszyka.
   3. Przechodzi do opcji "Złóż zamówienie".
   4. Wprowadza dane dostawy i płatności.
   5. Potwierdza zamówienie, co generuje potwierdzenie zamówienia.

b. **Obsługa Płatności Elektronicznych:**
   1. Klient wybiera formę płatności podczas składania zamówienia.
   2. Wprowadza dane karty, informacje o przelewie lub korzysta z systemu płatności elektronicznych.
   3. System przetwarza płatność, a klient otrzymuje potwierdzenie.

**3. Generowanie Faktur:**

a. **Automatyczne Generowanie Faktur:**
   1. System automatycznie generuje fakturę po złożeniu zamówienia.
   2. Faktura zawiera numer zamówienia, dane klienta, adres dostawy, szczegóły produktów i sumę do zapłaty.
   3. Faktura jest dostępna do przeglądania i pobierania z panelu klienta.

b. **Generowanie Faktur Przez Administratora:**
   1. Administrator loguje się do panelu zarządzania sklepem.
   2. Wybiera opcję "Generuj faktury".
   3. Wybiera zakres czasowy lub konkretne zamówienia do rozliczenia.
   4. System generuje faktury dla wybranych zamówień.

**4. Promocje i Kody Rabatowe:**

a. **Tworzenie Nowych Promocji:**
   1. Administrator loguje się do panelu zarządzania sklepem.
   2. Wybiera opcję "Twórz nową promocję".
   3. Wprowadza szczegóły promocji, takie jak zniżka procentowa czy darmowa wysyłka.
   4. Zapisuje promocję, co sprawia, że jest ona widoczna dla klientów.

b. **Korzystanie z Kodów Rabatowych:**
   1. Klient otrzymuje kod rabatowy (np. z newslettera).
   2. Podczas składania zamówienia, wpisuje kod rabatowy w odpowiednim polu.
   3. System oblicza zniżkę, a klient widzi nową sumę do zapłaty.



-------------------------------------------

**4. Zaprojektowanie Architektury Systemu:**

Aplikacja sklepu internetowego zostanie zaimplementowana w języku programowania Java, korzystając z frameworka Spring oraz narzędzi programistycznych, takich jak IntelliJ IDEA. Frontend sklepu będzie oparty na technologii Angular, umożliwiającej tworzenie responsywnego interfejsu użytkownika dostępnego na różnych urządzeniach. Komunikacja między frontendem a backendem będzie realizowana poprzez zdefiniowane interfejsy API RESTful.

Backend sklepu będzie odpowiedzialny za zarządzanie produktami, obsługę zamówień, płatności oraz generowanie faktur. System zarządzania bazą danych oparty będzie na relacyjnej bazie danych MySQL, umożliwiającej efektywne przechowywanie i szybki dostęp do danych.

Aby zabezpieczyć system przed atakami i utratą danych, zostaną zaimplementowane mechanizmy uwierzytelniania i autoryzacji, a dane klientów będą przechowywane zgodnie z aktualnymi standardami bezpieczeństwa. Dodatkowo, wdrożone będą regularne audyty bezpieczeństwa w celu monitorowania i zabezpieczania systemu przed potencjalnymi zagrożeniami.

W celu zautomatyzowania procesu wdrażania zmian i testowania, skorzystamy z narzędzi CI/CD (Continuous Integration/Continuous Deployment), takich jak Jenkins lub GitHub CI. Każdy nowy Pull Request będzie automatycznie testowany, a po zatwierdzeniu zmiany będą wdrażane na serwerze produkcyjnym.

Poniżej przedstawiony jest schematyczny diagram bazy danych, ukazujący strukturę relacyjną pomiędzy głównymi encjami, takimi jak Produkt, Zamówienie, Klient oraz Promocja.

![BazaDanychOpaque](BazaDanychOpaque.png)

**5. Czynności i Zadania Uzupełniające:**

a. **Omówienie Interfejsów z Innymi Systemami:**
   - Integracja z systemami płatności online, np. PayPal, Stripe.
   - Współpraca z firmami kurierskimi do śledzenia dostaw.
   - Integracja z systemami CRM (Customer Relationship Management) dla efektywnego zarządzania relacjami z klientami.

b. **Sporządzenie Modelu Konceptualnego Rzeczywistości:**
   - Identyfikacja głównych aktorów: administrator, klient, system płatności, system dostaw.
   - Określenie podstawowych encji, takich jak Produkt, Zamówienie, Klient, Promocja.
   - Ustalenie relacji między encjami, np. Klient składa Zamówienie, Produkt może być przypisany do Promocji.

c. **Sporządzenie Schematu Bazy Danych:**
   - Tworzenie tabel dla każdej głównej encji, definiowanie kluczy głównych i obcych.
   - Określenie typów danych, indeksów, ograniczeń integralności danych.
   - Ustalanie relacji między tabelami, np. klucz obcy Klienta w tabeli Zamówień.

**6. Przedstawienie Głównych Zasad Kodowania:**
   - Ustalenie jednolitych konwencji nazewniczych.
   - Zastosowanie sprawdzania poprawności kodu za pomocą narzędzi, np. linters.
   - Regularne przeglądy kodu oraz udokumentowanie istotnych fragmentów.

**7. Zidentyfikowanie Zagrożeń i Opracowanie Zasad Zarządzania Ryzykiem:**
   - Zagrożenia bezpieczeństwa, takie jak ataki typu SQL injection, cross-site scripting.
   - Ryzyko związane z integralnością danych i utratą informacji.
   - Planowanie regularnych audytów bezpieczeństwa, stosowanie zabezpieczeń na różnych warstwach aplikacji.

**8. Ocena Zgodności Wykonanych Prac z Wizją i Założeniami:**
   - Analiza, czy implementacja spełnia założenia przedstawione w tablicy koncepcyjnej.
   - Porównanie wyników z założeniami specyfikacji wymagań.
   - Weryfikacja, czy system jest zgodny z ogólną wizją biznesową i oczekiwaniami klienta.
