package controle;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import model.MCaixa;

@Table (name = "caixa")
@Entity
public class Caixa {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(nullable = true)
	private double total;
	@Column(nullable = true)
	private double ganho;
	@Column(nullable = true)
	private double perda;
	
	@Transient
	public String msg;

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public double getGanho() {
		return ganho;
	}

	public void setGanho(double ganho) {
		this.ganho = ganho;
	}

	public double getPerda() {
		return perda;
	}

	public void setPerda(double perda) {
		this.perda = perda;
	}

	public Caixa(double total, double ganho, double perda) {
		this.total = total;
		this.ganho = ganho;
		this.perda = perda;
	}

	public Caixa() {
	}
	
	public boolean cadastrar(Caixa a){
		try {
			MCaixa ma = new MCaixa();
			ma.cadastrar(a);
				return true;		
		}catch(Exception e) {
			msg = e.toString();
		}
		return false;
	}
	
	public boolean editar(Caixa u) {
		try {
			MCaixa mu = new MCaixa();
			mu.editar(u);
			return true;
		}catch(Exception e) {
			msg = e.toString();
		}
		return false;
	}
	
	public Caixa pegar() {
		try {
			MCaixa mcx = new MCaixa();
			Caixa cx = new Caixa();
			cx = mcx.pegar();
			return cx;
		}catch(Exception e) {
			this.msg = e.toString();
		}
		return null;
	}
}
