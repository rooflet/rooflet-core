package io.rooflet.service;

import io.rooflet.model.entity.MarketListing;
import io.rooflet.model.entity.UserMarketListingPreference;
import io.rooflet.repository.MarketListingRepository;
import io.rooflet.repository.UserMarketListingPreferenceRepository;
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
    private final UserMarketListingPreferenceRepository preferenceRepository;

    @Transactional(readOnly = true)
    public List<MarketListing> getAllMarketListings() {
        return marketListingRepository.findAll();
    }

    @Transactional(readOnly = true)
    public MarketListing findById(UUID id) {
        return marketListingRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Market listing not found with ID: " + id));
    }

    // User-specific preference operations
    public UserMarketListingPreference setInterested(UUID userId, UUID listingId, boolean isInterested) {
        UserMarketListingPreference preference = preferenceRepository
                .findByUserIdAndListingId(userId, listingId)
                .orElse(UserMarketListingPreference.builder()
                        .userId(userId)
                        .listingId(listingId)
                        .build());

        preference.setIsInterested(isInterested);
        return preferenceRepository.save(preference);
    }

    public UserMarketListingPreference toggleInterested(UUID userId, UUID listingId) {
        UserMarketListingPreference preference = preferenceRepository
                .findByUserIdAndListingId(userId, listingId)
                .orElse(UserMarketListingPreference.builder()
                        .userId(userId)
                        .listingId(listingId)
                        .isInterested(false)
                        .build());

        preference.setIsInterested(!preference.getIsInterested());
        return preferenceRepository.save(preference);
    }

    @Transactional(readOnly = true)
    public List<UserMarketListingPreference> getInterested(UUID userId) {
        return preferenceRepository.findInterestedByUserId(userId);
    }

    @Transactional(readOnly = true)
    public UserMarketListingPreference getPreference(UUID userId, UUID listingId) {
        return preferenceRepository.findByUserIdAndListingId(userId, listingId).orElse(null);
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

