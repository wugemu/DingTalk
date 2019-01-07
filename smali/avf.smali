.class public final Lavf;
.super Ljava/lang/Object;
.source "SyncAckUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/wukong/sync/SyncAck;Ljava/lang/String;)V
    .locals 4
    .param p0, "syncAck"    # Lcom/alibaba/wukong/sync/SyncAck;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 17
    new-array v0, v3, [Ljava/lang/String;

    aput-object p1, v0, v2

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 21
    :goto_0
    return-void

    .line 19
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "no ack. msg="

    aput-object v1, v0, v2

    aput-object p1, v0, v3

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/wukong/sync/SyncAck;Ljava/lang/String;)V
    .locals 4
    .param p0, "syncAck"    # Lcom/alibaba/wukong/sync/SyncAck;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    invoke-virtual {p0, p1}, Lcom/alibaba/wukong/sync/SyncAck;->failed(Ljava/lang/String;)V

    .line 27
    new-array v0, v3, [Ljava/lang/String;

    aput-object p1, v0, v2

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 31
    :goto_0
    return-void

    .line 29
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "no ack failed. msg="

    aput-object v1, v0, v2

    aput-object p1, v0, v3

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0
.end method
