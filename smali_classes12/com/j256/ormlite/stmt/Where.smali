.class public Lcom/j256/ormlite/stmt/Where;
.super Ljava/lang/Object;
.source "Where.java"


# annotations
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


# instance fields
.field final a:Lcom/j256/ormlite/db/DatabaseType;

.field b:I

.field c:Lcom/j256/ormlite/stmt/query/NeedsFutureClause;

.field private final d:Lcom/j256/ormlite/table/TableInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/j256/ormlite/stmt/StatementBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/StatementBuilder",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/j256/ormlite/field/FieldType;

.field private final g:Ljava/lang/String;

.field private h:[Lcom/j256/ormlite/stmt/query/Clause;


# direct methods
.method constructor <init>(Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/stmt/StatementBuilder;Lcom/j256/ormlite/db/DatabaseType;)V
    .locals 2
    .param p3, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;",
            "Lcom/j256/ormlite/stmt/StatementBuilder",
            "<TT;TID;>;",
            "Lcom/j256/ormlite/db/DatabaseType;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    .local p2, "statementBuilder":Lcom/j256/ormlite/stmt/StatementBuilder;, "Lcom/j256/ormlite/stmt/StatementBuilder<TT;TID;>;"
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/j256/ormlite/stmt/query/Clause;

    iput-object v0, p0, Lcom/j256/ormlite/stmt/Where;->h:[Lcom/j256/ormlite/stmt/query/Clause;

    .line 111
    iput-object v1, p0, Lcom/j256/ormlite/stmt/Where;->c:Lcom/j256/ormlite/stmt/query/NeedsFutureClause;

    .line 115
    iput-object p1, p0, Lcom/j256/ormlite/stmt/Where;->d:Lcom/j256/ormlite/table/TableInfo;

    .line 116
    iput-object p2, p0, Lcom/j256/ormlite/stmt/Where;->e:Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 1162
    iget-object v0, p1, Lcom/j256/ormlite/table/TableInfo;->e:Lcom/j256/ormlite/field/FieldType;

    .line 117
    iput-object v0, p0, Lcom/j256/ormlite/stmt/Where;->f:Lcom/j256/ormlite/field/FieldType;

    .line 118
    iget-object v0, p0, Lcom/j256/ormlite/stmt/Where;->f:Lcom/j256/ormlite/field/FieldType;

    if-nez v0, :cond_0

    .line 119
    iput-object v1, p0, Lcom/j256/ormlite/stmt/Where;->g:Ljava/lang/String;

    .line 123
    :goto_0
    iput-object p3, p0, Lcom/j256/ormlite/stmt/Where;->a:Lcom/j256/ormlite/db/DatabaseType;

    .line 124
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/Where;->f:Lcom/j256/ormlite/field/FieldType;

    .line 1455
    iget-object v0, v0, Lcom/j256/ormlite/field/FieldType;->b:Ljava/lang/String;

    .line 121
    iput-object v0, p0, Lcom/j256/ormlite/stmt/Where;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method private b(Lcom/j256/ormlite/stmt/query/Clause;)V
    .locals 5
    .param p1, "clause"    # Lcom/j256/ormlite/stmt/query/Clause;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 654
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    iget v2, p0, Lcom/j256/ormlite/stmt/Where;->b:I

    iget-object v3, p0, Lcom/j256/ormlite/stmt/Where;->h:[Lcom/j256/ormlite/stmt/query/Clause;

    array-length v3, v3

    if-ne v2, v3, :cond_1

    .line 656
    iget v2, p0, Lcom/j256/ormlite/stmt/Where;->b:I

    mul-int/lit8 v2, v2, 0x2

    new-array v1, v2, [Lcom/j256/ormlite/stmt/query/Clause;

    .line 658
    .local v1, "newStack":[Lcom/j256/ormlite/stmt/query/Clause;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/j256/ormlite/stmt/Where;->b:I

    if-ge v0, v2, :cond_0

    .line 659
    iget-object v2, p0, Lcom/j256/ormlite/stmt/Where;->h:[Lcom/j256/ormlite/stmt/query/Clause;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 661
    iget-object v2, p0, Lcom/j256/ormlite/stmt/Where;->h:[Lcom/j256/ormlite/stmt/query/Clause;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 658
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 663
    :cond_0
    iput-object v1, p0, Lcom/j256/ormlite/stmt/Where;->h:[Lcom/j256/ormlite/stmt/query/Clause;

    .line 665
    .end local v0    # "i":I
    .end local v1    # "newStack":[Lcom/j256/ormlite/stmt/query/Clause;
    :cond_1
    iget-object v2, p0, Lcom/j256/ormlite/stmt/Where;->h:[Lcom/j256/ormlite/stmt/query/Clause;

    iget v3, p0, Lcom/j256/ormlite/stmt/Where;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/j256/ormlite/stmt/Where;->b:I

    aput-object p1, v2, v3

    .line 666
    return-void
.end method


# virtual methods
.method public final a()Lcom/j256/ormlite/stmt/Where;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 130
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    new-instance v0, Lcom/j256/ormlite/stmt/query/ManyClause;

    const-string/jumbo v1, "AND"

    .line 1669
    iget v2, p0, Lcom/j256/ormlite/stmt/Where;->b:I

    if-nez v2, :cond_0

    .line 1670
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Expecting there to be a clause already defined for \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\' operation"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1673
    :cond_0
    iget-object v1, p0, Lcom/j256/ormlite/stmt/Where;->h:[Lcom/j256/ormlite/stmt/query/Clause;

    iget v2, p0, Lcom/j256/ormlite/stmt/Where;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/j256/ormlite/stmt/Where;->b:I

    aget-object v1, v1, v2

    .line 1675
    iget-object v2, p0, Lcom/j256/ormlite/stmt/Where;->h:[Lcom/j256/ormlite/stmt/query/Clause;

    iget v3, p0, Lcom/j256/ormlite/stmt/Where;->b:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 130
    const-string/jumbo v2, "AND"

    invoke-direct {v0, v1, v2}, Lcom/j256/ormlite/stmt/query/ManyClause;-><init>(Lcom/j256/ormlite/stmt/query/Clause;Ljava/lang/String;)V

    .line 131
    .local v0, "clause":Lcom/j256/ormlite/stmt/query/ManyClause;
    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/Where;->b(Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 132
    invoke-virtual {p0, v0}, Lcom/j256/ormlite/stmt/Where;->a(Lcom/j256/ormlite/stmt/query/NeedsFutureClause;)V

    .line 133
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    .locals 3
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/j256/ormlite/stmt/Where",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 192
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    new-instance v0, Lcom/j256/ormlite/stmt/query/SimpleComparison;

    .line 2649
    iget-object v1, p0, Lcom/j256/ormlite/stmt/Where;->d:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1, p1}, Lcom/j256/ormlite/table/TableInfo;->a(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    .line 192
    const-string/jumbo v2, "="

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/j256/ormlite/stmt/query/SimpleComparison;-><init>(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/stmt/Where;->a(Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 194
    return-object p0
.end method

.method public a(Lcom/j256/ormlite/stmt/query/Clause;)V
    .locals 1
    .param p1, "clause"    # Lcom/j256/ormlite/stmt/query/Clause;

    .prologue
    .line 639
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/Where;->c:Lcom/j256/ormlite/stmt/query/NeedsFutureClause;

    if-nez v0, :cond_0

    .line 640
    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/Where;->b(Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 646
    :goto_0
    return-void

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/Where;->c:Lcom/j256/ormlite/stmt/query/NeedsFutureClause;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/stmt/query/NeedsFutureClause;->a(Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 644
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/Where;->c:Lcom/j256/ormlite/stmt/query/NeedsFutureClause;

    goto :goto_0
.end method

.method public a(Lcom/j256/ormlite/stmt/query/NeedsFutureClause;)V
    .locals 3
    .param p1, "clause"    # Lcom/j256/ormlite/stmt/query/NeedsFutureClause;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 631
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/Where;->c:Lcom/j256/ormlite/stmt/query/NeedsFutureClause;

    if-eqz v0, :cond_0

    .line 632
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/j256/ormlite/stmt/Where;->c:Lcom/j256/ormlite/stmt/query/NeedsFutureClause;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is already waiting for a future clause, can\'t add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 635
    :cond_0
    iput-object p1, p0, Lcom/j256/ormlite/stmt/Where;->c:Lcom/j256/ormlite/stmt/query/NeedsFutureClause;

    .line 636
    return-void
.end method

.method public final b()Lcom/j256/ormlite/stmt/PreparedQuery;
    .locals 3
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

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 473
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/Where;->e:Lcom/j256/ormlite/stmt/StatementBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/StatementBuilder;->a(Ljava/lang/Long;Z)Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;

    move-result-object v0

    return-object v0
.end method

.method c()Lcom/j256/ormlite/stmt/query/Clause;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 680
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/Where;->h:[Lcom/j256/ormlite/stmt/query/Clause;

    iget v1, p0, Lcom/j256/ormlite/stmt/Where;->b:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 564
    .local p0, "this":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    iget v1, p0, Lcom/j256/ormlite/stmt/Where;->b:I

    if-nez v1, :cond_0

    .line 565
    const-string/jumbo v1, "empty where clause"

    .line 568
    :goto_0
    return-object v1

    .line 567
    :cond_0
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/Where;->c()Lcom/j256/ormlite/stmt/query/Clause;

    move-result-object v0

    .line 568
    .local v0, "clause":Lcom/j256/ormlite/stmt/query/Clause;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "where clause: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
