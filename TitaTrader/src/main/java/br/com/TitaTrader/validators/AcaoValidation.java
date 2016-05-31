
package br.com.TitaTrader.validators;

import javax.xml.bind.ValidationEvent;

import br.com.TitaTrader.models.Acao;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class AcaoValidation implements Validator {

	public void valida(Acao acao, Errors errors) {
		ValidationUtils.rejectIfEmpty(errors, "nome", "field.required");
		ValidationUtils.rejectIfEmpty(errors, "valor", "field.required");

	}

	
	@Override
	public boolean supports(Class<?> clazz) {
		return Acao.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmpty(errors, "nome", "field.required");
		ValidationUtils.rejectIfEmpty(errors, "observacao", "field.required");

		Acao acao = (Acao) target;
		//FIXME qndo deixa null dá erro
		if (acao.getPreco()<= 0 || acao.getPreco()==null) {
			errors.rejectValue("preco", "field.required");
		}

	}

}

