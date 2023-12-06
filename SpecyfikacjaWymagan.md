# Specyfikacja Wymagań
### a. Historyjki użytkownika

1. **Zarządzanie Produktami**
   - Jako *administrator sklepu* chcę *dodawać, edytować i usuwać produkty* w sklepie, aby *aktualizować ofertę*.
   - Jako *administrator sklepu* chcę *zarządzać cenami i stanem magazynowym* produktów, aby *śledzić dostępność*.

2. **Zamówienia i Płatności**
   - Jako *klient* chcę *składać zamówienia online*, aby *bezproblemowo dokonywać zakupów*.
   - Jako *klient* chcę *wybierać różne formy płatności elektronicznych*, aby *dostosować płatność do swoich preferencji*.

3. **Generowanie Faktur**
   - Jako *klient* chcę *otrzymywać faktury* zawierające niezbędne informacje, aby *potwierdzić zakupione produkty*.
   - Jako *administrator* chcę generować faktury które umożliwią odpisanie rozliczanie podatków.

4. **Promocje i Kody Rabatowe**
   - Jako *administrator sklepu* chcę *tworzyć i zarządzać promocjami*, aby *stymulować sprzedaż*.
   - Jako *klient* chcę *korzystać z kodów rabatowych*, aby *otrzymywać zniżki na zakupy*.

### b. Wymagania Funkcjonalne

- **Zarządzanie Produktami**
  - Dodawanie, edycja, usuwanie produktów.
  - Zarządzanie cenami i stanem magazynowym.

- **Zamówienia i Płatności**
  - Przyjmowanie zamówień online.
  - Obsługa płatności elektronicznych.
  - Generowanie faktur.

- **Generowanie Faktur**
  - Automatyczne generowanie faktur dla każdego złożonego zamówienia.
  - Faktury powinny zawierać niezbędne informacje, takie jak numer zamówienia, dane klienta (imię, nazwisko lub NIP), adres dostawy, szczegóły zamówionych produktów, suma do zapłaty itp.
  - Możliwość przeglądania i pobierania wygenerowanych faktur z poziomu konta klienta.

- **Promocje i Kody Rabatowe**
  - Tworzenie i zarządzanie promocjami.
  - Obsługa kodów rabatowych.

### c. Wymagania Niefunkcjonalne

1. **Wydajność**
   - System powinien obsługiwać jednocześnie co najmniej 1000 aktywnych użytkowników.
   - Weryfikacja: Przeprowadzenie testów obciążeniowych potwierdzających stabilną wydajność systemu przy równoczesnym korzystaniu z niego przez 1000 użytkowników.

2. **Bezpieczeństwo**
   - Wymagane jest szyfrowanie danych klientów i transakcji.
   - Weryfikacja: Przeprowadzenie audytu bezpieczeństwa potwierdzającego zastosowanie odpowiednich protokołów szyfrowania i zabezpieczeń.

3. **Dostępność**
   - System powinien być dostępny przez minimum 99% czasu w miesiącu.
   - Weryfikacja: Monitorowanie dostępności systemu za pomocą narzędzi do monitoringu oraz regularne testy dostępności.
