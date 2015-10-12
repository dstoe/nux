# Copyright 2015 Heidelberg University Copyright and related rights are
# licensed under the Solderpad Hardware License, Version 0.51 (the "License");
# you may not use this file except in compliance with the License. You may obtain
# a copy of the License at http://solderpad.org/licenses/SHL-0.51. Unless
# required by applicable law or agreed to in writing, software, hardware and
# materials distributed under this License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See
# the License for the specific language governing permissions and limitations
# under the License.



start:
	lmw 1, 0(0)
	stmw 1, 32*4(0)

	lmw 31, 0(0)
	stmw 31, 64*4(0)

	lmw 30, 0(0)
	stmw 30, 64*4 + 4(0)

	lmw 29, 0(0)
	stmw 29, 64*4 + 12(0)

	.byte 0x7c, 0x00, 0x00, 0x7c

	nop
	nop
	nop
