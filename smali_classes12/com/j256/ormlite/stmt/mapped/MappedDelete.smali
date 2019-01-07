.class public Lcom/j256/ormlite/stmt/mapped/MappedDelete;
.super Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;
.source "MappedDelete.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement",
        "<TT;TID;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;)V
    .locals 0
    .param p2, "statement"    # Ljava/lang/String;
    .param p3, "argFieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;",
            "Ljava/lang/String;",
            "[",
            "Lcom/j256/ormlite/field/FieldType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/MappedDelete;, "Lcom/j256/ormlite/stmt/mapped/MappedDelete<TT;TID;>;"
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;-><init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;)V

    .line 21
    return-void
.end method

.method public static a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedDelete;
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
            "Lcom/j256/ormlite/stmt/mapped/MappedDelete",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 25
    .line 1162
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    iget-object v0, p1, Lcom/j256/ormlite/table/TableInfo;->e:Lcom/j256/ormlite/field/FieldType;

    .line 26
    .local v0, "idField":Lcom/j256/ormlite/field/FieldType;
    if-nez v0, :cond_0

    .line 27
    new-instance v2, Ljava/sql/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Cannot delete from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2114
    iget-object v4, p1, Lcom/j256/ormlite/table/TableInfo;->a:Ljava/lang/Class;

    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " because it doesn\'t have an id field"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 30
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 31
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "DELETE FROM "

    .line 2121
    iget-object v3, p1, Lcom/j256/ormlite/table/TableInfo;->b:Ljava/lang/String;

    .line 31
    invoke-static {p0, v1, v2, v3}, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->a(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/FieldType;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 33
    new-instance v2, Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/j256/ormlite/field/FieldType;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-direct {v2, p1, v3, v4}, Lcom/j256/ormlite/stmt/mapped/MappedDelete;-><init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;)V

    return-object v2
.end method


# virtual methods
.method public final a(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 9
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

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 41
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/MappedDelete;, "Lcom/j256/ormlite/stmt/mapped/MappedDelete<TT;TID;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->a(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 42
    .local v0, "args":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->i:[Lcom/j256/ormlite/field/FieldType;

    invoke-interface {p1, v4, v0, v5}, Lcom/j256/ormlite/support/DatabaseConnection;->b(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)I

    move-result v3

    .line 43
    .local v3, "rowC":I
    sget-object v4, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->d:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v5, "delete data with statement \'{}\' and {} args, changed {} rows"

    iget-object v6, p0, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->h:Ljava/lang/String;

    array-length v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/j256/ormlite/logger/Logger;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    array-length v4, v0

    if-lez v4, :cond_0

    .line 46
    sget-object v4, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->d:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v5, "delete arguments: {}"

    invoke-virtual {v4, v5, v0}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    :cond_0
    if-lez v3, :cond_1

    if-eqz p3, :cond_1

    .line 49
    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->g:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v4, p2}, Lcom/j256/ormlite/field/FieldType;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 50
    .local v2, "id":Ljava/lang/Object;
    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->f:Ljava/lang/Class;

    invoke-interface {p3, v4, v2}, Lcom/j256/ormlite/dao/ObjectCache;->b(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v2    # "id":Ljava/lang/Object;
    :cond_1
    return v3

    .line 53
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v3    # "rowC":I
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/sql/SQLException;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unable to run delete stmt on object "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v4

    throw v4
.end method
