package io.rooflet.repository;

import io.rooflet.model.entity.PortfolioMember;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

public interface PortfolioMemberRepository extends JpaRepository<PortfolioMember, UUID> {

    @Query(value = "SELECT * FROM portfolio_members WHERE portfolio_id = :portfolioUuid", nativeQuery = true)
    List<PortfolioMember> findByPortfolioId(@Param("portfolioUuid") UUID portfolioUuid);

    @Query(value = "SELECT * FROM portfolio_members WHERE user_id = :userUuid", nativeQuery = true)
    List<PortfolioMember> findByUserId(@Param("userUuid") UUID userUuid);

    @Query(value = "SELECT * FROM portfolio_members WHERE portfolio_id = :portfolioUuid AND user_id = :userUuid",
            nativeQuery = true)
    Optional<PortfolioMember> findByPortfolioIdAndUserId(@Param("portfolioUuid") UUID portfolioUuid,
                                                         @Param("userUuid") UUID userUuid);

    @Query(value = "SELECT COUNT(*) FROM portfolio_members WHERE portfolio_id = :portfolioUuid AND role = :role",
            nativeQuery = true)
    long countByPortfolioIdAndRole(@Param("portfolioUuid") UUID portfolioUuid, @Param("role") String role);

    @Query(value = "DELETE FROM portfolio_members WHERE portfolio_id = :portfolioUuid AND user_id = :userUuid",
            nativeQuery = true)
    void deleteByPortfolioIdAndUserId(@Param("portfolioUuid") UUID portfolioUuid, @Param("userUuid") UUID userUuid);
}

