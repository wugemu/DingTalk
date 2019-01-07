.class Lcom/j256/ormlite/dao/LazyForeignCollection$1;
.super Ljava/lang/Object;
.source "LazyForeignCollection.java"

# interfaces
.implements Lcom/j256/ormlite/dao/CloseableIterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/j256/ormlite/dao/LazyForeignCollection;->getWrappedIterable(I)Lcom/j256/ormlite/dao/CloseableWrappedIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/dao/CloseableIterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/j256/ormlite/dao/LazyForeignCollection;


# direct methods
.method constructor <init>(Lcom/j256/ormlite/dao/LazyForeignCollection;I)V
    .locals 0

    .prologue
    .line 94
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection$1;, "Lcom/j256/ormlite/dao/LazyForeignCollection.1;"
    iput-object p1, p0, Lcom/j256/ormlite/dao/LazyForeignCollection$1;->b:Lcom/j256/ormlite/dao/LazyForeignCollection;

    iput p2, p0, Lcom/j256/ormlite/dao/LazyForeignCollection$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeableIterator()Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection$1;, "Lcom/j256/ormlite/dao/LazyForeignCollection.1;"
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/LazyForeignCollection$1;->b:Lcom/j256/ormlite/dao/LazyForeignCollection;

    iget v2, p0, Lcom/j256/ormlite/dao/LazyForeignCollection$1;->a:I

    invoke-static {v1, v2}, Lcom/j256/ormlite/dao/LazyForeignCollection;->access$000(Lcom/j256/ormlite/dao/LazyForeignCollection;I)Lcom/j256/ormlite/dao/CloseableIterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Could not build lazy iterator for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/j256/ormlite/dao/LazyForeignCollection$1;->b:Lcom/j256/ormlite/dao/LazyForeignCollection;

    iget-object v3, v3, Lcom/j256/ormlite/dao/LazyForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->d()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 94
    .line 1097
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection$1;, "Lcom/j256/ormlite/dao/LazyForeignCollection.1;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection$1;->closeableIterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    .line 94
    return-object v0
.end method
