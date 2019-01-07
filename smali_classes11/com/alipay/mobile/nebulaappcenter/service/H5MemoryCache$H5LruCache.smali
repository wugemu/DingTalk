.class Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache$H5LruCache;
.super Ljava/util/LinkedHashMap;
.source "H5MemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "H5LruCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final MAX_CACHE_SIZE:I


# direct methods
.method constructor <init>(I)V
    .locals 4
    .param p1, "cacheSize"    # I

    .prologue
    .line 136
    .local p0, "this":Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache$H5LruCache;, "Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache$H5LruCache<TK;TV;>;"
    int-to-double v0, p1

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 137
    iput p1, p0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache$H5LruCache;->MAX_CACHE_SIZE:I

    .line 138
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .param p1, "eldest"    # Ljava/util/Map$Entry;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 143
    .local p0, "this":Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache$H5LruCache;, "Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache$H5LruCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache$H5LruCache;->size()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/nebulaappcenter/service/H5MemoryCache$H5LruCache;->MAX_CACHE_SIZE:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
