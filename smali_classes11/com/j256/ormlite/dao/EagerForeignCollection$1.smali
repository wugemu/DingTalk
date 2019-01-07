.class Lcom/j256/ormlite/dao/EagerForeignCollection$1;
.super Ljava/lang/Object;
.source "EagerForeignCollection.java"

# interfaces
.implements Lcom/j256/ormlite/dao/CloseableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/j256/ormlite/dao/EagerForeignCollection;->iteratorThrow(I)Lcom/j256/ormlite/dao/CloseableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/dao/CloseableIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/j256/ormlite/dao/EagerForeignCollection;

.field private b:I


# direct methods
.method constructor <init>(Lcom/j256/ormlite/dao/EagerForeignCollection;)V
    .locals 1

    .prologue
    .line 75
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection$1;, "Lcom/j256/ormlite/dao/EagerForeignCollection.1;"
    iput-object p1, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->a:Lcom/j256/ormlite/dao/EagerForeignCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 168
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection$1;, "Lcom/j256/ormlite/dao/EagerForeignCollection.1;"
    iget v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->b:I

    .line 169
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 156
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection$1;, "Lcom/j256/ormlite/dao/EagerForeignCollection.1;"
    return-void
.end method

.method public hasNext()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 79
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection$1;, "Lcom/j256/ormlite/dao/EagerForeignCollection.1;"
    iget v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->a:Lcom/j256/ormlite/dao/EagerForeignCollection;

    invoke-static {v1}, Lcom/j256/ormlite/dao/EagerForeignCollection;->access$000(Lcom/j256/ormlite/dao/EagerForeignCollection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection$1;, "Lcom/j256/ormlite/dao/EagerForeignCollection.1;"
    iget v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->b:I

    .line 94
    iget-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->a:Lcom/j256/ormlite/dao/EagerForeignCollection;

    invoke-static {v0}, Lcom/j256/ormlite/dao/EagerForeignCollection;->access$000(Lcom/j256/ormlite/dao/EagerForeignCollection;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection$1;, "Lcom/j256/ormlite/dao/EagerForeignCollection.1;"
    iget v2, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->b:I

    if-gez v2, :cond_0

    .line 137
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "next() must be called before remove()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    :cond_0
    iget v2, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->b:I

    iget-object v3, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->a:Lcom/j256/ormlite/dao/EagerForeignCollection;

    invoke-static {v3}, Lcom/j256/ormlite/dao/EagerForeignCollection;->access$000(Lcom/j256/ormlite/dao/EagerForeignCollection;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 140
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "current results position ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") is out of bounds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 142
    :cond_1
    iget-object v2, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->a:Lcom/j256/ormlite/dao/EagerForeignCollection;

    invoke-static {v2}, Lcom/j256/ormlite/dao/EagerForeignCollection;->access$000(Lcom/j256/ormlite/dao/EagerForeignCollection;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->b:I

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .line 143
    .local v1, "removed":Ljava/lang/Object;, "TT;"
    iget v2, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->b:I

    .line 144
    iget-object v2, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->a:Lcom/j256/ormlite/dao/EagerForeignCollection;

    iget-object v2, v2, Lcom/j256/ormlite/dao/EagerForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v2, :cond_2

    .line 146
    :try_start_0
    iget-object v2, p0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;->a:Lcom/j256/ormlite/dao/EagerForeignCollection;

    iget-object v2, v2, Lcom/j256/ormlite/dao/EagerForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v1}, Lcom/j256/ormlite/dao/Dao;->e(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :cond_2
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
