package io.rooflet.service;

import io.rooflet.model.entity.MarketListing;
import io.rooflet.model.request.CreateMarketListingRequest;
import io.rooflet.model.request.UpdateMarketListingRequest;
import io.rooflet.repository.MarketListingRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
@Transactional
public class MarketListingService {

    private final MarketListingRepository marketListingRepository;

    public MarketListing createMarketListing(CreateMarketListingRequest request) {
        MarketListing listing = MarketListing.builder()
                .source(request.getSource())
                .sourceListingId(request.getSourceListingId())
                .sourceUrl(request.getSourceUrl())
                .sourceMlsNumber(request.getSourceMlsNumber())
                .saleType(request.getSaleType())
                .listingStatus(request.getListingStatus())
                .soldDate(request.getSoldDate())
                .listDate(request.getListDate())
                .daysOnMarket(request.getDaysOnMarket())
                .address(request.getAddress())
                .address1(request.getAddress1())
                .address2(request.getAddress2())
                .city(request.getCity())
                .state(request.getState())
                .zipCode(request.getZipCode())
                .location(request.getLocation())
                .latitude(request.getLatitude())
                .longitude(request.getLongitude())
                .propertyType(request.getPropertyType())
                .bedrooms(request.getBedrooms())
                .bathrooms(request.getBathrooms())
                .squareFeet(request.getSquareFeet())
                .lotSize(request.getLotSize())
                .yearBuilt(request.getYearBuilt())
                .price(request.getPrice())
                .pricePerSqft(request.getPricePerSqft())
                .originalListPrice(request.getOriginalListPrice())
                .hoaFee(request.getHoaFee())
                .nextOpenHouseStart(request.getNextOpenHouseStart())
                .nextOpenHouseEnd(request.getNextOpenHouseEnd())
                .isFavorite(request.getIsFavorite() != null ? request.getIsFavorite() : false)
                .isInterested(request.getIsInterested() != null ? request.getIsInterested() : false)
                .rawData(request.getRawData())
                .lastScrapedAt(request.getLastScrapedAt() != null ? request.getLastScrapedAt() : LocalDateTime.now())
                .build();

        return marketListingRepository.save(listing);
    }

    public MarketListing updateMarketListing(UUID id, UpdateMarketListingRequest request) {
        MarketListing listing = findById(id);

        // Update only non-null fields
        if (request.getSource() != null) listing.setSource(request.getSource());
        if (request.getSourceListingId() != null) listing.setSourceListingId(request.getSourceListingId());
        if (request.getSourceUrl() != null) listing.setSourceUrl(request.getSourceUrl());
        if (request.getSourceMlsNumber() != null) listing.setSourceMlsNumber(request.getSourceMlsNumber());
        if (request.getSaleType() != null) listing.setSaleType(request.getSaleType());
        if (request.getListingStatus() != null) listing.setListingStatus(request.getListingStatus());
        if (request.getSoldDate() != null) listing.setSoldDate(request.getSoldDate());
        if (request.getListDate() != null) listing.setListDate(request.getListDate());
        if (request.getDaysOnMarket() != null) listing.setDaysOnMarket(request.getDaysOnMarket());
        if (request.getAddress() != null) listing.setAddress(request.getAddress());
        if (request.getAddress1() != null) listing.setAddress1(request.getAddress1());
        if (request.getAddress2() != null) listing.setAddress2(request.getAddress2());
        if (request.getCity() != null) listing.setCity(request.getCity());
        if (request.getState() != null) listing.setState(request.getState());
        if (request.getZipCode() != null) listing.setZipCode(request.getZipCode());
        if (request.getLocation() != null) listing.setLocation(request.getLocation());
        if (request.getLatitude() != null) listing.setLatitude(request.getLatitude());
        if (request.getLongitude() != null) listing.setLongitude(request.getLongitude());
        if (request.getPropertyType() != null) listing.setPropertyType(request.getPropertyType());
        if (request.getBedrooms() != null) listing.setBedrooms(request.getBedrooms());
        if (request.getBathrooms() != null) listing.setBathrooms(request.getBathrooms());
        if (request.getSquareFeet() != null) listing.setSquareFeet(request.getSquareFeet());
        if (request.getLotSize() != null) listing.setLotSize(request.getLotSize());
        if (request.getYearBuilt() != null) listing.setYearBuilt(request.getYearBuilt());
        if (request.getPrice() != null) listing.setPrice(request.getPrice());
        if (request.getPricePerSqft() != null) listing.setPricePerSqft(request.getPricePerSqft());
        if (request.getOriginalListPrice() != null) listing.setOriginalListPrice(request.getOriginalListPrice());
        if (request.getHoaFee() != null) listing.setHoaFee(request.getHoaFee());
        if (request.getNextOpenHouseStart() != null) listing.setNextOpenHouseStart(request.getNextOpenHouseStart());
        if (request.getNextOpenHouseEnd() != null) listing.setNextOpenHouseEnd(request.getNextOpenHouseEnd());
        if (request.getIsFavorite() != null) listing.setIsFavorite(request.getIsFavorite());
        if (request.getIsInterested() != null) listing.setIsInterested(request.getIsInterested());
        if (request.getRawData() != null) listing.setRawData(request.getRawData());
        if (request.getLastScrapedAt() != null) listing.setLastScrapedAt(request.getLastScrapedAt());

        return marketListingRepository.save(listing);
    }

    @Transactional(readOnly = true)
    public List<MarketListing> getAllMarketListings() {
        return marketListingRepository.findAll();
    }

    @Transactional(readOnly = true)
    public MarketListing findById(UUID id) {
        return marketListingRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Market listing not found with ID: " + id));
    }

    public void deleteMarketListing(UUID id) {
        MarketListing listing = findById(id);
        marketListingRepository.delete(listing);
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

