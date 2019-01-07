.class public Lcom/j256/ormlite/stmt/QueryBuilder;
.super Lcom/j256/ormlite/stmt/StatementBuilder;
.source "QueryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/stmt/QueryBuilder$JoinWhereOperation;,
        Lcom/j256/ormlite/stmt/QueryBuilder$JoinType;,
        Lcom/j256/ormlite/stmt/QueryBuilder$InternalQueryBuilderWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/j256/ormlite/stmt/StatementBuilder",
        "<TT;TID;>;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/j256/ormlite/field/FieldType;

.field private j:[Lcom/j256/ormlite/field/FieldType;

.field private k:Z

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/stmt/query/OrderBy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;)V
    .locals 1
    .param p1, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    .local p2, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    .local p3, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;TID;>;"
    sget-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/j256/ormlite/stmt/StatementBuilder;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;)V

    .line 1162
    iget-object v0, p2, Lcom/j256/ormlite/table/TableInfo;->e:Lcom/j256/ormlite/field/FieldType;

    .line 54
    iput-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->i:Lcom/j256/ormlite/field/FieldType;

    .line 55
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->i:Lcom/j256/ormlite/field/FieldType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->k:Z

    .line 56
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 543
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->d:Lcom/j256/ormlite/db/DatabaseType;

    .line 13548
    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->c:Ljava/lang/String;

    .line 543
    invoke-interface {v0, p1, v1}, Lcom/j256/ormlite/db/DatabaseType;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 544
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lcom/j256/ormlite/field/FieldType;",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/field/FieldType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 740
    .line 14455
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    .local p3, "fieldTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/field/FieldType;>;"
    iget-object v0, p2, Lcom/j256/ormlite/field/FieldType;->b:Ljava/lang/String;

    .line 740
    invoke-direct {p0, p1, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 742
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 863
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->g:Z

    if-eqz v0, :cond_0

    .line 864
    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->a(Ljava/lang/StringBuilder;)V

    .line 865
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->d:Lcom/j256/ormlite/db/DatabaseType;

    invoke-interface {v0, p1, p2}, Lcom/j256/ormlite/db/DatabaseType;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 868
    return-void
.end method


# virtual methods
.method public final a()Lcom/j256/ormlite/stmt/PreparedQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/PreparedQuery",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->a:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 102
    .local v0, "cacheStore":Z
    :goto_0
    const/4 v1, 0x0

    invoke-super {p0, v1, v0}, Lcom/j256/ormlite/stmt/StatementBuilder;->a(Ljava/lang/Long;Z)Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;

    move-result-object v1

    return-object v1

    .line 101
    .end local v0    # "cacheStore":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 4
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "ascending"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<TT;TID;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 176
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->a(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    .line 177
    .local v0, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v0}, Lcom/j256/ormlite/field/FieldType;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Can\'t orderBy foreign colletion field: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_0
    new-instance v1, Lcom/j256/ormlite/stmt/query/OrderBy;

    invoke-direct {v1, p1, p2}, Lcom/j256/ormlite/stmt/query/OrderBy;-><init>(Ljava/lang/String;Z)V

    .line 1552
    iget-object v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->l:Ljava/util/List;

    if-nez v2, :cond_1

    .line 1553
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->l:Ljava/util/List;

    .line 1555
    :cond_1
    iget-object v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    return-object p0
.end method

.method protected final a(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 9
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    .local p2, "argList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/stmt/ArgumentHolder;>;"
    const/16 v8, 0x20

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 469
    .line 1567
    iput-boolean v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->g:Z

    .line 473
    const-string/jumbo v0, "SELECT "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1672
    sget-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    iput-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->f:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    .line 1675
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->a:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1676
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->g:Z

    if-eqz v0, :cond_0

    .line 1677
    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->a(Ljava/lang/StringBuilder;)V

    .line 1678
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1680
    :cond_0
    const-string/jumbo v0, "* "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1681
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->b:Lcom/j256/ormlite/table/TableInfo;

    .line 2128
    iget-object v0, v0, Lcom/j256/ormlite/table/TableInfo;->c:[Lcom/j256/ormlite/field/FieldType;

    .line 1681
    iput-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->j:[Lcom/j256/ormlite/field/FieldType;

    .line 487
    :goto_0
    const-string/jumbo v0, "FROM "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->d:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->c:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/j256/ormlite/db/DatabaseType;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 492
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 496
    return-void

    .line 1692
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1693
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v2

    move v1, v4

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;

    .line 3031
    iget-object v7, v0, Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;->b:Ljava/lang/String;

    .line 1694
    if-eqz v7, :cond_3

    .line 1696
    sget-object v7, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT_RAW:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    iput-object v7, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->f:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    .line 1697
    if-eqz v1, :cond_2

    move v1, v2

    .line 4031
    :goto_2
    iget-object v0, v0, Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;->b:Ljava/lang/String;

    .line 1702
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1700
    :cond_2
    const-string/jumbo v7, ", "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1705
    :cond_3
    iget-object v7, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->b:Lcom/j256/ormlite/table/TableInfo;

    .line 5027
    iget-object v0, v0, Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;->a:Ljava/lang/String;

    .line 1705
    invoke-virtual {v7, v0}, Lcom/j256/ormlite/table/TableInfo;->a(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    .line 1710
    invoke-virtual {v0}, Lcom/j256/ormlite/field/FieldType;->h()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1711
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1714
    :cond_4
    if-eqz v1, :cond_5

    move v1, v2

    .line 1719
    :goto_3
    invoke-direct {p0, p1, v0, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->a(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;)V

    .line 1720
    iget-object v7, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->i:Lcom/j256/ormlite/field/FieldType;

    if-ne v0, v7, :cond_a

    move v0, v4

    :goto_4
    move v3, v0

    .line 1723
    goto :goto_1

    .line 1717
    :cond_5
    const-string/jumbo v7, ", "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1725
    :cond_6
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->f:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    sget-object v2, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT_RAW:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    if-eq v0, v2, :cond_9

    .line 1727
    if-nez v3, :cond_8

    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->k:Z

    if-eqz v0, :cond_8

    .line 1728
    if-nez v1, :cond_7

    .line 1729
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1731
    :cond_7
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->i:Lcom/j256/ormlite/field/FieldType;

    invoke-direct {p0, p1, v0, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->a(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;)V

    .line 1734
    :cond_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/j256/ormlite/field/FieldType;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/j256/ormlite/field/FieldType;

    iput-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->j:[Lcom/j256/ormlite/field/FieldType;

    .line 1736
    :cond_9
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_a
    move v0, v3

    goto :goto_4
.end method

.method protected final a(Ljava/lang/StringBuilder;Ljava/util/List;Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;)Z
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "operation"    # Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;",
            "Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 506
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    .local p2, "argList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/stmt/ArgumentHolder;>;"
    sget-object v1, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->FIRST:Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    if-ne p3, v1, :cond_1

    const/4 v0, 0x1

    .line 507
    .local v0, "first":Z
    :goto_0
    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->h:Lcom/j256/ormlite/stmt/Where;

    if-eqz v1, :cond_0

    .line 508
    invoke-super {p0, p1, p2, p3}, Lcom/j256/ormlite/stmt/StatementBuilder;->a(Ljava/lang/StringBuilder;Ljava/util/List;Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;)Z

    move-result v0

    .line 520
    :cond_0
    return v0

    .line 506
    .end local v0    # "first":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 366
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->e:Lcom/j256/ormlite/dao/Dao;

    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/QueryBuilder;->a()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->b(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    .local p2, "argList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/stmt/ArgumentHolder;>;"
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 526
    .line 8829
    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->l:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v0

    .line 8810
    :goto_0
    if-eqz v1, :cond_4

    .line 8834
    const-string/jumbo v1, "ORDER BY "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8836
    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/stmt/query/OrderBy;

    .line 8837
    if-eqz v1, :cond_2

    move v1, v2

    .line 10034
    :goto_2
    iget-object v4, v0, Lcom/j256/ormlite/stmt/query/OrderBy;->a:Ljava/lang/String;

    .line 8843
    invoke-direct {p0, p1, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 10038
    iget-boolean v0, v0, Lcom/j256/ormlite/stmt/query/OrderBy;->b:Z

    .line 8844
    if-nez v0, :cond_0

    .line 8848
    const-string/jumbo v0, " DESC"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    move v1, v2

    .line 8829
    goto :goto_0

    .line 8840
    :cond_2
    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 8859
    :cond_3
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12567
    :cond_4
    iput-boolean v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->g:Z

    .line 535
    return-void
.end method

.method public final c()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 380
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->e:Lcom/j256/ormlite/dao/Dao;

    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/QueryBuilder;->a()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->a(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final d()[Lcom/j256/ormlite/field/FieldType;
    .locals 1

    .prologue
    .line 500
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->j:[Lcom/j256/ormlite/field/FieldType;

    return-object v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 548
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->c:Ljava/lang/String;

    return-object v0
.end method
