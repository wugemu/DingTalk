.class public Lcom/alipay/mobile/common/cache/mem/lru/ImageCache$1;
.super Ljava/util/LinkedHashMap;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Liji",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lijk;


# direct methods
.method public constructor <init>(Lijk;IFZ)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache$1;->this$0:Lijk;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Liji",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache$1;->this$0:Lijk;

    iget-wide v2, v0, Lijk;->c:J

    .line 1057
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    .line 1059
    const-wide/16 v6, 0x8

    div-long/2addr v4, v6

    .line 41
    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 43
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liji;

    .line 2055
    const/4 v0, 0x0

    .line 43
    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 44
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lijl;

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache$1;->this$0:Lijk;

    iget-wide v2, v0, Lijk;->c:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lijk;->c:J

    .line 46
    const/4 v0, 0x1

    .line 48
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
