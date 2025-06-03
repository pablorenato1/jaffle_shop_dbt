# 🧇 Jaffle Store Analytics - dbt Project

Welcome to the **Jaffle Store Analytics** project! This is a comprehensive data transformation pipeline built with dbt Core, implementing a modern data stack using the **Medallion Architecture** to transform raw e-commerce data into actionable business insights.

### 🎯 Layer Purposes

- **🥉 Bronze (Staging)**: Clean and standardize raw data while preserving granularity
- **🥈 Silver (Intermediate)**: Apply business logic and create enriched datasets
- **🥇 Gold (Data Marts)**: Analytics-ready tables optimized for reporting and BI tools

## 📊 Data Model Overview

### Raw Data Sources
Our pipeline processes data from 6 core entities:

| Table | Records | Description |
|-------|---------|-------------|
| `raw_customers` | ~900 | Customer master data |
| `raw_orders` | ~61k | Order transactions |
| `raw_items` | ~90k | Order line items |
| `raw_products` | 11 | Product catalog |
| `raw_stores` | 6 | Store locations |
| `raw_supplies` | 65 | Supply chain data |

## 🚀 Getting Started

### Prerequisites
- Python 3.12+
- Raw Jaffle Store data loaded in your database

### Installation

1. **Clone the repository**
   ```bash
   git clone git@github.com:pablorenato1/jaffle_shop_dbt.git
   cd jaffle_shop_dbt
   ```

2. **Install dbt**
   ```bash
   pip install dbt-core
   ```

3. **Configure your profile**
   ```bash
   dbt init
   ```
   Update `~/.dbt/profiles.yml` with your database credentials.

### Running the Project

1. **Install dependencies**
   ```bash
   dbt deps
   ```

2. **Test your connection**
   ```bash
   dbt debug
   ```

3. **Run the full pipeline**
   ```bash
   dbt build
   ```

5. **Generate documentation**
   ```bash
   dbt docs generate
   dbt docs serve
   ```

### Development Workflow

#### Run specific layer
```bash
# Bronze layer only
⚠️ dbt run --models staging

# Silver layer only  
⚠️ dbt run --models intermediate

# Gold layer only
⚠️ dbt run --models marts
```

#### Run specific model and downstream
```bash
dbt run --models stg_customers+
```

#### Run with fresh data
```bash
dbt run --full-refresh
```

## 📈 Key Metrics & KPIs

This project enables analysis of critical business metrics:

- **Customer Analytics**: LTV, CLV, Churn Risk, Segmentation
- **Sales Performance**: Revenue trends, Seasonality, Growth rates
- **Product Analytics**: Best sellers, Profitability, Inventory insights
- **Store Operations**: Performance comparison, Tax efficiency
- **Supply Chain**: Cost analysis, Perishable goods management

## 🧪 Data Quality & Testing

The project includes comprehensive testing:
- **Schema tests**: Not null, unique, accepted values
- **Referential integrity**: Foreign key relationships  
- **Business logic tests**: Custom data quality checks
- **Freshness tests**: Data recency validation

## 📚 Resources

- [dbt Documentation](https://docs.getdbt.com/)
- [Medallion Architecture Guide](https://www.databricks.com/glossary/medallion-architecture)
- [dbt Best Practices](https://docs.getdbt.com/guides/best-practices)

---

**Built with ❤️ using dbt Core and the Medallion Architecture**

*For questions or support, please open an issue or contact the data team.*