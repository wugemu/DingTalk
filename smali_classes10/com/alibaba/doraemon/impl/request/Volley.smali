.class public Lcom/alibaba/doraemon/impl/request/Volley;
.super Ljava/lang/Object;
.source "Volley.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static mInstance:Lcom/alibaba/doraemon/impl/request/Volley;


# instance fields
.field private final MIN_SDCARD_CAPACITY:I

.field private final mCache:Lcom/alibaba/doraemon/impl/request/DiskBasedCache;

.field private final mDelivery:Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

.field private final mNetwork:Lcom/alibaba/doraemon/impl/request/Network;

.field private final mRequestQueue:Lcom/alibaba/doraemon/impl/request/RequestQueue;

.field private mUrlRewriter:Lcom/alibaba/doraemon/request/UrlRewriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/doraemon/impl/request/Volley;->mInstance:Lcom/alibaba/doraemon/impl/request/Volley;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/high16 v2, 0x1400000

    iput v2, p0, Lcom/alibaba/doraemon/impl/request/Volley;->MIN_SDCARD_CAPACITY:I

    .line 116
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alibaba/doraemon/impl/request/Volley;->mUrlRewriter:Lcom/alibaba/doraemon/request/UrlRewriter;

    .line 17
    const-string/jumbo v1, "laiwang/0"

    .line 20
    .local v1, "userAgent":Ljava/lang/String;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_1

    .line 21
    const-string/jumbo v2, "sun.net.http.allowRestrictedHeaders"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    new-instance v0, Lcom/alibaba/doraemon/impl/request/HurlStack;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/request/HurlStack;-><init>()V

    .line 29
    .local v0, "stack":Lcom/alibaba/doraemon/impl/request/HttpStack;
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 30
    const-string/jumbo v2, "http.keepAlive"

    const-string/jumbo v3, "false"

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    :cond_0
    new-instance v2, Lcom/alibaba/doraemon/impl/request/BasicNetwork;

    invoke-direct {v2, v0, p1}, Lcom/alibaba/doraemon/impl/request/BasicNetwork;-><init>(Lcom/alibaba/doraemon/impl/request/HttpStack;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alibaba/doraemon/impl/request/Volley;->mNetwork:Lcom/alibaba/doraemon/impl/request/Network;

    .line 34
    new-instance v2, Lcom/alibaba/doraemon/impl/request/DiskBasedCache;

    invoke-direct {v2}, Lcom/alibaba/doraemon/impl/request/DiskBasedCache;-><init>()V

    iput-object v2, p0, Lcom/alibaba/doraemon/impl/request/Volley;->mCache:Lcom/alibaba/doraemon/impl/request/DiskBasedCache;

    .line 35
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/Volley;->mCache:Lcom/alibaba/doraemon/impl/request/DiskBasedCache;

    const-string/jumbo v3, "cache/request"

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/impl/request/DiskBasedCache;->setCacheDir(Ljava/lang/String;)V

    .line 36
    new-instance v2, Lcom/alibaba/doraemon/impl/request/ExecutorDelivery;

    invoke-direct {v2}, Lcom/alibaba/doraemon/impl/request/ExecutorDelivery;-><init>()V

    iput-object v2, p0, Lcom/alibaba/doraemon/impl/request/Volley;->mDelivery:Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    .line 39
    new-instance v2, Lcom/alibaba/doraemon/impl/request/RequestQueue;

    invoke-direct {v2}, Lcom/alibaba/doraemon/impl/request/RequestQueue;-><init>()V

    iput-object v2, p0, Lcom/alibaba/doraemon/impl/request/Volley;->mRequestQueue:Lcom/alibaba/doraemon/impl/request/RequestQueue;

    .line 40
    return-void

    .line 26
    .end local v0    # "stack":Lcom/alibaba/doraemon/impl/request/HttpStack;
    :cond_1
    new-instance v0, Lcom/alibaba/doraemon/impl/request/HttpClientStack;

    invoke-static {v1}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/doraemon/impl/request/HttpClientStack;-><init>(Lorg/apache/http/client/HttpClient;)V

    .restart local v0    # "stack":Lcom/alibaba/doraemon/impl/request/HttpStack;
    goto :goto_0
.end method

.method public static declared-synchronized instance(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/request/Volley;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const-class v1, Lcom/alibaba/doraemon/impl/request/Volley;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/doraemon/impl/request/Volley;->mInstance:Lcom/alibaba/doraemon/impl/request/Volley;

    if-nez v0, :cond_1

    .line 48
    const-class v2, Lcom/alibaba/doraemon/impl/request/Volley;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 49
    :try_start_1
    sget-object v0, Lcom/alibaba/doraemon/impl/request/Volley;->mInstance:Lcom/alibaba/doraemon/impl/request/Volley;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/alibaba/doraemon/impl/request/Volley;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/request/Volley;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alibaba/doraemon/impl/request/Volley;->mInstance:Lcom/alibaba/doraemon/impl/request/Volley;

    .line 52
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :cond_1
    :try_start_2
    sget-object v0, Lcom/alibaba/doraemon/impl/request/Volley;->mInstance:Lcom/alibaba/doraemon/impl/request/Volley;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 46
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public cache()Lcom/alibaba/doraemon/impl/request/Cache;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/Volley;->mCache:Lcom/alibaba/doraemon/impl/request/DiskBasedCache;

    return-object v0
.end method

.method public delivery()Lcom/alibaba/doraemon/impl/request/ResponseDelivery;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/Volley;->mDelivery:Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    return-object v0
.end method

.method public getUrlRewriter()Lcom/alibaba/doraemon/request/UrlRewriter;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/Volley;->mUrlRewriter:Lcom/alibaba/doraemon/request/UrlRewriter;

    return-object v0
.end method

.method public network()Lcom/alibaba/doraemon/impl/request/Network;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/Volley;->mNetwork:Lcom/alibaba/doraemon/impl/request/Network;

    return-object v0
.end method

.method public queue()Lcom/alibaba/doraemon/impl/request/RequestQueue;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/Volley;->mRequestQueue:Lcom/alibaba/doraemon/impl/request/RequestQueue;

    return-object v0
.end method

.method public setUrlRewriter(Lcom/alibaba/doraemon/request/UrlRewriter;)V
    .locals 1
    .param p1, "urlRewriter"    # Lcom/alibaba/doraemon/request/UrlRewriter;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/Volley;->mUrlRewriter:Lcom/alibaba/doraemon/request/UrlRewriter;

    .line 89
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/Volley;->mNetwork:Lcom/alibaba/doraemon/impl/request/Network;

    instance-of v0, v0, Lcom/alibaba/doraemon/impl/request/BasicNetwork;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/Volley;->mNetwork:Lcom/alibaba/doraemon/impl/request/Network;

    check-cast v0, Lcom/alibaba/doraemon/impl/request/BasicNetwork;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/request/BasicNetwork;->setUrlRewriter(Lcom/alibaba/doraemon/request/UrlRewriter;)V

    .line 92
    :cond_0
    return-void
.end method
