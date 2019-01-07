.class public Lcom/amap/api/services/nearby/NearbySearch;
.super Ljava/lang/Object;
.source "NearbySearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;,
        Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;
    }
.end annotation


# static fields
.field public static final AMAP:I = 0x1

.field public static final GPS:I

.field private static a:Lcom/amap/api/services/nearby/NearbySearch;


# instance fields
.field private b:Lcom/amap/api/services/interfaces/INearbySearch;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/amap/api/services/a/h;->a(Z)Lcom/amap/api/services/a/be;

    move-result-object v1

    const-string/jumbo v2, "com.amap.api.services.dynamic.NearbySearchWrapper"

    const-class v3, Lcom/amap/api/services/a/ap;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/amap/api/services/a/cf;->a(Landroid/content/Context;Lcom/amap/api/services/a/be;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/interfaces/INearbySearch;

    iput-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;
    :try_end_0
    .catch Lcom/amap/api/services/a/av; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    if-nez v0, :cond_0

    .line 64
    :try_start_1
    new-instance v0, Lcom/amap/api/services/a/ap;

    invoke-direct {v0, p1}, Lcom/amap/api/services/a/ap;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    :cond_0
    :goto_1
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Lcom/amap/api/services/a/av;->printStackTrace()V

    goto :goto_0

    .line 65
    :catch_1
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private a()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/INearbySearch;->destroy()V

    .line 326
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    .line 327
    return-void
.end method

.method public static declared-synchronized destroy()V
    .locals 4

    .prologue
    .line 311
    const-class v1, Lcom/amap/api/services/nearby/NearbySearch;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/services/nearby/NearbySearch;->a:Lcom/amap/api/services/nearby/NearbySearch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 313
    :try_start_1
    sget-object v0, Lcom/amap/api/services/nearby/NearbySearch;->a:Lcom/amap/api/services/nearby/NearbySearch;

    invoke-direct {v0}, Lcom/amap/api/services/nearby/NearbySearch;->a()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lcom/amap/api/services/nearby/NearbySearch;->a:Lcom/amap/api/services/nearby/NearbySearch;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 320
    monitor-exit v1

    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    :try_start_3
    const-string/jumbo v2, "NearbySearch"

    const-string/jumbo v3, "destryoy"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/amap/api/services/nearby/NearbySearch;
    .locals 2

    .prologue
    .line 50
    const-class v1, Lcom/amap/api/services/nearby/NearbySearch;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/services/nearby/NearbySearch;->a:Lcom/amap/api/services/nearby/NearbySearch;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/amap/api/services/nearby/NearbySearch;

    invoke-direct {v0, p0}, Lcom/amap/api/services/nearby/NearbySearch;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amap/api/services/nearby/NearbySearch;->a:Lcom/amap/api/services/nearby/NearbySearch;

    .line 53
    :cond_0
    sget-object v0, Lcom/amap/api/services/nearby/NearbySearch;->a:Lcom/amap/api/services/nearby/NearbySearch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized addNearbyListener(Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;)V
    .locals 1

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/INearbySearch;->addNearbyListener(Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_0
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearUserInfoAsyn()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/INearbySearch;->clearUserInfoAsyn()V

    .line 99
    :cond_0
    return-void
.end method

.method public declared-synchronized removeNearbyListener(Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;)V
    .locals 1

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/INearbySearch;->removeNearbyListener(Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_0
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public searchNearbyInfo(Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;)Lcom/amap/api/services/nearby/NearbySearchResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/INearbySearch;->searchNearbyInfo(Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;)Lcom/amap/api/services/nearby/NearbySearchResult;

    move-result-object v0

    .line 163
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public searchNearbyInfoAsyn(Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/INearbySearch;->searchNearbyInfoAsyn(Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;)V

    .line 152
    :cond_0
    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/INearbySearch;->setUserID(Ljava/lang/String;)V

    .line 109
    :cond_0
    return-void
.end method

.method public declared-synchronized startUploadNearbyInfoAuto(Lcom/amap/api/services/nearby/UploadInfoCallback;I)V
    .locals 1

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/services/interfaces/INearbySearch;->startUploadNearbyInfoAuto(Lcom/amap/api/services/nearby/UploadInfoCallback;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_0
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopUploadNearbyInfoAuto()V
    .locals 1

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/INearbySearch;->stopUploadNearbyInfoAuto()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_0
    monitor-exit p0

    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public uploadNearbyInfoAsyn(Lcom/amap/api/services/nearby/UploadInfo;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/INearbySearch;->uploadNearbyInfoAsyn(Lcom/amap/api/services/nearby/UploadInfo;)V

    .line 142
    :cond_0
    return-void
.end method
