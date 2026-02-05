FILE="input.txt"

sed -i '5,$ {
    /welcome/ s/give/learning/g
}' $FILE

cat $FILE
