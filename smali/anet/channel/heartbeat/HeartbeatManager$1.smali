.class final Lanet/channel/heartbeat/HeartbeatManager$1;
.super Ljava/lang/Object;
.source "HeartbeatManager.java"

# interfaces
.implements Liy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/heartbeat/HeartbeatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanet/channel/Session;)Lix;
    .locals 1
    .param p1, "session"    # Lanet/channel/Session;

    .prologue
    .line 17
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lanet/channel/Session;->j()Ljy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lanet/channel/Session;->j()Ljy;

    move-result-object v0

    invoke-interface {v0}, Ljy;->getHeartbeat()I

    move-result v0

    if-gtz v0, :cond_1

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Liw;

    invoke-direct {v0, p1}, Liw;-><init>(Lanet/channel/Session;)V

    goto :goto_0
.end method
