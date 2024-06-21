import { Colaborador } from "./Colaborador"

class Gerente extends Colaborador {
    private departamento: string
    private setor: string

    constructor(nome: string, idade: number, salario: number, departamento: string, setor: string) {
        super(nome, idade, salario)
        this.departamento = departamento
        this.setor = setor
    }

    getDepartamento(): string {
        return this.departamento
    }
    getSetor(): string {
        return this.setor
    }
}