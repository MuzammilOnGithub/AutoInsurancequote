package com.wipro.AutoInsurance.serviceImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wipro.AutoInsurance.model.Quote;
import com.wipro.AutoInsurance.repository.QuoteRepository;
import com.wipro.AutoInsurance.service.QuoteService;

@Service
public class QuoteServiceImpl implements QuoteService {

    private QuoteRepository quoteRepository;

    @Autowired
    public QuoteServiceImpl(QuoteRepository quoteRepository) {
        this.quoteRepository = quoteRepository;
    }

    @Override
    @Transactional
    public Quote saveOrUpdateQuote(Quote quote) {
        return quoteRepository.save(quote);
    }

    
    @Override
    public Quote getQuoteById(Long id) {
        return quoteRepository.findById(id).orElse(null);
    }
    public List<Quote> getAllQuotes() {
        return quoteRepository.findAll();
    }
}

