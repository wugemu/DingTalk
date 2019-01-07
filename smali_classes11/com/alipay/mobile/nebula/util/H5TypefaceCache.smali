.class public Lcom/alipay/mobile/nebula/util/H5TypefaceCache;
.super Ljava/lang/Object;
.source "H5TypefaceCache.java"


# static fields
.field private static mInstance:Lcom/alipay/mobile/nebula/util/H5TypefaceCache;


# instance fields
.field private final mTypefaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5TypefaceCache;->mInstance:Lcom/alipay/mobile/nebula/util/H5TypefaceCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/util/H5TypefaceCache;->mTypefaceMap:Ljava/util/Map;

    .line 30
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/nebula/util/H5TypefaceCache;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lcom/alipay/mobile/nebula/util/H5TypefaceCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5TypefaceCache;->mInstance:Lcom/alipay/mobile/nebula/util/H5TypefaceCache;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5TypefaceCache;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/util/H5TypefaceCache;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5TypefaceCache;->mInstance:Lcom/alipay/mobile/nebula/util/H5TypefaceCache;

    .line 25
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5TypefaceCache;->mInstance:Lcom/alipay/mobile/nebula/util/H5TypefaceCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getTypeface(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "ttfFilePath"    # Ljava/lang/String;

    .prologue
    .line 56
    if-eqz p0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    :cond_0
    const/4 v0, 0x0

    .line 69
    :cond_1
    :goto_0
    return-object v0

    .line 59
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5TypefaceCache;->getInstance()Lcom/alipay/mobile/nebula/util/H5TypefaceCache;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/nebula/util/H5TypefaceCache;->getTypefaceByCat(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 60
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-nez v0, :cond_1

    .line 62
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 66
    :goto_1
    if-eqz v0, :cond_1

    .line 67
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5TypefaceCache;->getInstance()Lcom/alipay/mobile/nebula/util/H5TypefaceCache;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/alipay/mobile/nebula/util/H5TypefaceCache;->putTypeface(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/H5TypefaceCache;->mTypefaceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 52
    return-void
.end method

.method public getTypefaceByCat(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 4
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "cat"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-object v1

    .line 42
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebula/util/H5TypefaceCache;->mTypefaceMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 43
    .local v0, "typefaceRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/Typeface;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 44
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/nebula/util/H5TypefaceCache;->mTypefaceMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 47
    :cond_3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public putTypeface(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;)V
    .locals 3
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "cat"    # Ljava/lang/String;
    .param p3, "typeface"    # Landroid/graphics/Typeface;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/H5TypefaceCache;->mTypefaceMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
