package io.rooflet.repository;

import io.rooflet.model.entity.Tenant;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.UUID;

public interface TenantRepository extends JpaRepository<Tenant, UUID> {
    @Query(value = "SELECT * FROM tenants WHERE property_id = :propertyUuid", nativeQuery = true)
    List<Tenant> findByPropertyId(@Param("propertyUuid") UUID propertyUuid);

    @Query(value = "SELECT * FROM tenants WHERE property_id = :propertyUuid AND (archived IS NULL OR archived = FALSE)", nativeQuery = true)
    List<Tenant> findActiveByPropertyId(@Param("propertyUuid") UUID propertyUuid);

    @Query(value = "SELECT t.* FROM tenants t LEFT JOIN properties p ON t.property_id = p.id WHERE t.property_id IS NULL OR p.user_id = :userUuid", nativeQuery = true)
    List<Tenant> findTenantsForUser(@Param("userUuid") UUID userUuid);

    @Query(value = "SELECT t.* FROM tenants t LEFT JOIN properties p ON t.property_id = p.id WHERE (t.archived IS NULL OR t.archived = FALSE) AND (t.property_id IS NULL OR p.user_id = :userUuid)", nativeQuery = true)
    List<Tenant> findActiveTenantsForUser(@Param("userUuid") UUID userUuid);

    @Query(value = "SELECT * FROM tenants WHERE property_id IS NULL", nativeQuery = true)
    List<Tenant> findUnassignedTenantsForUser(@Param("userUuid") UUID userUuid);

    @Query(value = "SELECT t.* FROM tenants t LEFT JOIN properties p ON t.property_id = p.id WHERE t.property_id IS NULL OR p.portfolio_id = :portfolioUuid", nativeQuery = true)
    List<Tenant> findTenantsForPortfolio(@Param("portfolioUuid") UUID portfolioUuid);

    @Query(value = "SELECT t.* FROM tenants t LEFT JOIN properties p ON t.property_id = p.id WHERE (t.archived IS NULL OR t.archived = FALSE) AND (t.property_id IS NULL OR p.portfolio_id = :portfolioUuid)", nativeQuery = true)
    List<Tenant> findActiveTenantsForPortfolio(@Param("portfolioUuid") UUID portfolioUuid);
}
