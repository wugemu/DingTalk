.class public Lcom/taobao/artc/api/ArtcStats;
.super Ljava/lang/Object;
.source "ArtcStats.java"


# static fields
.field public static final ARTC_POINT_EVENT:Ljava/lang/String; = "ArtcEvent"

.field public static final ARTC_POINT_INFO:Ljava/lang/String; = "ArtcInfo"

.field public static final STAT_RETRYCOUNT:Ljava/lang/String; = "retryCount"

.field private static final STAT_ROOM_ID:Ljava/lang/String; = "room_id"

.field private static final STAT_TURNSPEED:Ljava/lang/String; = "turnSpeed"

.field private static final STAT_USER_ID:Ljava/lang/String; = "user_id"


# instance fields
.field public duration:I

.field public localVideoStats:Lcom/taobao/artc/api/LocalVideoStats;

.field public remoteVideoStats:Lcom/taobao/artc/api/RemoteVideoStats;

.field public rxBytes:J

.field public rxKBitRate:S

.field public txBytes:J

.field public txKBitRate:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/taobao/artc/api/LocalVideoStats;

    invoke-direct {v0}, Lcom/taobao/artc/api/LocalVideoStats;-><init>()V

    iput-object v0, p0, Lcom/taobao/artc/api/ArtcStats;->localVideoStats:Lcom/taobao/artc/api/LocalVideoStats;

    .line 30
    new-instance v0, Lcom/taobao/artc/api/RemoteVideoStats;

    invoke-direct {v0}, Lcom/taobao/artc/api/RemoteVideoStats;-><init>()V

    iput-object v0, p0, Lcom/taobao/artc/api/ArtcStats;->remoteVideoStats:Lcom/taobao/artc/api/RemoteVideoStats;

    .line 31
    return-void
.end method

.method public static addRetryCountExtInfoMap(Ljava/util/Map;I)V
    .locals 2
    .param p1, "retryCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "extInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 43
    const-string/jumbo v0, "retryCount"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_0
    return-void
.end method

.method public static formatExtInfoMap(Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .param p1, "user_id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "extInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    .line 35
    const-string/jumbo v0, "user_id"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo p1, ""

    .end local p1    # "user_id":Ljava/lang/String;
    :cond_0
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_1
    return-void
.end method
