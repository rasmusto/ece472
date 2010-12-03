START:
	addi $t1,$zero,0
	addi $t2,$zero,4
LOOP:
	addi $t1,$t1,1
	bne  $t1, $t2,LOOP
	j START