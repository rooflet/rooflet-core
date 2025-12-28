package io.rooflet.repository;

import io.rooflet.model.entity.Expense;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;
import java.util.UUID;

public interface ExpenseRepository extends JpaRepository<Expense, UUID> {
    @Query(value = "SELECT e.* FROM expenses e JOIN properties p ON e.property_id = p.id WHERE p.id = :propertyUuid", nativeQuery = true)
    List<Expense> findByProperty(@Param("propertyUuid") UUID propertyUuid);

    @Query(value = "SELECT * FROM expenses WHERE property_id = :propertyUuid", nativeQuery = true)
    List<Expense> findByPropertyId(@Param("propertyUuid") UUID propertyUuid);

    @Query(value = "SELECT * FROM expenses WHERE category = :category", nativeQuery = true)
    List<Expense> findByCategory(@Param("category") String category);

    @Query(value = "SELECT * FROM expenses WHERE expense_date BETWEEN :startDate AND :endDate", nativeQuery = true)
    List<Expense> findByExpenseDateBetween(@Param("startDate") LocalDate startDate, @Param("endDate") LocalDate endDate);

    @Query(value = "SELECT e.* FROM expenses e JOIN properties p ON e.property_id = p.id WHERE p.id = :propertyUuid AND e.expense_date BETWEEN :startDate AND :endDate", nativeQuery = true)
    List<Expense> findByPropertyAndExpenseDateBetween(@Param("propertyUuid") UUID propertyUuid, @Param("startDate") LocalDate startDate, @Param("endDate") LocalDate endDate);

    @Query(value = "SELECT * FROM expenses WHERE property_id = :propertyUuid AND expense_date BETWEEN :startDate AND :endDate", nativeQuery = true)
    List<Expense> findByPropertyIdAndExpenseDateBetween(@Param("propertyUuid") UUID propertyUuid, @Param("startDate") LocalDate startDate, @Param("endDate") LocalDate endDate);

    @Query(value = "SELECT * FROM expenses WHERE property_id IS NULL", nativeQuery = true)
    List<Expense> findByPropertyIsNull();

    @Query(value = "SELECT SUM(e.amount) FROM expenses e WHERE e.property_id = :propertyUuid AND e.expense_date BETWEEN :startDate AND :endDate", nativeQuery = true)
    BigDecimal getTotalExpensesByPropertyAndDateRange(@Param("propertyUuid") UUID propertyUuid,
                                                      @Param("startDate") LocalDate startDate,
                                                      @Param("endDate") LocalDate endDate);

    @Query(value = "SELECT SUM(e.amount) FROM expenses e WHERE e.property_id = :propertyUuid AND e.expense_date BETWEEN :startDate AND :endDate", nativeQuery = true)
    BigDecimal getTotalExpensesByPropertyIdAndDateRange(@Param("propertyUuid") UUID propertyUuid,
                                                        @Param("startDate") LocalDate startDate,
                                                        @Param("endDate") LocalDate endDate);

    @Query(value = "SELECT e.* FROM expenses e LEFT JOIN properties p ON e.property_id = p.id WHERE e.user_id = :ownerUuid OR p.user_id = :ownerUuid ORDER BY e.expense_date DESC", nativeQuery = true)
    List<Expense> findByPropertyOwnerId(@Param("ownerUuid") UUID ownerUuid);

    @Query(value = "SELECT e.* FROM expenses e LEFT JOIN properties p ON e.property_id = p.id WHERE (e.user_id = :ownerUuid OR p.user_id = :ownerUuid) AND e.expense_date BETWEEN :startDate AND :endDate ORDER BY e.expense_date DESC", nativeQuery = true)
    List<Expense> findExpensesByOwnerAndDateRange(@Param("ownerUuid") UUID ownerUuid,
                                                  @Param("startDate") LocalDate startDate,
                                                  @Param("endDate") LocalDate endDate);

    @Query(value = "SELECT e.* FROM expenses e LEFT JOIN properties p ON e.property_id = p.id WHERE e.property_id IS NULL OR p.portfolio_id = :portfolioUuid ORDER BY e.expense_date DESC", nativeQuery = true)
    List<Expense> findByPortfolio(@Param("portfolioUuid") UUID portfolioUuid);

    @Query(value = "SELECT e.* FROM expenses e LEFT JOIN properties p ON e.property_id = p.id WHERE (e.property_id IS NULL OR p.portfolio_id = :portfolioUuid) AND e.expense_date BETWEEN :startDate AND :endDate ORDER BY e.expense_date DESC", nativeQuery = true)
    List<Expense> findExpensesByPortfolioAndDateRange(@Param("portfolioUuid") UUID portfolioUuid,
                                                      @Param("startDate") LocalDate startDate,
                                                      @Param("endDate") LocalDate endDate);
}
