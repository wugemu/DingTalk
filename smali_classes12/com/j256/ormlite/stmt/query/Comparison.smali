.class interface abstract Lcom/j256/ormlite/stmt/query/Comparison;
.super Ljava/lang/Object;
.source "Comparison.java"

# interfaces
.implements Lcom/j256/ormlite/stmt/query/Clause;


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
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

.method public abstract a(Ljava/lang/StringBuilder;)V
.end method
