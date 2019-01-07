.class public Lorg/webrtc/ali/MediaStreamTrack;
.super Ljava/lang/Object;
.source "MediaStreamTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/ali/MediaStreamTrack$MediaType;,
        Lorg/webrtc/ali/MediaStreamTrack$State;
    }
.end annotation


# instance fields
.field final nativeTrack:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "nativeTrack"    # J

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lorg/webrtc/ali/MediaStreamTrack;->nativeTrack:J

    .line 27
    return-void
.end method

.method private static native free(J)V
.end method

.method private static native nativeEnabled(J)Z
.end method

.method private static native nativeId(J)Ljava/lang/String;
.end method

.method private static native nativeKind(J)Ljava/lang/String;
.end method

.method private static native nativeSetEnabled(JZ)Z
.end method

.method private static native nativeState(J)Lorg/webrtc/ali/MediaStreamTrack$State;
.end method


# virtual methods
.method public dispose()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 50
    iget-wide v0, p0, Lorg/webrtc/ali/MediaStreamTrack;->nativeTrack:J

    invoke-static {v0, v1}, Lorg/webrtc/ali/MediaStreamTrack;->free(J)V

    .line 51
    return-void
.end method

.method public enabled()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 38
    iget-wide v0, p0, Lorg/webrtc/ali/MediaStreamTrack;->nativeTrack:J

    invoke-static {v0, v1}, Lorg/webrtc/ali/MediaStreamTrack;->nativeEnabled(J)Z

    move-result v0

    return v0
.end method

.method public id()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 30
    iget-wide v0, p0, Lorg/webrtc/ali/MediaStreamTrack;->nativeTrack:J

    invoke-static {v0, v1}, Lorg/webrtc/ali/MediaStreamTrack;->nativeId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public kind()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 34
    iget-wide v0, p0, Lorg/webrtc/ali/MediaStreamTrack;->nativeTrack:J

    invoke-static {v0, v1}, Lorg/webrtc/ali/MediaStreamTrack;->nativeKind(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setEnabled(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 42
    iget-wide v0, p0, Lorg/webrtc/ali/MediaStreamTrack;->nativeTrack:J

    invoke-static {v0, v1, p1}, Lorg/webrtc/ali/MediaStreamTrack;->nativeSetEnabled(JZ)Z

    move-result v0

    return v0
.end method

.method public state()Lorg/webrtc/ali/MediaStreamTrack$State;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 46
    iget-wide v0, p0, Lorg/webrtc/ali/MediaStreamTrack;->nativeTrack:J

    invoke-static {v0, v1}, Lorg/webrtc/ali/MediaStreamTrack;->nativeState(J)Lorg/webrtc/ali/MediaStreamTrack$State;

    move-result-object v0

    return-object v0
.end method
