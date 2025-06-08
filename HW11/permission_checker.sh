#!/bin/bash
DIRECTORY="/opt/210225"
for FILE in $(ls -p "$DIRECTORY" | grep -v /); do
if echo "$FILE" | grep -q "\.sh$"; then
chmod +x "$DIRECTORY/$FILE"
echo "Права на исполнение добавлены: $FILE"
fi
done
echo "Успешное выполнение"
