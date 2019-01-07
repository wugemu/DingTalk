.class public Lcom/taobao/artc/accs/ArtcAccsHandler;
.super Ljava/lang/Object;
.source "ArtcAccsHandler.java"


# static fields
.field private static final ACCS_SUCCESS_CODE:I = 0xc8

.field private static final ACCS_TIMEOUT:I = 0x1964

.field public static final ARTC_ACCS_SERVICE:Ljava/lang/String; = "artccrc2"

.field private static final TAG:Ljava/lang/String; = "ArtcAccs"

.field private static accsConfigTag:Ljava/lang/String;

.field public static isBindedArtc:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static mUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/taobao/artc/accs/ArtcAccsHandler;->isBindedArtc:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    const-string/jumbo v0, ""

    sput-object v0, Lcom/taobao/artc/accs/ArtcAccsHandler;->mUserId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindService(Ljava/lang/String;)V
    .locals 0
    .param p0, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 102
    return-void
.end method

.method public static bindUser(Ljava/lang/String;)V
    .locals 0
    .param p0, "userId"    # Ljava/lang/String;

    .prologue
    .line 114
    return-void
.end method

.method public static cancelSend(Ljava/lang/String;)Z
    .locals 1
    .param p0, "dataId"    # Ljava/lang/String;

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public static native onBindService(Ljava/lang/String;I)V
.end method

.method public static native onData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
.end method

.method public static native onResponse(Ljava/lang/String;Ljava/lang/String;I[B)V
.end method

.method public static native onUnbindService(Ljava/lang/String;I)V
.end method

.method public static sendAccsUTData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "dataId"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;
    .param p3, "isSend"    # Z

    .prologue
    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 39
    .local v0, "statMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 42
    .local v2, "timeUTC":J
    if-eqz p0, :cond_0

    .line 43
    const-string/jumbo v1, "uid"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_0
    if-eqz p1, :cond_1

    .line 47
    const-string/jumbo v1, "did"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_1
    if-eqz p2, :cond_2

    .line 51
    const-string/jumbo v1, "cid"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_2
    const-string/jumbo v1, "mtp"

    const-string/jumbo v4, "acs"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string/jumbo v4, "issd"

    if-eqz p3, :cond_3

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string/jumbo v1, "time"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string/jumbo v1, "ArtcInfo"

    invoke-static {v0}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ljkf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void

    .line 55
    :cond_3
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static sendData(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setAccsConfigTag(Ljava/lang/String;)V
    .locals 0
    .param p0, "accsConfigTag"    # Ljava/lang/String;

    .prologue
    .line 33
    sput-object p0, Lcom/taobao/artc/accs/ArtcAccsHandler;->accsConfigTag:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static unbindService(Ljava/lang/String;)V
    .locals 0
    .param p0, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 141
    return-void
.end method

.method public static unbindUser()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method
