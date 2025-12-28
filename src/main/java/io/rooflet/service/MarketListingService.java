package io.rooflet.service;

import io.rooflet.model.entity.MarketListing;
import io.rooflet.repository.MarketListingRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
@Transactional
public class MarketListingService {

    private final MarketListingRepository marketListingRepository;

    @Transactional(readOnly = true)
    public List<MarketListing> getAllMarketListings() {
        return marketListingRepository.findAll();
    }

    @Transactional(readOnly = true)
    public MarketListing findById(UUID id) {
        return marketListingRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Market listing not found with ID: " + id));
    }
    // Favorite operations
    public MarketListing toggleFavorite(UUID id) {
        MarketListing listing = findById(id);
        listing.setIsFavorite(!listing.getIsFavorite());
        return marketListingRepository.save(listing);
    }

    public MarketListing setFavorite(UUID id, boolean isFavorite) {
        MarketListing listing = findById(id);
        listing.setIsFavorite(isFavorite);
        return marketListingRepository.save(listing);
    }

    @Transactional(readOnly = true)
    public List<MarketListing> getFavorites() {
        return marketListingRepository.findFavorites();
    }

    // Interested operations
    public MarketListing toggleInterested(UUID id) {
        MarketListing listing = findById(id);
        listing.setIsInterested(!listing.getIsInterested());
        return marketListingRepository.save(listing);
    }

    public MarketListing setInterested(UUID id, boolean isInterested) {
        MarketListing listing = findById(id);
        listing.setIsInterested(isInterested);
        return marketListingRepository.save(listing);
    }

    @Transactional(readOnly = true)
    public List<MarketListing> getInterested() {
        return marketListingRepository.findInterested();
    }

    // Filter operations
    @Transactional(readOnly = true)
    public List<MarketListing> findByStatus(String status) {
        return marketListingRepository.findByListingStatus(status);
    }

    @Transactional(readOnly = true)
    public List<MarketListing> findByCityAndState(String city, String state) {
        return marketListingRepository.findByCityAndState(city, state);
    }

    @Transactional(readOnly = true)
    public List<MarketListing> findBySource(String source) {
        return marketListingRepository.findBySource(source);
    }

    @Transactional(readOnly = true)
    public List<MarketListing> findByPriceRange(BigDecimal minPrice, BigDecimal maxPrice) {
        return marketListingRepository.findByPriceRange(minPrice, maxPrice);
    }

    @Transactional(readOnly = true)
    public List<MarketListing> findByBedroomsAndBathrooms(Integer minBedrooms, BigDecimal minBathrooms) {
        return marketListingRepository.findByBedroomsAndBathrooms(minBedrooms, minBathrooms);
    }

    @Transactional(readOnly = true)
    public List<MarketListing> findByPropertyType(String propertyType) {
        return marketListingRepository.findByPropertyType(propertyType);
    }
}

