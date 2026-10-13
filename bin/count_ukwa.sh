echo "UKWA members - sailboard (fin), all week, adult"
echo 2026 $(cat events/2026/config/entries.csv | csvgrep -c "UKWA Member" -m "YES" | csvgrep -c "Sailboard (fin)" -m "1" | csvgrep -c "All Week" -m "YES" | csvgrep -c "Adult" -m "YES" | wc -l)
echo 2025 $(cat events/2025/config/entries.csv | csvgrep -c "UKWA Member" -m "YES" | csvgrep -c "Sailboard (fin)" -m "1" | csvgrep -c "All Week" -m "YES" | csvgrep -c "Adult" -m "YES" | wc -l)
echo 2024 $(cat events/2024/config/entries.csv | csvgrep -c "UKWA Member" -m "YES" | csvgrep -c "Sailboard" -m "1" | csvgrep -c "All Week" -m "YES" | csvgrep -c "Adult" -m "YES" | wc -l)
echo 2023 $(cat events/2023/config/entries.csv | csvgrep -c "UKWA Member" -m "YES" | csvgrep -c "Sailboard" -m "1" | csvgrep -c "All Week" -m "YES" | csvgrep -c "Adult" -m "YES" | wc -l)

echo

echo "UKWA members - sailboard (fin), all week, pro fleet"
echo 2025 $(cat events/2026/config/entries.csv | csvgrep -c "UKWA Member" -m "YES" | csvgrep -c "Sailboard (fin)" -m "1" | csvgrep -c "All Week" -m "YES" | csvgrep -c "Sailboard Fleet" -m "Pro Fleet" | wc -l)
echo 2025 $(cat events/2025/config/entries.csv | csvgrep -c "UKWA Member" -m "YES" | csvgrep -c "Sailboard (fin)" -m "1" | csvgrep -c "All Week" -m "YES" | csvgrep -c "Sailboard Fleet" -m "Pro Fleet" | wc -l)
echo 2024 $(cat events/2024/config/entries.csv | csvgrep -c "UKWA Member" -m "YES" | csvgrep -c "Sailboard" -m "1" | csvgrep -c "All Week" -m "YES" | csvgrep -c "Sailboard Fleet" -m "Pro-Fleet" | wc -l)
echo 2023 $(cat events/2023/config/entries.csv | csvgrep -c "UKWA Member" -m "YES" | csvgrep -c "Sailboard" -m "1" | csvgrep -c "All Week" -m "YES" | csvgrep -c "Sailboard Fleet" -m "Pro-Fleet" | wc -l)

echo

echo "UKWA members - sailboard (foil), all week, adult"
echo 2026 $(cat events/2026/config/entries.csv | csvgrep -c "UKWA Member" -m "YES" | csvgrep -c "Sailboard (foil)" -m "1" | csvgrep -c "All Week" -m "YES" | csvgrep -c "Adult" -m "YES" | wc -l)
echo 2025 $(cat events/2025/config/entries.csv | csvgrep -c "UKWA Member" -m "YES" | csvgrep -c "Sailboard (foil)" -m "1" | csvgrep -c "All Week" -m "YES" | csvgrep -c "Adult" -m "YES" | wc -l)

echo

echo "UKWA members - wingboard, all week, adult"
echo 2026 $(cat events/2026/config/entries.csv | csvgrep -c "UKWA Member" -m "YES" | csvgrep -c "Wingboard" -m "1" | csvgrep -c "All Week" -m "YES" | csvgrep -c "Adult" -m "YES" | wc -l)
echo 2025 $(cat events/2025/config/entries.csv | csvgrep -c "UKWA Member" -m "YES" | csvgrep -c "Wingboard" -m "1" | csvgrep -c "All Week" -m "YES" | csvgrep -c "Adult" -m "YES" | wc -l)
echo 2024 $(cat events/2024/config/entries.csv | csvgrep -c "UKWA Member" -m "YES" | csvgrep -c "Wingboard" -m "1" | csvgrep -c "All Week" -m "YES" | csvgrep -c "Adult" -m "YES" | wc -l)
echo 2023 $(cat events/2023/config/entries.csv | csvgrep -c "UKWA Member" -m "YES" | csvgrep -c "Wingboard" -m "1" | csvgrep -c "All Week" -m "YES" | csvgrep -c "Adult" -m "YES" | wc -l)
