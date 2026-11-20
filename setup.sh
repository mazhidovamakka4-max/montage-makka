#!/usr/bin/env bash
# Настройка окружения для монтажа. Запуск: bash setup.sh
set -e

echo "▶ Ставлю ffmpeg..."
apt-get update -qq && apt-get install -y -qq ffmpeg || true

echo "▶ Проверяю..."
if command -v ffmpeg >/dev/null 2>&1; then
  echo "✓ ffmpeg готов"
else
  echo "✗ ffmpeg не установился, проверь права или сеть"
fi

echo "▶ Папки:"
mkdir -p assets/fonts assets/music videos
echo "✓ assets/fonts, assets/music, videos на месте"

echo ""
echo "Готово. Теперь:"
echo "  1) положи шрифты в assets/fonts/"
echo "  2) положи видео в videos/<проект>/source.mp4"
echo "  3) напиши Claude: смонтируй это видео"
