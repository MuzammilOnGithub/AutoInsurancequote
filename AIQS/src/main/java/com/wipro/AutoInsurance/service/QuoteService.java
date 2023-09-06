package com.wipro.AutoInsurance.service;

import java.util.List;

import com.wipro.AutoInsurance.model.Quote;

public interface QuoteService {
    Quote saveOrUpdateQuote(Quote quote);

	Quote getQuoteById(Long quoteId);
	List<Quote> getAllQuotes();
}
