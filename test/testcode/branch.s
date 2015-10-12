# Copyright 2015 Heidelberg University Copyright and related rights are
# licensed under the Solderpad Hardware License, Version 0.51 (the "License");
# you may not use this file except in compliance with the License. You may obtain
# a copy of the License at http://solderpad.org/licenses/SHL-0.51. Unless
# required by applicable law or agreed to in writing, software, hardware and
# materials distributed under this License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See
# the License for the specific language governing permissions and limitations
# under the License.



	addi	3, 0, 2			# set r3 = 2
	ba		test_target		# jump down
	addi	4, 0, 1			# set r4 = 1
	stw		4, 1(0)			# store r4 -> mem[1]

test_target:	
	stw		3, 0(0)			# store r3 -> mem[0]
	.byte 0x7c, 0x00, 0x00, 0x7c         # wait instruction



