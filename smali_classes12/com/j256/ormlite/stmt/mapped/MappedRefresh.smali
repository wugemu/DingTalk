.class public Lcom/j256/ormlite/stmt/mapped/MappedRefresh;
.super Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;
.source "MappedRefresh.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq",
        "<TT;TID;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;[Lcom/j256/ormlite/field/FieldType;)V
    .locals 6
    .param p2, "statement"    # Ljava/lang/String;
    .param p3, "argFieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .param p4, "resultFieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
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
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/MappedRefresh;, "Lcom/j256/ormlite/stmt/mapped/MappedRefresh<TT;TID;>;"
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    const-string/jumbo v5, "refresh"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;-><init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;[Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedRefresh;
    .locals 6
    .param p0, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;)",
            "Lcom/j256/ormlite/stmt/mapped/MappedRefresh",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 48
    .line 1162
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    iget-object v0, p1, Lcom/j256/ormlite/table/TableInfo;->e:Lcom/j256/ormlite/field/FieldType;

    .line 49
    .local v0, "idField":Lcom/j256/ormlite/field/FieldType;
    if-nez v0, :cond_0

    .line 50
    new-instance v2, Ljava/sql/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Cannot refresh "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2114
    iget-object v4, p1, Lcom/j256/ormlite/table/TableInfo;->a:Ljava/lang/Class;

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " because it doesn\'t have an id field"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/j256/ormlite/stmt/mapped/MappedRefresh;->b(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/field/FieldType;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "statement":Ljava/lang/String;
    new-instance v2, Lcom/j256/ormlite/stmt/mapped/MappedRefresh;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/j256/ormlite/field/FieldType;

    const/4 v4, 0x0

    .line 2162
    iget-object v5, p1, Lcom/j256/ormlite/table/TableInfo;->e:Lcom/j256/ormlite/field/FieldType;

    .line 54
    aput-object v5, v3, v4

    .line 3128
    iget-object v4, p1, Lcom/j256/ormlite/table/TableInfo;->c:[Lcom/j256/ormlite/field/FieldType;

    .line 54
    invoke-direct {v2, p1, v1, v3, v4}, Lcom/j256/ormlite/stmt/mapped/MappedRefresh;-><init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;[Lcom/j256/ormlite/field/FieldType;)V

    return-object v2
.end method


# virtual methods
.method public final b(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 8
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p3, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TT;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/MappedRefresh;, "Lcom/j256/ormlite/stmt/mapped/MappedRefresh<TT;TID;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    const/4 v6, 0x0

    .line 31
    iget-object v7, p0, Lcom/j256/ormlite/stmt/mapped/MappedRefresh;->g:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v7, p2}, Lcom/j256/ormlite/field/FieldType;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 33
    .local v3, "id":Ljava/lang/Object;, "TID;"
    const/4 v7, 0x0

    invoke-super {p0, p1, v3, v7}, Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;->a(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;

    move-result-object v5

    .line 34
    .local v5, "result":Ljava/lang/Object;, "TT;"
    if-nez v5, :cond_0

    .line 43
    :goto_0
    return v6

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedRefresh;->a:[Lcom/j256/ormlite/field/FieldType;

    .local v0, "arr$":[Lcom/j256/ormlite/field/FieldType;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v1, v0, v2

    .line 39
    .local v1, "fieldType":Lcom/j256/ormlite/field/FieldType;
    iget-object v7, p0, Lcom/j256/ormlite/stmt/mapped/MappedRefresh;->g:Lcom/j256/ormlite/field/FieldType;

    if-eq v1, v7, :cond_1

    .line 40
    invoke-virtual {v1, v5}, Lcom/j256/ormlite/field/FieldType;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, p2, v7, v6, p3}, Lcom/j256/ormlite/field/FieldType;->a(Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    .line 38
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 43
    .end local v1    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_2
    const/4 v6, 0x1

    goto :goto_0
.end method
