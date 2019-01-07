.class public Lorg/webrtc/ali/VideoRenderer;
.super Ljava/lang/Object;
.source "VideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/ali/VideoRenderer$Callbacks;,
        Lorg/webrtc/ali/VideoRenderer$I420Frame;
    }
.end annotation


# instance fields
.field nativeVideoRenderer:J


# direct methods
.method public constructor <init>(Lorg/webrtc/ali/VideoRenderer$Callbacks;)V
    .locals 2
    .param p1, "callbacks"    # Lorg/webrtc/ali/VideoRenderer$Callbacks;

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-static {p1}, Lorg/webrtc/ali/VideoRenderer;->nativeWrapVideoRenderer(Lorg/webrtc/ali/VideoRenderer$Callbacks;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/webrtc/ali/VideoRenderer;->nativeVideoRenderer:J

    .line 167
    return-void
.end method

.method private static native freeWrappedVideoRenderer(J)V
.end method

.method public static native nativeCopyPlane(Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;I)V
.end method

.method private static native nativeWrapVideoRenderer(Lorg/webrtc/ali/VideoRenderer$Callbacks;)J
.end method

.method private static native releaseNativeFrame(J)V
.end method

.method public static renderFrameDone(Lorg/webrtc/ali/VideoRenderer$I420Frame;)V
    .locals 4
    .param p0, "frame"    # Lorg/webrtc/ali/VideoRenderer$I420Frame;

    .prologue
    const-wide/16 v2, 0x0

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 156
    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->textureId:I

    .line 157
    invoke-static {p0}, Lorg/webrtc/ali/VideoRenderer$I420Frame;->access$000(Lorg/webrtc/ali/VideoRenderer$I420Frame;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 158
    invoke-static {p0}, Lorg/webrtc/ali/VideoRenderer$I420Frame;->access$000(Lorg/webrtc/ali/VideoRenderer$I420Frame;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/webrtc/ali/VideoRenderer;->releaseNativeFrame(J)V

    .line 159
    invoke-static {p0, v2, v3}, Lorg/webrtc/ali/VideoRenderer$I420Frame;->access$002(Lorg/webrtc/ali/VideoRenderer$I420Frame;J)J

    .line 161
    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 170
    iget-wide v0, p0, Lorg/webrtc/ali/VideoRenderer;->nativeVideoRenderer:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-wide v0, p0, Lorg/webrtc/ali/VideoRenderer;->nativeVideoRenderer:J

    invoke-static {v0, v1}, Lorg/webrtc/ali/VideoRenderer;->freeWrappedVideoRenderer(J)V

    .line 176
    iput-wide v2, p0, Lorg/webrtc/ali/VideoRenderer;->nativeVideoRenderer:J

    goto :goto_0
.end method
