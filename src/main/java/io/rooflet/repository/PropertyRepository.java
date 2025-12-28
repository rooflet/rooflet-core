package io.rooflet.repository;

import io.rooflet.model.entity.Property;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.UUID;

public interface PropertyRepository extends JpaRepository<Property, UUID> {
    @Query(value = "SELECT * FROM properties WHERE user_id = :ownerUuid", nativeQuery = true)
    List<Property> findByOwnerId(@Param("ownerUuid") UUID ownerUuid);

    @Query(value = "SELECT * FROM properties WHERE user_id = :ownerUuid AND (archived IS NULL OR archived = FALSE)", nativeQuery = true)
    List<Property> findByOwnerIdAndArchivedFalse(@Param("ownerUuid") UUID ownerUuid);

    @Query(value = "SELECT * FROM properties WHERE portfolio_id = :portfolioUuid", nativeQuery = true)
    List<Property> findByPortfolioId(@Param("portfolioUuid") UUID portfolioUuid);

    @Query(value = "SELECT * FROM properties WHERE portfolio_id = :portfolioUuid AND (archived IS NULL OR archived = FALSE)", nativeQuery = true)
    List<Property> findActiveByPortfolioId(@Param("portfolioUuid") UUID portfolioUuid);
}
