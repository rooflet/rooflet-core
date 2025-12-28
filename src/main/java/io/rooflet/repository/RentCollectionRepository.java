package io.rooflet.repository;

import io.rooflet.model.RentCollection;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.time.LocalDate;
import java.util.List;
import java.util.UUID;

public interface RentCollectionRepository extends JpaRepository<RentCollection, UUID> {

    @Query(value = "SELECT * FROM rent_collections WHERE property_id = :propertyUuid", nativeQuery = true)
    List<RentCollection> findByPropertyId(@Param("propertyUuid") UUID propertyUuid);

    @Query(value = "SELECT * FROM rent_collections WHERE tenant_id = :tenantUuid", nativeQuery = true)
    List<RentCollection> findByTenantId(@Param("tenantUuid") UUID tenantUuid);

    @Query(value = "SELECT * FROM rent_collections WHERE property_id = :propertyUuid AND tenant_id = :tenantUuid", nativeQuery = true)
    List<RentCollection> findByPropertyIdAndTenantId(@Param("propertyUuid") UUID propertyUuid, @Param("tenantUuid") UUID tenantUuid);

    @Query(value = "SELECT rc.* FROM rent_collections rc JOIN properties p ON rc.property_id = p.id WHERE p.user_id = :ownerUuid", nativeQuery = true)
    List<RentCollection> findByPropertyOwnerId(@Param("ownerUuid") UUID ownerUuid);

    @Query(value = "SELECT rc.* FROM rent_collections rc JOIN properties p ON rc.property_id = p.id WHERE p.user_id = :ownerUuid AND rc.payment_date BETWEEN :startPeriod AND :endPeriod", nativeQuery = true)
    List<RentCollection> findRentCollectionsByOwnerAndPeriod(@Param("ownerUuid") UUID ownerUuid,
                                                             @Param("startPeriod") LocalDate startPeriod,
                                                             @Param("endPeriod") LocalDate endPeriod);

    @Query(value = "SELECT rc.* FROM rent_collections rc JOIN properties p ON rc.property_id = p.id WHERE p.portfolio_id = :portfolioUuid", nativeQuery = true)
    List<RentCollection> findByPortfolioId(@Param("portfolioUuid") UUID portfolioUuid);

    @Query(value = "SELECT rc.* FROM rent_collections rc JOIN properties p ON rc.property_id = p.id WHERE p.portfolio_id = :portfolioUuid AND rc.payment_date BETWEEN :startPeriod AND :endPeriod", nativeQuery = true)
    List<RentCollection> findRentCollectionsByPortfolioAndPeriod(@Param("portfolioUuid") UUID portfolioUuid,
                                                                 @Param("startPeriod") LocalDate startPeriod,
                                                                 @Param("endPeriod") LocalDate endPeriod);
}
