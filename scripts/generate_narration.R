library(stringr)
library(fs)
library(jsonlite)

# Path to your main slide file
qmd_files <- "bayesian_linear_regression_slides_with_narration.qmd"

# Ensure narration folder exists
dir_create("narration", recurse = TRUE)

for (qfile in qmd_files) {
  lines <- readLines(qfile, warn = FALSE)
  
  note_starts <- which(str_detect(lines, "^::: notes"))
  note_ends <- which(str_detect(lines, "^:::\\s*$"))
  
  for (i in seq_along(note_starts)) {
    start <- note_starts[i]
    end <- note_ends[note_ends > start][1]
    if (is.na(end)) next
    
    note_text <- paste(lines[(start + 1):(end - 1)], collapse = " ")
    base <- path_ext_remove(path_file(qfile))
    out_name <- sprintf("%s_block%02d.mp3", base, i)
    out_path <- path("narration", out_name)
    
    payload <- toJSON(list(
      model = "gpt-4o-mini-tts",
      voice = "alloy",
      input = note_text
    ), auto_unbox = TRUE)
    
    cmd <- paste(
      "curl https://api.openai.com/v1/audio/speech",
      "-H", shQuote(paste0("Authorization: Bearer ", Sys.getenv("OPENAI_API_KEY"))),
      "-H", shQuote("Content-Type: application/json"),
      "-d", shQuote(payload),
      "--output", shQuote(out_path)
    )
    
    system(cmd)
    message("✅ Generated narration: ", out_path)
  }
}
