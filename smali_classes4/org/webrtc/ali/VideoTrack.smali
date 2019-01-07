.class public Lorg/webrtc/ali/VideoTrack;
.super Lorg/webrtc/ali/MediaStreamTrack;
.source "VideoTrack.java"


# instance fields
.field private final renderers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/webrtc/ali/VideoRenderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "nativeTrack"    # J

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lorg/webrtc/ali/MediaStreamTrack;-><init>(J)V

    .line 17
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/VideoTrack;->renderers:Ljava/util/LinkedList;

    .line 21
    return-void
.end method

.method private static native nativeAddRenderer(JJ)V
.end method

.method private static native nativeRemoveRenderer(JJ)V
.end method


# virtual methods
.method public addRenderer(Lorg/webrtc/ali/VideoRenderer;)V
    .locals 4
    .param p1, "renderer"    # Lorg/webrtc/ali/VideoRenderer;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 24
    iget-object v0, p0, Lorg/webrtc/ali/VideoTrack;->renderers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 25
    iget-wide v0, p0, Lorg/webrtc/ali/VideoTrack;->nativeTrack:J

    iget-wide v2, p1, Lorg/webrtc/ali/VideoRenderer;->nativeVideoRenderer:J

    invoke-static {v0, v1, v2, v3}, Lorg/webrtc/ali/VideoTrack;->nativeAddRenderer(JJ)V

    .line 26
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 37
    :goto_0
    iget-object v0, p0, Lorg/webrtc/ali/VideoTrack;->renderers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lorg/webrtc/ali/VideoTrack;->renderers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/ali/VideoRenderer;

    invoke-virtual {p0, v0}, Lorg/webrtc/ali/VideoTrack;->removeRenderer(Lorg/webrtc/ali/VideoRenderer;)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-super {p0}, Lorg/webrtc/ali/MediaStreamTrack;->dispose()V

    .line 41
    return-void
.end method

.method public removeRenderer(Lorg/webrtc/ali/VideoRenderer;)V
    .locals 4
    .param p1, "renderer"    # Lorg/webrtc/ali/VideoRenderer;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 29
    iget-object v0, p0, Lorg/webrtc/ali/VideoTrack;->renderers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-wide v0, p0, Lorg/webrtc/ali/VideoTrack;->nativeTrack:J

    iget-wide v2, p1, Lorg/webrtc/ali/VideoRenderer;->nativeVideoRenderer:J

    invoke-static {v0, v1, v2, v3}, Lorg/webrtc/ali/VideoTrack;->nativeRemoveRenderer(JJ)V

    .line 33
    invoke-virtual {p1}, Lorg/webrtc/ali/VideoRenderer;->dispose()V

    goto :goto_0
.end method
