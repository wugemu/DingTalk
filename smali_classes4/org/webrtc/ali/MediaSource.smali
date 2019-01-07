.class public Lorg/webrtc/ali/MediaSource;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/ali/MediaSource$State;
    }
.end annotation


# instance fields
.field final nativeSource:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "nativeSource"    # J

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lorg/webrtc/ali/MediaSource;->nativeSource:J

    .line 22
    return-void
.end method

.method private static native free(J)V
.end method

.method private static native nativeState(J)Lorg/webrtc/ali/MediaSource$State;
.end method


# virtual methods
.method public dispose()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 29
    iget-wide v0, p0, Lorg/webrtc/ali/MediaSource;->nativeSource:J

    invoke-static {v0, v1}, Lorg/webrtc/ali/MediaSource;->free(J)V

    .line 30
    return-void
.end method

.method public state()Lorg/webrtc/ali/MediaSource$State;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 25
    iget-wide v0, p0, Lorg/webrtc/ali/MediaSource;->nativeSource:J

    invoke-static {v0, v1}, Lorg/webrtc/ali/MediaSource;->nativeState(J)Lorg/webrtc/ali/MediaSource$State;

    move-result-object v0

    return-object v0
.end method
