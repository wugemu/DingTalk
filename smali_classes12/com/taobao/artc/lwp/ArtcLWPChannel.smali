.class public Lcom/taobao/artc/lwp/ArtcLWPChannel;
.super Ljava/lang/Object;
.source "ArtcLWPChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/artc/lwp/ArtcLWPChannel$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static a([B)V
    .locals 5
    .param p0, "data"    # [B

    .prologue
    .line 16
    const-string/jumbo v0, "ArtcLWPChannel"

    const-string/jumbo v1, "onRecvData, len:"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    invoke-static {p0}, Lcom/taobao/artc/lwp/ArtcLWPChannel;->onRecvLWP([B)V

    .line 18
    return-void
.end method

.method private static native onRecvLWP([B)V
.end method
