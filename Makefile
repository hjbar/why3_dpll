WHY3=why3

default:
	@echo 'type `make <target>` where <target> is either ide, replay, test or doc'

ide:
	@${WHY3} ide dpll.mlw

replay:
	@${WHY3} replay dpll

test:
	@${WHY3} extract -D ocaml64 dpll.mlw -o dpll.ml
	@ocamlbuild -pkg unix -pkg zarith test_dpll.native
	@sh ./check ./test_dpll.native

unit_test:
	@${WHY3} extract -D ocaml64 dpll_unit.mlw -o dpll.ml
	@ocamlbuild -pkg unix -pkg zarith test_dpll.native
	@sh ./check ./test_dpll.native

doc:
	@${WHY3} doc dpll.mlw
	@${WHY3} session html dpll

mrproper:
	@rm -rf _build
	@rm -rf dpll.ml
	@rm -rf dpll.mlw.bak
	@rm -rf dpll
	@rm -rf dpll.html
	@rm -rf style.css
	@rm -rf test_dpll.native
