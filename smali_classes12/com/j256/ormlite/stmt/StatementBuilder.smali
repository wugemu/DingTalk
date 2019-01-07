.class public abstract Lcom/j256/ormlite/stmt/StatementBuilder;
.super Ljava/lang/Object;
.source "StatementBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;,
        Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static a:Lcom/j256/ormlite/logger/Logger;


# instance fields
.field protected final b:Lcom/j256/ormlite/table/TableInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field protected final c:Ljava/lang/String;

.field protected final d:Lcom/j256/ormlite/db/DatabaseType;

.field protected final e:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field protected f:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

.field protected g:Z

.field protected h:Lcom/j256/ormlite/stmt/Where;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/j256/ormlite/stmt/StatementBuilder;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->a(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/stmt/StatementBuilder;->a:Lcom/j256/ormlite/logger/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;)V
    .locals 3
    .param p1, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p4, "type"    # Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;",
            "Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementBuilder;, "Lcom/j256/ormlite/stmt/StatementBuilder<TT;TID;>;"
    .local p2, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    .local p3, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;TID;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->h:Lcom/j256/ormlite/stmt/Where;

    .line 40
    iput-object p1, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->d:Lcom/j256/ormlite/db/DatabaseType;

    .line 41
    iput-object p2, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->b:Lcom/j256/ormlite/table/TableInfo;

    .line 1121
    iget-object v0, p2, Lcom/j256/ormlite/table/TableInfo;->b:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->c:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->e:Lcom/j256/ormlite/dao/Dao;

    .line 44
    iput-object p4, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->f:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    .line 45
    invoke-virtual {p4}, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->isOkForStatementBuilder()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Building a statement from a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " statement is not allowed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 115
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementBuilder;, "Lcom/j256/ormlite/stmt/StatementBuilder<TT;TID;>;"
    .local p1, "argList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/stmt/ArgumentHolder;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 116
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0, p1}, Lcom/j256/ormlite/stmt/StatementBuilder;->c(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "statement":Ljava/lang/String;
    sget-object v2, Lcom/j256/ormlite/stmt/StatementBuilder;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v3, "built statement {}"

    invoke-virtual {v2, v3, v1}, Lcom/j256/ormlite/logger/Logger;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    return-object v1
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 183
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementBuilder;, "Lcom/j256/ormlite/stmt/StatementBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->b:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/table/TableInfo;->a(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/lang/Long;Z)Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;
    .locals 11
    .param p1, "limit"    # Ljava/lang/Long;
    .param p2, "cacheStore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Z)",
            "Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementBuilder;, "Lcom/j256/ormlite/stmt/StatementBuilder<TT;TID;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v9, "argList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/stmt/ArgumentHolder;>;"
    invoke-direct {p0, v9}, Lcom/j256/ormlite/stmt/StatementBuilder;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "statement":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/j256/ormlite/stmt/ArgumentHolder;

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/j256/ormlite/stmt/ArgumentHolder;

    .line 77
    .local v5, "selectArgs":[Lcom/j256/ormlite/stmt/ArgumentHolder;
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/StatementBuilder;->d()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v4

    .line 78
    .local v4, "resultFieldTypes":[Lcom/j256/ormlite/field/FieldType;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Lcom/j256/ormlite/field/FieldType;

    .line 79
    .local v3, "argFieldTypes":[Lcom/j256/ormlite/field/FieldType;
    const/4 v10, 0x0

    .local v10, "selectC":I
    :goto_0
    array-length v0, v5

    if-ge v10, v0, :cond_0

    .line 80
    aget-object v0, v5, v10

    invoke-interface {v0}, Lcom/j256/ormlite/stmt/ArgumentHolder;->c()Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    aput-object v0, v3, v10

    .line 79
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->f:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->isOkForStatementBuilder()Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Building a statement from a "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->f:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " statement is not allowed"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1
    new-instance v0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->b:Lcom/j256/ormlite/table/TableInfo;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->f:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    move v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;-><init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;[Lcom/j256/ormlite/field/FieldType;[Lcom/j256/ormlite/stmt/ArgumentHolder;Ljava/lang/Long;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;Z)V

    return-object v0
.end method

.method protected abstract a(Ljava/lang/StringBuilder;Ljava/util/List;)V
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
.end method

.method protected a(Ljava/lang/StringBuilder;Ljava/util/List;Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;)Z
    .locals 5
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

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementBuilder;, "Lcom/j256/ormlite/stmt/StatementBuilder<TT;TID;>;"
    .local p2, "argList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/stmt/ArgumentHolder;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->h:Lcom/j256/ormlite/stmt/Where;

    if-nez v0, :cond_1

    .line 148
    sget-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->FIRST:Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    if-ne p3, v0, :cond_0

    move v0, v1

    .line 153
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 148
    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {p3, p1}, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->appendBefore(Ljava/lang/StringBuilder;)V

    .line 151
    iget-object v3, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->h:Lcom/j256/ormlite/stmt/Where;

    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->g:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/StatementBuilder;->e()Ljava/lang/String;

    move-result-object v0

    .line 1546
    :goto_1
    iget v4, v3, Lcom/j256/ormlite/stmt/Where;->b:I

    if-nez v4, :cond_3

    .line 1547
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No where clauses defined.  Did you miss a where operation?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1549
    :cond_3
    iget v4, v3, Lcom/j256/ormlite/stmt/Where;->b:I

    if-eq v4, v1, :cond_4

    .line 1550
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Both the \"left-hand\" and \"right-hand\" clauses have been defined.  Did you miss an AND or OR?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1553
    :cond_4
    iget-object v1, v3, Lcom/j256/ormlite/stmt/Where;->c:Lcom/j256/ormlite/stmt/query/NeedsFutureClause;

    if-eqz v1, :cond_5

    .line 1554
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The SQL statement has not been finished since there are previous operations still waiting for clauses."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1559
    :cond_5
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->c()Lcom/j256/ormlite/stmt/query/Clause;

    move-result-object v1

    iget-object v3, v3, Lcom/j256/ormlite/stmt/Where;->a:Lcom/j256/ormlite/db/DatabaseType;

    invoke-interface {v1, v3, v0, p1, p2}, Lcom/j256/ormlite/stmt/query/Clause;->a(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 152
    invoke-virtual {p3, p1}, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->appendAfter(Ljava/lang/StringBuilder;)V

    move v0, v2

    .line 153
    goto :goto_0
.end method

.method protected abstract b(Ljava/lang/StringBuilder;Ljava/util/List;)V
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
.end method

.method protected final c(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 1
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

    .prologue
    .line 132
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementBuilder;, "Lcom/j256/ormlite/stmt/StatementBuilder<TT;TID;>;"
    .local p2, "argList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/stmt/ArgumentHolder;>;"
    invoke-virtual {p0, p1, p2}, Lcom/j256/ormlite/stmt/StatementBuilder;->a(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 133
    sget-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->FIRST:Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    invoke-virtual {p0, p1, p2, v0}, Lcom/j256/ormlite/stmt/StatementBuilder;->a(Ljava/lang/StringBuilder;Ljava/util/List;Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;)Z

    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/j256/ormlite/stmt/StatementBuilder;->b(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 135
    return-void
.end method

.method protected d()[Lcom/j256/ormlite/field/FieldType;
    .locals 1

    .prologue
    .line 173
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementBuilder;, "Lcom/j256/ormlite/stmt/StatementBuilder<TT;TID;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementBuilder;, "Lcom/j256/ormlite/stmt/StatementBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Lcom/j256/ormlite/stmt/Where;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementBuilder;, "Lcom/j256/ormlite/stmt/StatementBuilder<TT;TID;>;"
    new-instance v0, Lcom/j256/ormlite/stmt/Where;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->b:Lcom/j256/ormlite/table/TableInfo;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->d:Lcom/j256/ormlite/db/DatabaseType;

    invoke-direct {v0, v1, p0, v2}, Lcom/j256/ormlite/stmt/Where;-><init>(Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/stmt/StatementBuilder;Lcom/j256/ormlite/db/DatabaseType;)V

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->h:Lcom/j256/ormlite/stmt/Where;

    .line 57
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->h:Lcom/j256/ormlite/stmt/Where;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementBuilder;, "Lcom/j256/ormlite/stmt/StatementBuilder<TT;TID;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v0, "argList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/stmt/ArgumentHolder;>;"
    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/StatementBuilder;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
