.class Lcom/squareup/okhttp/internal/DiskLruCache$3;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/DiskLruCache;->snapshots()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/squareup/okhttp/internal/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field nextSnapshot:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

.field removeSnapshot:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

.field final synthetic this$0:Lcom/squareup/okhttp/internal/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/DiskLruCache;)V
    .locals 2
    .param p1, "this$0"    # Lcom/squareup/okhttp/internal/DiskLruCache;

    .prologue
    .line 716
    iput-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$3;->this$0:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 718
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$3;->this$0:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/DiskLruCache;->access$2000(Lcom/squareup/okhttp/internal/DiskLruCache;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$3;->delegate:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 727
    iget-object v4, p0, Lcom/squareup/okhttp/internal/DiskLruCache$3;->nextSnapshot:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    if-eqz v4, :cond_0

    .line 742
    :goto_0
    return v2

    .line 729
    :cond_0
    iget-object v4, p0, Lcom/squareup/okhttp/internal/DiskLruCache$3;->this$0:Lcom/squareup/okhttp/internal/DiskLruCache;

    monitor-enter v4

    .line 731
    :try_start_0
    iget-object v5, p0, Lcom/squareup/okhttp/internal/DiskLruCache$3;->this$0:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-static {v5}, Lcom/squareup/okhttp/internal/DiskLruCache;->access$100(Lcom/squareup/okhttp/internal/DiskLruCache;)Z

    move-result v5

    if-eqz v5, :cond_1

    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 733
    :cond_1
    iget-object v5, p0, Lcom/squareup/okhttp/internal/DiskLruCache$3;->delegate:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 734
    iget-object v5, p0, Lcom/squareup/okhttp/internal/DiskLruCache$3;->delegate:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;

    .line 735
    .local v0, "entry":Lcom/squareup/okhttp/internal/DiskLruCache$Entry;
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->snapshot()Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    move-result-object v1

    .line 736
    .local v1, "snapshot":Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;
    if-eqz v1, :cond_1

    .line 737
    iput-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$3;->nextSnapshot:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    .line 738
    monitor-exit v4

    goto :goto_0

    .line 740
    .end local v0    # "entry":Lcom/squareup/okhttp/internal/DiskLruCache$Entry;
    .end local v1    # "snapshot":Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 742
    goto :goto_0
.end method

.method public next()Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;
    .locals 1

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/DiskLruCache$3;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$3;->nextSnapshot:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$3;->removeSnapshot:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    .line 748
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$3;->nextSnapshot:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    .line 749
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$3;->removeSnapshot:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 716
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/DiskLruCache$3;->next()Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 753
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$3;->removeSnapshot:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "remove() before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 755
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$3;->this$0:Lcom/squareup/okhttp/internal/DiskLruCache;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$3;->removeSnapshot:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->access$2100(Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 760
    iput-object v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache$3;->removeSnapshot:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    .line 761
    :goto_0
    return-void

    .line 760
    :catch_0
    move-exception v0

    iput-object v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache$3;->removeSnapshot:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache$3;->removeSnapshot:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    throw v0
.end method
