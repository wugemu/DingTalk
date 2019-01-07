.class public Lcom/j256/ormlite/stmt/query/Exists;
.super Ljava/lang/Object;
.source "Exists.java"

# interfaces
.implements Lcom/j256/ormlite/stmt/query/Clause;


# instance fields
.field private final a:Lcom/j256/ormlite/stmt/QueryBuilder$InternalQueryBuilderWrapper;


# virtual methods
.method public final a(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 1
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

    .prologue
    .line 27
    .local p4, "argList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/stmt/ArgumentHolder;>;"
    const-string/jumbo v0, "EXISTS ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/Exists;->a:Lcom/j256/ormlite/stmt/QueryBuilder$InternalQueryBuilderWrapper;

    invoke-virtual {v0, p3, p4}, Lcom/j256/ormlite/stmt/QueryBuilder$InternalQueryBuilderWrapper;->a(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 29
    const-string/jumbo v0, ") "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    return-void
.end method
