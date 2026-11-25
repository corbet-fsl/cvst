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
#show: document-style.with(locale: "en-ch")

// Page count is selected at compile time: 2 = core, 3 = projects, 4 = competencies.
#let cv-pages = int(sys.inputs.at("cv-pages", default: "4"))
#assert(cv-pages >= 2 and cv-pages <= 4, message: "cv-pages must be 2, 3, or 4")

#let brand(body) = box(body)
#let cv-header() = application-header(locale: "en-ch")
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
  Mid-market engagements connect finance, operations and technology. I combine portfolio analysis, corporate finance and transformation with hands-on cloud and AI delivery. At #brand[CENVION], I introduced #brand[Claude]-powered GenAI into portfolio analysis and reporting; at #brand[Swisscom] and #brand[Airbus], I translated technical and data-driven analyses into clear decisions. M&A, banking and my consulting business complete this perspective. This enables me to support #brand[Leverage Experts] pragmatically across performance, portfolio and transformation engagements.
]

#v(13.125pt)
#block(breakable: false)[
  #block(above: 0pt, below: 0pt)[
    #set par(spacing: 0pt)
    #text(size: 12pt, weight: "bold", upper[Experience])
    #v(4.41pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]
  #v(7.35pt)
  #cv-h[Infrastructure Investments & Asset Management: #brand[CENVION]]
  #v(6.3pt)
  #cv-s[Associate Intern | Infrastructure Investing Team · Jan 2026 – Mar 2026 (plus freelance work) · Wollerau (CH)]
  #v(7.35pt)
  #cv-b[Introduced #brand[Claude] for investment reporting; embedded GenAI in the team's analysis and reporting workflows]
  #v(8.4pt)
  #cv-b[Implemented RAG across unstructured project and portfolio data; made internal knowledge accessible]
  #v(8.4pt)
  #cv-b[Built Excel project-finance models; analysed cash flows, returns and financing scenarios]
  #v(10.5pt)
  #cv-h[Cloud Strategy & Transformation: #brand[Swisscom Financial Services]]
  #v(6.3pt)
  #cv-s[Executive Assistant | Consultant for B2B & Infrastructure · Jun 2024 – Mar 2025 · Bern + Zurich]
  #v(7.35pt)
  #cv-b[Presented eight-figure infrastructure investments in SteerCo; discussed options with senior stakeholders]
  #v(8.4pt)
  #cv-b[Supported CHF 10m+ supplier negotiations; identified CHF 100k+ immediate savings potential]
  #v(8.4pt)
  #cv-b[Modelled cloud economics and 2× compute density under DC limits; requested for TOM workstream]
  #v(10.5pt)
  #cv-h[AI Engineering: #brand[AIRBUS Defence & Space]]
  #v(6.3pt)
  #cv-s[Risk & Compliance Analyst (AI-enabled) | Master's thesis · Jul 2023 – Mar 2024 · Ingolstadt]
  #v(7.35pt)
  #cv-b[Turned 20+ years of safety-critical data into actionable ML-based risk and cost signals]
  #v(8.4pt)
  #cv-b[Single case: quantified six-figure annual savings; triggered eight-figure multi-site investment]
  #v(8.4pt)
  #cv-b[Tailored 0-to-1 AI pilot to three departments' objectives; secured stakeholder buy-in with business case]
  #v(10.5pt)
  #cv-h[M&A & Corporate Finance: #brand[COVENDIT]]
  #v(6.3pt)
  #cv-s[Investment Banking Analyst | Working Student · Apr 2022 – Jun 2022 · Frankfurt]
  #v(7.35pt)
  #cv-b[Supported live buy- and sell-side M&A mandates; built DCF/multiples Excel models, teasers and IMs]
  #v(8.4pt)
  #cv-b[Built AI longlisting before ChatGPT; automated target screening and cut research time by 80%]
  #v(8.4pt)
  #cv-b[Advised PE clients on targets; won a retainer and received an Associate-level return offer]
  #v(10.5pt)
  #cv-h[Strategy & Technology Consulting: #brand[NEXGEN Business Consultants]]
  #v(6.3pt)
  #cv-s[Junior Consultant | Working Student · Apr 2022 – Jun 2022 · Frankfurt]
  #v(7.35pt)
  #cv-b[Translated BAIT/MaRisk for T+1 settlement into cloud migration guidance for Tier-1 banking IT]
  #v(8.4pt)
  #cv-b[Diagnosed ETL bottleneck; cut processing time by 99%, from 24 h to 15 min, for client pitch]
  #v(8.4pt)
  #cv-b[Used regulatory and IT analyses for thought leadership and pitches; supported mandate wins]
  #v(10.5pt)
  #cv-h[Independent Consulting: #brand[A Softer Space & Corbet Consulting]]
  #v(6.3pt)
  #cv-s[Head of Business Development | Management Consultant · Jan 2018 – Jun 2023 · CH, DE, IS, UK]
  #v(7.35pt)
  #cv-b[Scaled trusted-advisor sales to mid-six-figure revenue across four European markets]
  #v(8.4pt)
  #cv-b[Delivered management/IT engagements across leadership, process, cloud and DLT from analysis to delivery]
  #v(8.4pt)
  #cv-b[Managed project P&L end to end: acquisition, proposals, pricing, contracts, budgets, margins and cash flow]
  #v(10.5pt)
  #cv-h[Student Management & Innovation Consulting (Pro Bono & For Profit)]
  #v(6.3pt)
  #cv-s[GREEN Finance Consulting (BDSU) | Enactus | AIESEC · 2016 – 2023 · 2 semesters each · Frankfurt]
  #v(7.35pt)
  #cv-b[GREEN: Scaled scholarship operations to 10× capacity; implemented database system with Roland Berger]
  #v(8.4pt)
  #cv-b[ENACTUS X: Co-built social venture for homeless people; created jobs and generated media coverage]
  #v(8.4pt)
  #cv-b[AIESEC: Coordinated international placements with DAX firms; digitised talent team operations via CRM]
  #v(10.5pt)
  #cv-h[Teaching, Market Research & Early Entrepreneurship (incl.)]
  #v(6.3pt)
  #cv-s[Goethe University Frankfurt | multiple employers | self-employed · Frankfurt]
  #v(7.35pt)
  #cv-b[Elected tutor for three consecutive years & private tutor: applied statistics (SPSS, Python, R) and maths]
  #v(8.4pt)
  #cv-b[Market research: interviewed 50+ CEOs and analysed 1,000+ calls; produced analyses and dashboards]
  #v(8.4pt)
  #cv-b[Online & offline sales: hardware and IT services, hotel TVs and second-hand eBay resale]
]

#cv-pagebreak()

#v(13.125pt)
#block(breakable: false)[
  #block(above: 0pt, below: 0pt)[
    #set par(spacing: 0pt)
    #text(size: 12pt, weight: "bold", upper[Education])
    #v(4.41pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]
  #v(7.35pt)
  #cv-hu[Scholarships: *Studienstiftung (Top 1%) | CDI (Top 4%, fully funded) | Sandvoss (MSc & BSc)*]
  #v(10.5pt)
  #cv-h[Executive Education]
  #v(6.3pt)
  #cv-s[CDI Paris – Munich – Turin · 2024 – 2025 · Average grade: A (GPA 4.0)]
  #v(7.35pt)
  #cv-b[Summer School: Advised #brand[Schwarz Digits] as Junior Consultant on the EU AI Act and its implications]
  #v(8.4pt)
  #cv-b[Case studies: Project finance (NPV/ROI), scenario analysis and capital allocation under uncertainty]
  #v(10.5pt)
  #cv-h[B.Sc. & M.Sc. Physics]
  #v(6.3pt)
  #cv-s[Goethe University Frankfurt · Graduated 2024 · Grade: 1.0 (DE) | 6.0 (CH) | GPA 4.0 · Applied Physics]
  #v(7.35pt)
  #cv-b[Focus: AI/ML (1.0), electronics (1.3), biophysics (1.3), chemistry (1.0) and high-tech IP (1.15)]
  #v(8.4pt)
  #cv-b[Research: Near-infrared spectroscopy, terahertz imaging and accelerator physics (LINAC)]
  #v(10.5pt)
  #cv-h[B.Sc. Psychology]
  #v(6.3pt)
  #cv-s[Goethe University Frankfurt · Graduated 2017 · Grade: 1.6 (DE) | 5.6 (CH) | GPA 3.7 · Organisational Psychology]
  #v(7.35pt)
  #cv-b[Focus: AI/ML & neuroscience, clinical/organisational psychology (1.0) and AR/VR training]
  #v(8.4pt)
  #cv-b[Research: #brand[FIAS] (9 mos.): Modelled stereovision and neural alignment with ML; quantified empathy]
  #v(10.5pt)
  #cv-hu[Matura (Abitur): *1.0 (DE) | 6.0 (CH) · Best student; selected for Maths Olympiad & Student Academy*]
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
  #cv-h[Certifications & Continuing Education]
  #v(6.3pt)
  #cv-s[Continuous development along current standards and best practices]
  #v(7.35pt)
  #cv-b[CFI certifications (ongoing): BIDA, CBCA, CMSA and FMVA; training in Excel (VBA), BI (Power BI, Tableau)]
  #v(8.4pt)
  #cv-b[Productivity & impact: GenAI and automation; rhetoric, negotiation, leadership and communication]
  #v(10.5pt)
  #cv-h[Consulting & Finance Networks]
  #v(6.3pt)
  #cv-s[Market proximity through regular exchange with practitioners and experienced sparring partners]
  #v(7.35pt)
  #cv-b[At university: Bain Spark, BCG Emeralds and WFI Consulting Cup; BDSU and Studienstiftung alumnus]
  #v(8.4pt)
  #cv-b[SECA Young Member; connected with practitioners across Swiss PE, VC and Corporate Development]
  #v(10.5pt)
  #cv-h[Tech Communities & Conferences]
  #v(6.3pt)
  #cv-s[Close to emerging technologies, tools and practical applications]
  #v(7.35pt)
  #cv-b[Co-organised Swiss Python Summit & Web Zurich (2025); AV operations and speaker coordination]
  #v(8.4pt)
  #cv-b[Digitale Gesellschaft, LUG, digitalswitzerland and Impact Hub; focus on GenAI and digital sovereignty]
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
  #cv-h[Crisis Intervention & Emergency Support]
  #v(6.3pt)
  #cv-s[Medical emergencies & psychosocial crises]
  #v(7.35pt)
  #cv-b[Intervened in life-threatening situations multiple times; provided first aid and ensured EMS handover]
  #v(8.4pt)
  #cv-b[De-escalated acute psychosocial crises; stabilised, oriented and referred people to specialist support]
  #v(10.5pt)
  #cv-h[Counselling, Mentoring & Student Representation]
  #v(6.3pt)
  #cv-s[Early digital youth counselling & cross-disciplinary knowledge transfer]
  #v(7.35pt)
  #cv-b[As one of few male counsellors at Kids Hotline, advised on identity, body image and self-doubt]
  #v(8.4pt)
  #cv-b[Co-developed psychology mentoring across cohorts; supported Physics Council & Night of Science]
]

#v(13.125pt)
#block(breakable: false)[
  #block(above: 0pt, below: 0pt)[
    #set par(spacing: 0pt)
    #text(size: 12pt, weight: "bold", upper[Personal])
    #v(4.41pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]
  #v(7.35pt)
  #cv-h[Educational Mobility & Responsibility]
  #v(6.3pt)
  #cv-s[First-generation academic · support for siblings (6 | 12-year age gap) · family care leave 2025]
  #v(7.35pt)
  #cv-b[Supported siblings personally and financially through 1.0 Abitur, medical studies and company founding]
  #v(8.4pt)
  #cv-b[Took family care leave for my mother in 2025; organised care, financing and long-term placement]
  #v(10.5pt)
  #cv-h[Sharing & Co-Creation]
  #v(6.3pt)
  #cv-s[Intercultural living · international FOSS collaboration]
  #v(7.35pt)
  #cv-b[Lived with 20+ people from 10+ countries; fostered open hospitality and intercultural exchange]
  #v(8.4pt)
  #cv-b[Published 50+ FOSS projects; contributed to multiple projects, most recently oo7 (cybersecurity)]
]

#if cv-pages >= 3 [
  #cv-pagebreak()

  #v(13.125pt)
  #block(breakable: false)[
    #block(above: 0pt, below: 0pt)[
      #set par(spacing: 0pt)
      // Recent Projects
      #text(size: 12pt, weight: "bold", upper[Current Projects])
      #v(4.41pt)
      #line(length: 100%, stroke: 0.5pt + black)
    ]
    #v(7.35pt)
    #cv-h[Incident Recovery & Cloud Migration]
    #v(6.3pt)
    #cv-s[Solar SME · 2022]
    #v(7.35pt)
    #cv-b[Restored crashed core system on day one; kept field service and sales running until replacement]
    #v(8.4pt)
    #cv-b[Assessed cloud migration options; prevented six-to-seven-figure misinvestment]
    #v(10.5pt)
    #cv-h[Digital Pivot to Hybrid Delivery]
    #v(6.3pt)
    #cv-s[Leadership Advisory Brand · 2022]
    #v(7.35pt)
    #cv-b[Built digital delivery infrastructure; launched on-demand content as alternative to blocked seminars]
    #v(8.4pt)
    #cv-b[Mapped customer pain points and improved marketing funnel; diversified revenue through hybrid delivery]
    #v(10.5pt)
    #cv-h[Crypto Infrastructure Advisory]
    #v(6.3pt)
    #cv-s[Multiple clients · 2021]
    #v(7.35pt)
    #cv-b[Sized and costed crypto pilot and operating model; managed procurement and operating risks]
    #v(8.4pt)
    #cv-b[Delivered monitored, stable mining operation on schedule; optimised hash rate via custom firmware]
    #v(10.5pt)
    #cv-h[Leadership Coaching Digitalisation]
    #v(6.3pt)
    #cv-s[Frankfurt · 2022]
    #v(7.35pt)
    #cv-b[Reworked Performance Leadership courses for online delivery]
    #v(8.4pt)
    #cv-b[Placed content with Haufe Akademie]
    #v(10.5pt)
    #cv-h[CareerVector (AI Job Tracker)]
    #v(6.3pt)
    #cv-s[Personal project · since 2025]
    #v(7.35pt)
    #cv-b[Built AI-native full-stack job tracker with Astro, React and Typst WASM]
    #v(8.4pt)
    #cv-b[Integrated 13+ LLM providers through Cloudflare Edge]
  ]

  #v(13.125pt)
  #block(breakable: false)[
    #block(above: 0pt, below: 0pt)[
      #set par(spacing: 0pt)
      // Selected Projects
      #text(size: 12pt, weight: "bold", upper[Past Projects])
      #v(4.41pt)
      #line(length: 100%, stroke: 0.5pt + black)
    ]
    #v(7.35pt)
    #cv-h[Indian IT Outsourcing MBI Attempt]
    #v(6.3pt)
    #cv-s[2022]
    #v(7.35pt)
    #cv-b[Identified acquisition target and conducted due diligence]
    #v(8.4pt)
    #cv-b[Structured MBI pitch for PE financing]
    #v(10.5pt)
    #cv-h[Personal Cloud Platform (apps.corbet.ch)]
    #v(6.3pt)
    #cv-s[since 2024]
    #v(7.35pt)
    #cv-b[Self-hosted 30+ services and 100+ TB of storage]
    #v(8.4pt)
    #cv-b[Integrated local LLMs, IdP and agentic AI]
    #v(10.5pt)
    #cv-h[eCommerce Operations (eBay Resale)]
    #v(6.3pt)
    #cv-s[2017 – 2025]
    #v(7.35pt)
    #cv-b[Operated five-figure eBay business with automated listings, tracking and logistics]
    #v(8.4pt)
    #cv-b[Deployed mini-ERP; exited at 80% of book value]
    #v(10.5pt)
    #cv-h[Hardware & Software Services (SMB/B2C)]
    #v(6.3pt)
    #cv-s[2009 – 2024]
    #v(7.35pt)
    #cv-b[Operated profitable diagnostics, custom-build and repair service for SMB and B2C clients]
    #v(8.4pt)
    #cv-b[Maintained business continuity through disruption]
    #v(10.5pt)
    #cv-h[Content Strategy & Media]
    #v(6.3pt)
    #cv-s[since 2025]
    #v(7.35pt)
    #cv-b[Building blog and podcast on AI, finance and strategy]
    #v(8.4pt)
    #cv-b[Led AV production at Swiss Python Summit]
    #v(10.5pt)
    #cv-h[Investment Portfolio]
    #v(6.3pt)
    #cv-s[since 2021]
    #v(7.35pt)
    #cv-b[Diversified portfolio across equities, alternatives and early-stage VC]
    #v(8.4pt)
    #cv-b[Applied value and momentum approach]
  ]
]

#if cv-pages >= 4 [
  #cv-pagebreak()

  #v(13.125pt)
  #block(breakable: false)[
    #block(above: 0pt, below: 0pt)[
      #set par(spacing: 0pt)
      #text(size: 12pt, weight: "bold", upper[Skills])
      #v(4.41pt)
      #line(length: 100%, stroke: 0.5pt + black)
    ]
    #v(7.35pt)
    #cv-h[Finance]
    #v(7.35pt)
    #cv-b[Corporate Finance: Portfolio and capital allocation analysis; qualitative and quantitative risk assessment]
    #v(8.4pt)
    #cv-b[Financial Modelling: DCF, multiples and comps; scenario/sensitivity analysis; debt and equity]
    #v(8.4pt)
    #cv-b[Transactions: Origination, due diligence and IMs; structuring strategic growth investments]
    #v(10.5pt)
    #cv-h[Strategy]
    #v(7.35pt)
    #cv-b[Executive Materials: Board and investment decks; trade-offs and recommendations for steerings]
    #v(8.4pt)
    #cv-b[Strategic Planning: TOMs, roadmaps and KPI/OKR; dashboards for portfolio cadence and delivery]
    #v(8.4pt)
    #cv-b[Stakeholder Management: Cross-functional alignment and leadership expectations; on-time delivery]
    #v(10.5pt)
    #cv-h[Technology & AI]
    #v(7.35pt)
    #cv-b[AI Innovation: On-premise, hybrid and cloud AI MVPs; deployment at scale]
    #v(8.4pt)
    #cv-b[Cloud Excellence: Requirements analysis and process diagnostics; regulation translated into solutions]
    #v(8.4pt)
    #cv-b[Quantitative & Risk: Stochastic models, option pricing, VaR and Monte Carlo]
    #v(10.5pt)
    #cv-h[People & Leadership]
    #v(7.35pt)
    #cv-b[Coaching & Mentoring: Combined empathy with enablement; workshops and resilience building]
    #v(8.4pt)
    #cv-b[Events & Networks: Cross-functional relationships across finance and IT; conference organisation]
    #v(8.4pt)
    #cv-b[Thought Leadership: Whitepapers and talks; media presence in AI, finance and strategy in development]
    #v(13.125pt)
    #block(above: 0pt, below: 0pt)[
      #set par(spacing: 0pt)
      #text(size: 12pt, weight: "bold", upper[Intermediate Heading I])
      #v(4.41pt)
      #line(length: 100%, stroke: 0.5pt + black)
    ]
    #v(7.35pt)
    #cv-h[Productivity & Collaboration]
    #v(7.35pt)
    #cv-b[Microsoft 365: Copilot, Excel and PowerPoint]
    #v(8.4pt)
    #cv-b[Google Workspace]
    #v(8.4pt)
    #cv-b[Jira, Confluence and CRM]
    #v(10.5pt)
    #cv-h[Research & Science]
    #v(7.35pt)
    #cv-b[Experimental Design: Physics lab methods, hypothesis testing, statistical rigour (SPSS, R, Python)]
    #v(8.4pt)
    #cv-b[Data Engineering: ETL pipeline design, data cleaning, correlation analysis and measurement databases]
    #v(8.4pt)
    #cv-b[Academic Writing: Two theses in English, one in German; peer-review methodology]
    #v(10.5pt)
    #cv-h[Transformation & Enablement]
    #v(7.35pt)
    #cv-b[Balanced high-pressure transformation with operational continuity]
    #v(8.4pt)
    #cv-b[Built AI capability through workshops and hands-on coaching]
    #v(8.4pt)
    #cv-b[Navigated BANI uncertainty across changing organisational contexts]
    #v(13.125pt)
    #block(above: 0pt, below: 0pt)[
      #set par(spacing: 0pt)
      #text(size: 12pt, weight: "bold", upper[Intermediate Heading II])
      #v(4.41pt)
      #line(length: 100%, stroke: 0.5pt + black)
    ]
    #v(7.35pt)
    #cv-h[Analytics & Data]
    #v(7.35pt)
    #cv-b[Advanced Excel (VBA) and executive dashboards]
    #v(8.4pt)
    #cv-b[Power BI, Tableau and SQL]
    #v(8.4pt)
    #cv-b[Time-series and scenario analysis]
    #v(10.5pt)
    #cv-h[AI & Automation]
    #v(7.35pt)
    #cv-b[Python and Java (OOP)]
    #v(8.4pt)
    #cv-b[GenAI tooling with Claude Code and Copilot]
    #v(8.4pt)
    #cv-b[n8n automation and reporting pipelines]
    #v(10.5pt)
    #cv-h[Communication & Negotiation]
    #v(7.35pt)
    #cv-b[Rhetoric and negotiation for clear communication]
    #v(8.4pt)
    #cv-b[Performance Leadership, PR and media relations]
    #v(8.4pt)
    #cv-b[Crisis communication for IT and organisational change]
  ]
]
