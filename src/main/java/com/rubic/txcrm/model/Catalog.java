package com.rubic.txcrm.model;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "tx_catalog")
public class Catalog implements Serializable {

    @Id
    @Column(name = "catalog_id")
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Integer catalogId;

    @Column(name = "catalog_name")
    private String catalogName;

    @Column(name = "catalog_type")
    private String catalogType;

    public Integer getCatalogId() {
        return catalogId;
    }

    public void setCatalogId(Integer catalogId) {
        this.catalogId = catalogId;
    }

    public String getCatalogName() {
        return catalogName;
    }

    public void setCatalogName(String catalogName) {
        this.catalogName = catalogName;
    }

    public String getCatalogType() {
        return catalogType;
    }

    public void setCatalogType(String catalogType) {
        this.catalogType = catalogType;
    }
}
