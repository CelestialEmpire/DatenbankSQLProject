---Anzeige von Allen Tieren von Besitzer
select b.name as NameBesitzer, b.vorname as VornameBesitzer, t.name as NameTier, t.geschlecht, r.rasse from Tier as t
join besitzer as b on b.Besitzer_ID = t.Besitzer_ID
join Rasse as r on r.Rasse_ID = t.Rasse_ID
where b.name = 'streit'

---Krankheitsgeschichte zu dem Tier
select p.Name as NamePersonal, p.vorname as VornamePersonal, ti.Name as NameTier, t.Datum, mt.Name as NameMedikament_Termin, t.Bemerkung , m.Name as NameMedikament_Behandlung, b.Dauer, b.AbschlussBemerkung, b.Gewicht from Termin as t
join Behandlung as b on b.Termin_ID = t.Termin_ID
join Personal as p on p.Personal_ID = b.Personal_ID
join medikament as mt on mt.Medikament_ID = t.Medikament_ID
join Medikament as m on m.Medikament_ID = b.Medikament_ID
join tier as ti on ti.Tier_ID = t.Tier_ID
where ti.Name = 'cheese'

---Am meisten verabreichten Medikamente und Impfungen
select m.Name, count(b.medikament_id) as anzahl from Medikament as m
join Behandlung as b on b.Medikament_ID = m.Medikament_ID 
group by m.Name order by anzahl desc

---Statisktik Tiere Gruppen
select ta.Tierart, count(t.tier_id) as Anzahl, (sum(b.gewicht)/count(b.gewicht)) as Gewicht from Tier as t
join Rasse as r on r.Rasse_ID = t.Rasse_ID
join Tierart as ta on ta.Tierart_ID = r.Tierart_ID
join Termin as te on te.Tier_ID = t.Tier_ID
join Behandlung as b on b.Termin_ID = te.Termin_ID
group by tierart

