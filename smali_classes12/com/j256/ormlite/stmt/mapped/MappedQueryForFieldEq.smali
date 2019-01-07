.class public Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;
.super Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;
.source "MappedQueryForFieldEq.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery",
        "<TT;TID;>;"
    }
.end annotation


# instance fields
.field private final j:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;[Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)V
    .locals 0
    .param p2, "statement"    # Ljava/lang/String;
    .param p3, "argFieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .param p4, "resultsFieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .param p5, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;",
            "Ljava/lang/String;",
            "[",
            "Lcom/j256/ormlite/field/FieldType;",
            "[",
            "Lcom/j256/ormlite/field/FieldType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;, "Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq<TT;TID;>;"
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;-><init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;[Lcom/j256/ormlite/field/FieldType;)V

    .line 23
    iput-object p5, p0, Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;->j:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/field/FieldType;)Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;
    .locals 6
    .param p0, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p2, "idFieldType"    # Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;",
            "Lcom/j256/ormlite/field/FieldType;",
            ")",
            "Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    if-nez p2, :cond_0

    .line 2162
    iget-object p2, p1, Lcom/j256/ormlite/table/TableInfo;->e:Lcom/j256/ormlite/field/FieldType;

    .line 58
    if-nez p2, :cond_0

    .line 59
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Cannot query-for-id with "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3114
    iget-object v3, p1, Lcom/j256/ormlite/table/TableInfo;->a:Ljava/lang/Class;

    .line 59
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " because it doesn\'t have an id field"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;->b(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/field/FieldType;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "statement":Ljava/lang/String;
    new-instance v0, Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;

    const/4 v1, 0x1

    new-array v3, v1, [Lcom/j256/ormlite/field/FieldType;

    const/4 v1, 0x0

    aput-object p2, v3, v1

    .line 3128
    iget-object v4, p1, Lcom/j256/ormlite/table/TableInfo;->c:[Lcom/j256/ormlite/field/FieldType;

    .line 64
    const-string/jumbo v5, "query-for-id"

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;-><init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;[Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)V

    return-object v0
.end method

.method private a([Ljava/lang/Object;)V
    .locals 3
    .param p1, "args"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;, "Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq<TT;TID;>;"
    sget-object v0, Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;->d:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v1, "{} arguments: {}"

    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method protected static b(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/field/FieldType;)Ljava/lang/String;
    .locals 3
    .param p0, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p2, "idFieldType"    # Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;",
            "Lcom/j256/ormlite/field/FieldType;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 72
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "SELECT * FROM "

    .line 4121
    iget-object v2, p1, Lcom/j256/ormlite/table/TableInfo;->b:Ljava/lang/String;

    .line 72
    invoke-static {p0, v0, v1, v2}, Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;->a(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const/4 v1, 0x0

    invoke-static {p0, p2, v0, v1}, Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;->a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/FieldType;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final a(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;
    .locals 12
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p3, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TID;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;, "Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq<TT;TID;>;"
    .local p2, "id":Ljava/lang/Object;, "TID;"
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 30
    if-eqz p3, :cond_0

    .line 31
    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;->f:Ljava/lang/Class;

    invoke-interface {p3, v0, p2}, Lcom/j256/ormlite/dao/ObjectCache;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 32
    .local v11, "result":Ljava/lang/Object;, "TT;"
    if-eqz v11, :cond_0

    .line 51
    .end local v11    # "result":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v11

    .line 36
    :cond_0
    new-array v8, v6, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, p2}, Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v8, v0

    .line 38
    .local v8, "args":[Ljava/lang/Object;
    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;->h:Ljava/lang/String;

    invoke-interface {p1, v0, v8, p0, p3}, Lcom/j256/ormlite/support/DatabaseConnection;->a(Ljava/lang/String;[Ljava/lang/Object;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;

    move-result-object v10

    .line 39
    .local v10, "result":Ljava/lang/Object;
    if-nez v10, :cond_1

    .line 40
    sget-object v0, Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;->d:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v1, "{} using \'{}\' and {} args, got no results"

    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;->h:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/j256/ormlite/logger/Logger;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    :goto_1
    invoke-direct {p0, v8}, Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;->a([Ljava/lang/Object;)V

    .line 51
    move-object v9, v10

    .local v9, "castResult":Ljava/lang/Object;, "TT;"
    move-object v11, v10

    goto :goto_0

    .line 41
    .end local v9    # "castResult":Ljava/lang/Object;, "TT;"
    :cond_1
    sget-object v0, Lcom/j256/ormlite/support/DatabaseConnection;->a:Ljava/lang/Object;

    if-ne v10, v0, :cond_2

    .line 42
    sget-object v0, Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;->d:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v3, "{} using \'{}\' and {} args, got >1 results"

    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;->j:Ljava/lang/String;

    iget-object v5, p0, Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;->h:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1355
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->a(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 43
    invoke-direct {p0, v8}, Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;->a([Ljava/lang/Object;)V

    .line 44
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " got more than 1 result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_2
    sget-object v0, Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;->d:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v1, "{} using \'{}\' and {} args, got 1 result"

    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;->h:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/j256/ormlite/logger/Logger;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method
