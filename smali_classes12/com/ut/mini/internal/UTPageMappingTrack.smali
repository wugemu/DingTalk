.class public Lcom/ut/mini/internal/UTPageMappingTrack;
.super Ljava/lang/Object;
.source "UTPageMappingTrack.java"


# static fields
.field private static final MAX_LENGTH:I = 0x1f4

.field private static final MAX_LINENUM:I = 0x14

.field private static final PAGEMAPPING_EVENTID:I = 0x10875

.field private static final PAGEMAPPING_NAME:Ljava/lang/String; = "PageMapping"

.field private static mUTPageMappingTrack:Lcom/ut/mini/internal/UTPageMappingTrack;


# instance fields
.field private mUTPageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/internal/UTPageMappingTrack;->mUTPageMap:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/ut/mini/internal/UTPageMappingTrack;
    .locals 2

    .prologue
    .line 26
    const-class v1, Lcom/ut/mini/internal/UTPageMappingTrack;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ut/mini/internal/UTPageMappingTrack;->mUTPageMappingTrack:Lcom/ut/mini/internal/UTPageMappingTrack;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/ut/mini/internal/UTPageMappingTrack;

    invoke-direct {v0}, Lcom/ut/mini/internal/UTPageMappingTrack;-><init>()V

    sput-object v0, Lcom/ut/mini/internal/UTPageMappingTrack;->mUTPageMappingTrack:Lcom/ut/mini/internal/UTPageMappingTrack;

    .line 29
    :cond_0
    sget-object v0, Lcom/ut/mini/internal/UTPageMappingTrack;->mUTPageMappingTrack:Lcom/ut/mini/internal/UTPageMappingTrack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public putPageMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "containerName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x1f4

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_2

    .line 45
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 48
    :cond_2
    :try_start_0
    const-string/jumbo v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 52
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_3

    .line 53
    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 55
    :cond_3
    iget-object v1, p0, Lcom/ut/mini/internal/UTPageMappingTrack;->mUTPageMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v1, p0, Lcom/ut/mini/internal/UTPageMappingTrack;->mUTPageMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/ut/mini/internal/UTPageMappingTrack;->sendPageMapping()V

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, ""

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public sendPageMapping()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 33
    iget-object v0, p0, Lcom/ut/mini/internal/UTPageMappingTrack;->mUTPageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 34
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v7

    new-instance v0, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    const-string/jumbo v1, "PageMapping"

    const v2, 0x10875

    iget-object v6, p0, Lcom/ut/mini/internal/UTPageMappingTrack;->mUTPageMap:Ljava/util/Map;

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 36
    iget-object v0, p0, Lcom/ut/mini/internal/UTPageMappingTrack;->mUTPageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 38
    :cond_0
    return-void
.end method
