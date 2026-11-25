// Editorial rule for the entire CV:
// Maximize information density: every word and syllable must add a relevant signal.
// Each statement should communicate at least one of: outcome, scale, recognizable
// reference, ownership, or relevant method. Prefer Google XYZ phrasing: lead with
// impact, quantify it where possible, then state how it was achieved. Remove filler,
// defensive qualifiers, generic duties, and duplicated meaning. Write concisely and
// confidently without inventing facts; selective emphasis and compression are expected.
// Every bullet must remain exactly one rendered line and use 80–100% of the
// available line width; add signal, never filler, when a bullet is too short.
// If verified content cannot fill that range, identify the missing dimension
// (outcome, metric, scope, reference, ownership, or method) and ask for the
// relevant fact instead of padding or weakening the wording.

#import "../../shared/styles/document.typ": *
#import "../../shared/components/header.typ": application-header
#show: document-style.with(locale: "de-ch")

// Page count is selected at compile time: 2 = core, 3 = projects, 4 = competencies.
#let cv-pages = int(sys.inputs.at("cv-pages", default: "4"))
#assert(cv-pages >= 2 and cv-pages <= 4, message: "cv-pages must be 2, 3, or 4")

#let brand(body) = box(body)
#let cv-header() = application-header(locale: "de-ch")
#let cv-pagebreak() = [
  #pagebreak()
  #cv-header()
]

#cv-header()

#v(13.125pt)
#block(breakable: false)[
  #block(above: 0pt, below: 0pt)[
    #set par(spacing: 0pt)
    #text(size: 12pt, weight: "bold", upper[Summary])
    #v(4.41pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]
  #v(7.35pt)
  #set par(justify: true)
  Mittelstandsmandate verbinden Finanzen, Betrieb und Technologie. Ich vereine Portfolioanalyse, Corporate Finance und Transformation mit praktischer Cloud-/KI-Umsetzung. Bei #brand[CENVION] führte ich GenAI mit #brand[Claude] in Portfolioanalyse und Reporting ein; bei #brand[Swisscom] und #brand[Airbus] übersetzte ich technische und datenbasierte Analysen in klare Entscheidungen. M&A, Banking und mein Beratungsgeschäft ergänzen diese Perspektive. Damit unterstütze ich #brand[Leverage Experts] pragmatisch in Performance-, Portfolio- und Transformationsmandaten.
]

#v(13.125pt)
#block(breakable: false)[
  #block(above: 0pt, below: 0pt)[
    #set par(spacing: 0pt)
    #text(size: 12pt, weight: "bold", upper[Erfahrung])
    #v(4.41pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]
  #v(7.35pt)
  #cv-h[Infrastructure Investments & Asset Management: #brand[CENVION]]
  #v(6.3pt)
  #cv-s[Associate Intern | Infrastructure Investing Team · Jan 2026 – Mär 2026 (plus freie Mitarbeit) · Wollerau (CH)]
  #v(7.35pt)
  #cv-b[#brand[Claude] für Investment Reporting eingeführt; GenAI in Analyse- und Berichtsworkflows des Teams integriert]
  #v(8.4pt)
  #cv-b[KI-Suche (RAG) über Projekt- und Portfoliodaten entwickelt; internes Wissen strukturiert nutzbar gemacht]
  #v(8.4pt)
  #cv-b[Excel-Projektfinanzierungsmodelle erstellt; Cashflows, Renditen und Finanzierungsszenarien analysiert]
  #v(10.5pt)
  #cv-h[Cloud Strategy & Transformation: #brand[Swisscom Financial Services]]
  #v(6.3pt)
  #cv-s[Executive Assistant | Consultant für B2B & Infrastruktur · Jun 2024 – Mär 2025 · Bern + Zürich]
  #v(7.35pt)
  #cv-b[Achtstellige Infrastrukturinvestitionen im SteerCo präsentiert; Optionen mit Senior Stakeholdern diskutiert]
  #v(8.4pt)
  #cv-b[Lieferantenverhandlungen über CHF 10 Mio. begleitet; sofort CHF 100k+ Einsparpotenzial identifiziert]
  #v(8.4pt)
  #cv-b[Cloud-Ökonomie und 2× Rechendichte unter DC-Limits modelliert; für TOM-Workstream ausgewählt]
  #v(10.5pt)
  #cv-h[AI Engineering: #brand[AIRBUS Defence & Space]]
  #v(6.3pt)
  #cv-s[Risk & Compliance Analyst (KI-gestützt) | Masterarbeit · Jul 2023 – Mär 2024 · Ingolstadt]
  #v(7.35pt)
  #cv-b[Sicherheitskritische Daten aus 20+ Jahren per ML ausgewertet und für Risiko- und Kostenanalysen nutzbar gemacht]
  #v(8.4pt)
  #cv-b[Einzelcase: Sechsstelliges Einsparpotenzial p. a.; standortübergreifende achtstellige Investition ausgelöst]
  #v(8.4pt)
  #cv-b[KI-Pilot von Grund auf für 3 Fachbereiche entwickelt; Stakeholder mit Business Case überzeugt]
  #v(10.5pt)
  #cv-h[M&A & Corporate Finance: #brand[COVENDIT]]
  #v(6.3pt)
  #cv-s[Investment Banking Analyst | Werkstudent · Apr 2022 – Jun 2022 · Frankfurt]
  #v(7.35pt)
  #cv-b[Live Buy-/Sell-Side-M&A-Mandate begleitet; DCF-/Multiples-Excel-Modelle, Teaser und IMs erstellt]
  #v(8.4pt)
  #cv-b[KI-Longlisting vor ChatGPT entwickelt; Target-Screening automatisiert, Recherchezeit 80 % reduziert]
  #v(8.4pt)
  #cv-b[PE-Kunden zu Targets beraten; Retainer gewonnen und Rückkehrangebot auf Associate-Level erhalten]
  #v(10.5pt)
  #cv-h[Strategie- & Technologieberatung: #brand[NEXGEN Business Consultants]]
  #v(6.3pt)
  #cv-s[Junior Consultant | Werkstudent · Apr 2022 – Jun 2022 · Frankfurt]
  #v(7.35pt)
  #cv-b[BAIT/MaRisk für T+1-Settlement in Cloud-Migrationsleitfaden für Tier-1-Banking-IT übersetzt]
  #v(8.4pt)
  #cv-b[ETL-Engpass diagnostiziert; Verarbeitungszeit um 99 % von 24 h auf 15 min reduziert]
  #v(8.4pt)
  #cv-b[Regulatorik- und IT-Analysen für Fachbeiträge und Kundenpitches aufbereitet; Mandatsakquise unterstützt]
  #v(10.5pt)
  #cv-h[Selbstständige Beratungstätigkeit: #brand[A Softer Space & Corbet Consulting]]
  #v(6.3pt)
  #cv-s[Head of Business Development | Management Consultant · Jan 2018 – Jun 2023 · CH, DE, IS, UK]
  #v(7.35pt)
  #cv-b[Über Trusted-Advisor-Vertrieb auf mittleren sechsstelligen Umsatz in vier europäischen Märkten skaliert]
  #v(8.4pt)
  #cv-b[Management-/IT-Mandate zu Leadership, Prozessen, Cloud und DLT von Analyse bis Umsetzung geführt]
  #v(8.4pt)
  #cv-b[Projekt-P&L ganzheitlich gesteuert: Akquise, Angebote, Pricing, Verträge, Budgets, Margen und Cashflow]
  #v(10.5pt)
  #cv-h[Studentische Unternehmens- und Innovationsberatung (Pro-Bono & For-Profit)]
  #v(6.3pt)
  #cv-s[GREEN Finance Consulting (BDSU) | Enactus | AIESEC · 2016 – 2023 · je 2 Semester · Frankfurt]
  #v(7.35pt)
  #cv-b[GREEN: Stipendienabwicklung auf 10x Kapazität skaliert; Datenbanksystem gemeinsam mit Roland Berger entwickelt]
  #v(8.4pt)
  #cv-b[ENACTUS X: Social Venture für Wohnungslose mitaufgebaut; Jobs geschaffen und Medienresonanz erzielt]
  #v(8.4pt)
  #cv-b[AIESEC: International Placements mit DAX-Unternehmen koordiniert; Digitalisierung Talent-Team (CRM)]
  #v(10.5pt)
  #cv-h[Lehre, Marktforschung & frühes Unternehmertum]
  #v(6.3pt)
  #cv-s[Goethe-Universität Frankfurt | mehrere Arbeitgeber | selbstständig · Frankfurt]
  #v(7.35pt)
  #cv-b[Tutor (für 3 Jahre gewählt) & Nachhilfe: Angewandte Statistik (SPSS, Python, R) & Mathematik)]
  #v(8.4pt)
  #cv-b[Marktforschung: 50+ CEOs interviewt und 1.000+ Gespräche analysiert, Auswertungen & Dashboards]
  #v(8.4pt)
  #cv-b[Online & Offlinevertrieb: Hardware und IT-Dienstleistungen, Hotel-TVs, Second-Hand-eBay-Reseller]
]

#cv-pagebreak()

#v(13.125pt)
#block(breakable: false)[
  #block(above: 0pt, below: 0pt)[
    #set par(spacing: 0pt)
    #text(size: 12pt, weight: "bold", upper[Bildung])
    #v(4.41pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]
  #v(7.35pt)
  #cv-hu[Stipendien: *Studienstiftung (Top 1%) | CDI (Top 4%, vollfinanziert) | Sandvoss (MSc & BSc)*]
  #v(10.5pt)
  #cv-h[Executive Education]
  #v(6.3pt)
  #cv-s[CDI Paris – München – Turin · 2024 – 2025 · Notenschnitt: A (GPA 4.0)]
  #v(7.35pt)
  #cv-b[Summer School: #brand[Schwarz Digits] als Junior Consultant zum EU AI Act beraten; Implikationen bewertet]
  #v(8.4pt)
  #cv-b[Case Studies: Projektfinanzierung (NPV/ROI), Szenarioanalyse & Kapitalallokation unter Unsicherheit]
  #v(10.5pt)
  #cv-h[B.Sc. & M.Sc. Physik]
  #v(6.3pt)
  #cv-s[Goethe-Universität Frankfurt · Abschluss 2024 · Note: 1,0 (DE) | 6,0 (CH) | GPA 4.0 · Angewandte Physik]
  #v(7.35pt)
  #cv-b[Schwerpunkte: KI/ML (1,0), Elektronik (1,3), Biophysik (1,3), Chemie (1,0) und High-Tech-IP (1,15)]
  #v(8.4pt)
  #cv-b[Forschung: Nahinfrarotspektroskopie, Terahertz-Bildgebung und Beschleunigerphysik (LINAC)]
  #v(10.5pt)
  #cv-h[B.Sc. Psychologie]
  #v(6.3pt)
  #cv-s[Goethe-Universität Frankfurt · Abschluss 2017 · Note: 1,6 (DE) | 5,6 (CH) | GPA 3.7 · Organisationspsychologie]
  #v(7.35pt)
  #cv-b[Schwerpunkte: KI/ML & Neurowissenschaften, Klinische/Organisationspsychologie (1,0), AR/VR-Trainings]
  #v(8.4pt)
  #cv-b[Forschung: #brand[FIAS] (9 Mon.): Stereosehen & neuronale Abstimmung mit ML; quantitative Empathiemessung]
  #v(10.5pt)
  #cv-hu[Matura (Abitur): *1,0 (DE) | 6,0 (CH) · Jahrgangsbester · Mathe-Olympiade · Schülerakademie*]
]

#v(13.125pt)
#block(breakable: false)[
  #block(above: 0pt, below: 0pt)[
    #set par(spacing: 0pt)
    #text(size: 12pt, weight: "bold", upper[Professional Development])
    #v(4.41pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]
  #v(7.35pt)
  #cv-h[Zertifikate & Weiterbildung]
  #v(6.3pt)
  #cv-s[Kontinuierliche Weiterbildung entlang aktueller Standards und Best Practices]
  #v(7.35pt)
  #cv-b[CFI-Zertifikate (ongoing): BIDA, CBCA, CMSA und FMVA; Trainings zu Excel (VBA), BI (Power BI, Tableau)]
  #v(8.4pt)
  #cv-b[Produktivität & Wirkung: GenAI & Automatisierung; Rhetorik, Verhandlung, Leadership & Kommunikation]
  #v(10.5pt)
  #cv-h[Consulting- & Finance-Netzwerke]
  #v(6.3pt)
  #cv-s[Marktnähe durch laufenden Austausch mit Praktikern und erfahrenen Sparringspartnern]
  #v(7.35pt)
  #cv-b[Im Studium: Bain Spark, BCG Emeralds und WFI Consulting Cup; BDSU- und Studienstiftung-Alumnus]
  #v(8.4pt)
  #cv-b[SECA Young Member; vernetzt mit Praktikern aus Schweizer PE, VC und Corporate Development]
  #v(10.5pt)
  #cv-h[Tech-Communities & Konferenzen]
  #v(6.3pt)
  #cv-s[Am Puls neuer Technologien, Werkzeuge und praktischer Anwendungen]
  #v(7.35pt)
  #cv-b[Swiss Python Summit & Web Zurich (2025) mitorganisiert; AV-Betrieb und Sprecherkoordination]
  #v(8.4pt)
  #cv-b[Digitale Gesellschaft, LUG, digitalswitzerland und Impact Hub; Praxisfokus GenAI & Digitale Souveränität]
]

#v(13.125pt)
#block(breakable: false)[
  #block(above: 0pt, below: 0pt)[
    #set par(spacing: 0pt)
    #text(size: 12pt, weight: "bold", upper[Engagement])
    #v(4.41pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]
  #v(7.35pt)
  #cv-h[Harm Reduction & Krisenunterstützung ]
  #v(6.3pt)
  #cv-s[Krisenintervention & Akuthilfe]
  #v(7.35pt)
  #cv-b[Mehrfach lebensrettend eingegriffen; Ersthilfe geleistet und Übergabe and Rettungskräfte sichergestellt]
  #v(8.4pt)
  #cv-b[Akute psychosoziale Krisen deeskaliert; Betroffene stabilisiert, orientiert und an Fachstellen vermittelt]
  #v(10.5pt)
  #cv-h[Beratung, Mentoring & Fachschaft]
  #v(6.3pt)
  #cv-s[Frühe digitale Jugendberatung & fachübergreifender Wissenstransfer]
  #v(7.35pt)
  #cv-b[Als einer von wenigen Männern bei Kids Hotline zu Identität, Körperbild & Selbstzweifeln beraten]
  #v(8.4pt)
  #cv-b[Psychologie-Mentoring für alle Jahrgänge mitentwickelt; Fachschaft Physik & Night of Science unterstützt]
]

#v(13.125pt)
#block(breakable: false)[
  #block(above: 0pt, below: 0pt)[
    #set par(spacing: 0pt)
    #text(size: 12pt, weight: "bold", upper[Persönliches])
    #v(4.41pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]
  #v(7.35pt)
  #cv-h[Bildungsaufstieg & Verantwortung]
  #v(6.3pt)
  #cv-s[First Generation Academic · Bezugsperson für Geschwister (6 | 12 Jahre Altersunterschied) · Pflegezeit 2025]
  #v(7.35pt)
  #cv-b[Geschwister persönlich & finanziell unterstützt bei Abitur (1,0), Medizinstudium & Unternehmensgründung]
  #v(8.4pt)
  #cv-b[Pflegezeit 2025: Versorgung, Finanzierung und Langzeitpflege meiner Mutter organisiert]
  #v(10.5pt)
  #cv-h[Teilen & Mitgestalten]
  #v(6.3pt)
  #cv-s[Interkulturelles Zusammenleben · internationale Zusammenarbeit an Open-Source-Projekten]
  #v(7.35pt)
  #cv-b[Mit 20+ Menschen aus 10+ Ländern zusammengelebt; interkulturellen Austausch aktiv gestaltet]
  #v(8.4pt)
  #cv-b[50+ FOSS-Projekte veröffentlicht; Contributions zu mehreren FOSS-Projekten, zuletzt oo7 (Cybersecurity)]
]

#if cv-pages >= 3 [
  #cv-pagebreak()

#v(13.125pt)
#block(breakable: false)[
  #block(above: 0pt, below: 0pt)[
    #set par(spacing: 0pt)
    // Recent Projects
    #text(size: 12pt, weight: "bold", upper[Laufende Projekte])
    #v(4.41pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]
  #v(7.35pt)
  #cv-h[Incident Recovery & Cloud-Migration]
  #v(6.3pt)
  #cv-s[Solar-KMU · 2022]
  #v(7.35pt)
  #cv-b[Abgestürztes Kernsystem am ersten Tag wiederhergestellt; Felddienst und Vertrieb bis Ablösung gesichert]
  #v(8.4pt)
  #cv-b[Cloud-Migrationsoptionen bewertet; sechs- bis siebenstellige Fehlinvestition vermieden]
  #v(10.5pt)
  #cv-h[Digitaler Pivot zu hybridem Delivery]
  #v(6.3pt)
  #cv-s[Leadership Advisory Brand · 2022]
  #v(7.35pt)
  #cv-b[Digitale Delivery-Infrastruktur aufgebaut; On-Demand-Content als Alternative zu blockierten Seminaren]
  #v(8.4pt)
  #cv-b[Kundenpainpoints erfasst und Marketing-Funnel verbessert; Umsatz über hybrides Delivery diversifiziert]
  #v(10.5pt)
  #cv-h[Krypto-Infrastruktur-Beratung]
  #v(6.3pt)
  #cv-s[Mehrere Kunden · 2021]
  #v(7.35pt)
  #cv-b[Krypto-Pilot und Betriebsmodell dimensioniert und kalkuliert; Beschaffungs- und Betriebsrisiken gesteuert]
  #v(8.4pt)
  #cv-b[Überwachten, stabilen Mining-Betrieb termingerecht geliefert; Hashrate via Custom-Firmware optimiert]
  #v(10.5pt)
  #cv-h[Führungskräfte-Coaching Digitalisierung]
  #v(6.3pt)
  #cv-s[Frankfurt · 2022]
  #v(7.35pt)
  #cv-b[Performance-Leadership-Kurse für Online-Delivery überarbeitet]
  #v(8.4pt)
  #cv-b[Inhalte bei der Haufe Akademie platziert]
  #v(10.5pt)
  #cv-h[CareerVector (KI-Jobtracker)]
  #v(6.3pt)
  #cv-s[Eigenprojekt · seit 2025]
  #v(7.35pt)
  #cv-b[KI-nativen Full-Stack-Jobtracker mit Astro, React und Typst WASM entwickelt]
  #v(8.4pt)
  #cv-b[13+ LLM-Anbieter über Cloudflare Edge integriert]
]

#v(13.125pt)
#block(breakable: false)[
  #block(above: 0pt, below: 0pt)[
    #set par(spacing: 0pt)
    // Selected Projects
    #text(size: 12pt, weight: "bold", upper[Vergangene Projekte])
    #v(4.41pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]
  #v(7.35pt)
  #cv-h[MBI-Versuch indisches IT-Outsourcing]
  #v(6.3pt)
  #cv-s[2022]
  #v(7.35pt)
  #cv-b[Akquisitionsziel identifiziert und Due Diligence durchgeführt]
  #v(8.4pt)
  #cv-b[MBI-Pitch für eine PE-Finanzierung strukturiert]
  #v(10.5pt)
  #cv-h[Personal Cloud Platform (apps.corbet.ch)]
  #v(6.3pt)
  #cv-s[seit 2024]
  #v(7.35pt)
  #cv-b[30+ Dienste und 100+ TB Speicher selbst gehostet]
  #v(8.4pt)
  #cv-b[Lokale LLMs, IdP und agentische KI integriert]
  #v(10.5pt)
  #cv-h[eCommerce-Betrieb (eBay-Wiederverkauf)]
  #v(6.3pt)
  #cv-s[2017 – 2025]
  #v(7.35pt)
  #cv-b[Fünfstelligen eBay-Betrieb mit automatisiertem Listing, Tracking und Logistik geführt]
  #v(8.4pt)
  #cv-b[Mini-ERP eingesetzt; Exit bei 80 % des Buchwerts umgesetzt]
  #v(10.5pt)
  #cv-h[Hardware- & Software-Services (KMU/B2C)]
  #v(6.3pt)
  #cv-s[2009 – 2024]
  #v(7.35pt)
  #cv-b[Profitablen Diagnose-, Custom-Build- und Reparaturservice für KMU und B2C betrieben]
  #v(8.4pt)
  #cv-b[Geschäftskontinuität trotz Umbrüchen gesichert]
  #v(10.5pt)
  #cv-h[Content-Strategie & Medien]
  #v(6.3pt)
  #cv-s[seit 2025]
  #v(7.35pt)
  #cv-b[Blog und Podcast zu KI, Finanzen und Strategie im Aufbau]
  #v(8.4pt)
  #cv-b[AV-Produktion am Swiss Python Summit übernommen]
  #v(10.5pt)
  #cv-h[Investmentportfolio]
  #v(6.3pt)
  #cv-s[seit 2021]
  #v(7.35pt)
  #cv-b[Portfolio über Aktien, Alternatives und Early-Stage-VC diversifiziert]
  #v(8.4pt)
  #cv-b[Value- und Momentum-Ansatz verfolgt]
  ]
]

#if cv-pages >= 4 [
  #cv-pagebreak()

  #v(13.125pt)
  #block(breakable: false)[
  #block(above: 0pt, below: 0pt)[
    #set par(spacing: 0pt)
    #text(size: 12pt, weight: "bold", upper[Kompetenzen])
    #v(4.41pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]
  #v(7.35pt)
  #cv-h[Finanzen]
  #v(7.35pt)
  #cv-b[Corporate Finance: Portfolio- und Kapitalallokationsanalyse; qualitative und quantitative Risikobewertung]
  #v(8.4pt)
  #cv-b[Finanzmodellierung: DCF, Multiples, Vergleichswerte; Szenario- und Sensitivitätsanalyse; EK und FK]
  #v(8.4pt)
  #cv-b[Transaktionen: Origination, Due Diligence und IMs; Strukturierung strategischer Wachstumsinvestitionen]
  #v(10.5pt)
  #cv-h[Strategie]
  #v(7.35pt)
  #cv-b[Führungsmaterialien: Board- und Investmentdecks; Abwägungen und Empfehlungen für Steerings]
  #v(8.4pt)
  #cv-b[Strategische Planung: TOMs, Roadmaps, KPI/OKR; Dashboards für Portfolio-Kadenz und Umsetzung]
  #v(8.4pt)
  #cv-b[Stakeholder-Management: Funktionsübergreifende Abstimmung und Führungserwartungen; termingerecht]
  #v(10.5pt)
  #cv-h[Technologie & KI]
  #v(7.35pt)
  #cv-b[KI-Innovation: On-Premise-, Hybrid- und Cloud-KI-MVPs; Deployment at scale]
  #v(8.4pt)
  #cv-b[Cloud-Exzellenz: Anforderungsanalyse und Prozessdiagnostik; regulatorische Anforderungen in Lösungen]
  #v(8.4pt)
  #cv-b[Quantitativ und Risiko: stochastische Modelle, Optionspreisbildung, VaR und Monte Carlo]
  #v(10.5pt)
  #cv-h[Menschen & Führung]
  #v(7.35pt)
  #cv-b[Coaching und Mentoring: Empathie mit aktiver Befähigung verbunden; Workshops und Resilienzaufbau]
  #v(8.4pt)
  #cv-b[Events und Netzwerk: Funktionsübergreifende Beziehungen in Finanz und IT; Konferenzorganisation]
  #v(8.4pt)
  #cv-b[Thought Leadership: Whitepapers und Vorträge; Medienpräsenz in KI, Finanzen und Strategie im Aufbau]
  #v(13.125pt)
  #block(above: 0pt, below: 0pt)[
    #set par(spacing: 0pt)
    #text(size: 12pt, weight: "bold", upper[Zwischenüberschrift I])
    #v(4.41pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]
  #v(7.35pt)
  #cv-h[Produktivität & Zusammenarbeit]
  #v(7.35pt)
  #cv-b[Microsoft 365: Copilot, Excel und PowerPoint]
  #v(8.4pt)
  #cv-b[Google Workspace]
  #v(8.4pt)
  #cv-b[Jira, Confluence und CRM]
  #v(10.5pt)
  #cv-h[Forschung & Wissenschaft]
  #v(7.35pt)
  #cv-b[Experimentaldesign: Physik-Labormethodik, Hypothesentests, statistische Strenge (SPSS, R, Python)]
  #v(8.4pt)
  #cv-b[Data Engineering: ETL-Pipeline-Design, Datenbereinigung, Korrelationsanalyse, Messdatenbanken]
  #v(8.4pt)
  #cv-b[Wissenschaftliches Schreiben: Zwei Abschlussarbeiten (EN), eine (DE); Peer-Review-Methodik]
  #v(10.5pt)
  #cv-h[Transformation & Befähigung]
  #v(7.35pt)
  #cv-b[Transformation unter Hochdruck mit operativer Kontinuität ausbalanciert]
  #v(8.4pt)
  #cv-b[KI-Kompetenz durch Workshops und praxisnahes Coaching aufgebaut]
  #v(8.4pt)
  #cv-b[BANI-Unsicherheit in wechselnden Organisationskontexten navigiert]
  #v(13.125pt)
  #block(above: 0pt, below: 0pt)[
    #set par(spacing: 0pt)
    #text(size: 12pt, weight: "bold", upper[Zwischenüberschrift II])
    #v(4.41pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]
  #v(7.35pt)
  #cv-h[Analytics & Daten]
  #v(7.35pt)
  #cv-b[Fortgeschrittenes Excel (VBA) und Executive Dashboards]
  #v(8.4pt)
  #cv-b[Power BI, Tableau und SQL]
  #v(8.4pt)
  #cv-b[Zeitreihen- und Szenarioanalysen]
  #v(10.5pt)
  #cv-h[KI & Automatisierung]
  #v(7.35pt)
  #cv-b[Python und Java (OOP)]
  #v(8.4pt)
  #cv-b[GenAI-Tooling mit Claude Code und Copilot]
  #v(8.4pt)
  #cv-b[n8n-Automatisierung und Reporting-Pipelines]
  #v(10.5pt)
  #cv-h[Kommunikation & Verhandlung]
  #v(7.35pt)
  #cv-b[Rhetorik und Verhandlung für klare Auftritte]
  #v(8.4pt)
  #cv-b[Performance Leadership, PR und Medienarbeit]
  #v(8.4pt)
  #cv-b[Krisenkommunikation für IT- und organisatorische Veränderungsprozesse]
  ]
]
