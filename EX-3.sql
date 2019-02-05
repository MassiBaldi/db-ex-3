Seleziona tutti gli ospiti che sono stati identificati con la carta di identità
SELECT * FROM `ospiti` WHERE `document_type` = 'CI'

Seleziona tutti gli ospiti che sono nati dopo il 1988
SELECT * FROM `ospiti` WHERE `date_of_birth` > '1988'

Seleziona tutti gli ospiti che hanno più di 20 anni (al momento dell’esecuzione della query)
SELECT * FROM `ospiti` WHERE `date_of_birth` <= '1999-02-05'

Seleziona tutti gli ospiti il cui nome inizia con la D
SELECT * FROM `ospiti` WHERE `name` LIKE 'D%'

Calcola il totale degli ordini accepted
SELECT COUNT(`status`) FROM `pagamenti` WHERE `status` = 'accepted'

Qual è il prezzo massimo pagato?
SELECT Max(`price`) FROM `pagamenti`

Seleziona gli ospiti riconosciuti con patente e nati nel 1975
SELECT * FROM `ospiti` WHERE `document_type` = 'Driver License' AND YEAR(`date_of_birth`) = '1975'

Quanti paganti sono anche ospiti?
SELECT COUNT(`ospite_id`) FROM `paganti` WHERE `ospite_id` IS NOT NULL

Quanti posti letto ha l’hotel in totale?
SELECT SUM(`beds`) FROM `stanze`

Le stanze sono state tutte prenotate almeno una volta?
SELECT COUNT(ID) AS 'Prenotazioni per Stanza', stanza_id AS 'Stanza' FROM prenotazioni GROUP BY stanza_id

Group by

Conta gli ospiti raggruppandoli per anno di nascita
SELECT COUNT(ID) AS 'Numero Ospiti', YEAR(`date_of_birth`) AS 'Anno nascita' FROM `ospiti` GROUP BY YEAR(`date_of_birth`)

Conta quante volte è stata prenotata ogni stanza
SELECT COUNT(ID) AS `prenotazioni per stanza`, `stanza_id` AS `numero stanza` FROM `prenotazioni` GROUP BY `stanza_id`

Fai una analisi per vedere se ci sono ore in cui le prenotazioni sono più frequenti
SELECT COUNT(ID) AS 'N prenotazioni', HOUR(created_at) AS 'ora prenotazione' FROM prenotazioni GROUP BY HOUR(created_at)

Quante prenotazioni ha fatto l’ospite che ha fatto più prenotazioni?
