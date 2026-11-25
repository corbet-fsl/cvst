// Validation for the opportunity-specific input contract shared by CV and cover-letter builds.
#let validate-opportunity(opportunity) = {
  for field in ("language", "company", "position", "cv", "cl") {
    assert(
      field in opportunity,
      message: "opportunity." + field + " is required",
    )
  }

  assert("pages" in opportunity.cv, message: "opportunity.cv.pages is required")
  assert(
    opportunity.cv.pages in (2, 3, 4),
    message: "opportunity.cv.pages must be 2, 3, or 4",
  )
  assert(
    "summary" in opportunity.cv,
    message: "opportunity.cv.summary is required",
  )
  assert(
    "enabled" in opportunity.cl,
    message: "opportunity.cl.enabled is required",
  )
  assert(
    type(opportunity.cl.enabled) == bool,
    message: "opportunity.cl.enabled must be a boolean",
  )

  if opportunity.cl.enabled {
    let fields = ("title", "date", "salutation", "paragraphs", "highlights")
    for field in fields {
      assert(
        field in opportunity.cl,
        message: "opportunity.cl." + field + " is required when CL is enabled",
      )
    }

    assert(
      "label" in opportunity.cl.title,
      message: "opportunity.cl.title.label is required",
    )
    assert(
      "particle" in opportunity.cl.title,
      message: "opportunity.cl.title.particle is required",
    )
    assert(
      opportunity.cl.paragraphs.len() == 5,
      message: "opportunity.cl.paragraphs must contain exactly five paragraphs",
    )
    assert(
      opportunity.cl.highlights.len() == 5,
      message: "opportunity.cl.highlights must contain exactly five highlights",
    )

    for highlight in opportunity.cl.highlights {
      assert(
        "title" in highlight,
        message: "every opportunity.cl highlight requires a title",
      )
      assert(
        "text" in highlight,
        message: "every opportunity.cl highlight requires text",
      )
    }
  } else {
    assert(
      opportunity.cl.len() == 1,
      message: "a disabled opportunity.cl block may only contain enabled: false",
    )
  }
}
