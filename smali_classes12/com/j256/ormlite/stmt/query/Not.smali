.class public Lcom/j256/ormlite/stmt/query/Not;
.super Ljava/lang/Object;
.source "Not.java"

# interfaces
.implements Lcom/j256/ormlite/stmt/query/Clause;
.implements Lcom/j256/ormlite/stmt/query/NeedsFutureClause;


# instance fields
.field private a:Lcom/j256/ormlite/stmt/query/Comparison;

.field private b:Lcom/j256/ormlite/stmt/query/Exists;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->a:Lcom/j256/ormlite/stmt/query/Comparison;

    .line 18
    iput-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->b:Lcom/j256/ormlite/stmt/query/Exists;

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 2
    .param p1, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Ljava/lang/String;",
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

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    .local p4, "selectArgList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/stmt/ArgumentHolder;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->a:Lcom/j256/ormlite/stmt/query/Comparison;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->b:Lcom/j256/ormlite/stmt/query/Exists;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Clause has not been set in NOT operation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->a:Lcom/j256/ormlite/stmt/query/Comparison;

    if-nez v0, :cond_1

    .line 57
    const-string/jumbo v0, "(NOT "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->b:Lcom/j256/ormlite/stmt/query/Exists;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/j256/ormlite/stmt/query/Exists;->a(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 70
    :goto_0
    const-string/jumbo v0, ") "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    return-void

    .line 60
    :cond_1
    const-string/jumbo v0, "(NOT "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    if-eqz p2, :cond_2

    .line 62
    invoke-interface {p1, p3, p2}, Lcom/j256/ormlite/db/DatabaseType;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 63
    const/16 v0, 0x2e

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->a:Lcom/j256/ormlite/stmt/query/Comparison;

    invoke-interface {v0}, Lcom/j256/ormlite/stmt/query/Comparison;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p3, v0}, Lcom/j256/ormlite/db/DatabaseType;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 66
    const/16 v0, 0x20

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->a:Lcom/j256/ormlite/stmt/query/Comparison;

    invoke-interface {v0, p3}, Lcom/j256/ormlite/stmt/query/Comparison;->a(Ljava/lang/StringBuilder;)V

    .line 68
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->a:Lcom/j256/ormlite/stmt/query/Comparison;

    invoke-interface {v0, p1, p3, p4}, Lcom/j256/ormlite/stmt/query/Comparison;->a(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_0
.end method

.method public final a(Lcom/j256/ormlite/stmt/query/Clause;)V
    .locals 3
    .param p1, "clause"    # Lcom/j256/ormlite/stmt/query/Clause;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->a:Lcom/j256/ormlite/stmt/query/Comparison;

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "NOT operation already has a comparison set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    instance-of v0, p1, Lcom/j256/ormlite/stmt/query/Comparison;

    if-eqz v0, :cond_1

    .line 41
    check-cast p1, Lcom/j256/ormlite/stmt/query/Comparison;

    .end local p1    # "clause":Lcom/j256/ormlite/stmt/query/Clause;
    iput-object p1, p0, Lcom/j256/ormlite/stmt/query/Not;->a:Lcom/j256/ormlite/stmt/query/Comparison;

    .line 43
    :goto_0
    return-void

    .line 42
    .restart local p1    # "clause":Lcom/j256/ormlite/stmt/query/Clause;
    :cond_1
    instance-of v0, p1, Lcom/j256/ormlite/stmt/query/Exists;

    if-eqz v0, :cond_2

    .line 43
    check-cast p1, Lcom/j256/ormlite/stmt/query/Exists;

    .end local p1    # "clause":Lcom/j256/ormlite/stmt/query/Clause;
    iput-object p1, p0, Lcom/j256/ormlite/stmt/query/Not;->b:Lcom/j256/ormlite/stmt/query/Exists;

    goto :goto_0

    .line 45
    .restart local p1    # "clause":Lcom/j256/ormlite/stmt/query/Clause;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "NOT operation can only work with comparison SQL clauses, not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/Not;->a:Lcom/j256/ormlite/stmt/query/Comparison;

    if-nez v0, :cond_0

    .line 76
    const-string/jumbo v0, "NOT without comparison"

    .line 78
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "NOT comparison "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/j256/ormlite/stmt/query/Not;->a:Lcom/j256/ormlite/stmt/query/Comparison;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
