score = 70

if (score >= 50 || score <= 100) && score >= 80
  puts "得点は５０点以上１００点以下で、８０点以上です"
end

if score >= 50 || (score <= 100 && score >=　80)
  puts "得点は５０点以上80点以上100点以下です"
end