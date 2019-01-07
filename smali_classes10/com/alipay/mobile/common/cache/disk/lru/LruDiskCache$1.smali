.class Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache$1;
.super Ljava/util/LinkedHashMap;
.source "LruDiskCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Lijg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lijh;


# direct methods
.method constructor <init>(Lijh;IFZ)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache$1;->this$0:Lijh;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lijg;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache$1;->this$0:Lijh;

    invoke-static {v0}, Lijh;->a(Lijh;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache$1;->this$0:Lijh;

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    .line 29
    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache$1;->this$0:Lijh;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lijg;

    invoke-static {v1, v4, v5}, Lijh;->a(Lijh;J)J

    .line 30
    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache$1;->this$0:Lijh;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lijh;->a(Lijh;Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x1

    .line 33
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
