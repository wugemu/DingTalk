.class Lorg/webrtc/ali/VideoDecoderWrapperCallback;
.super Ljava/lang/Object;
.source "VideoDecoderWrapperCallback.java"

# interfaces
.implements Lorg/webrtc/ali/VideoDecoder$Callback;


# instance fields
.field private final nativeDecoder:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "nativeDecoder"    # J

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide p1, p0, Lorg/webrtc/ali/VideoDecoderWrapperCallback;->nativeDecoder:J

    .line 21
    return-void
.end method

.method private static native nativeOnDecodedFrame(JLorg/webrtc/ali/VideoFrame;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method


# virtual methods
.method public onDecodedFrame(Lorg/webrtc/ali/VideoFrame;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "frame"    # Lorg/webrtc/ali/VideoFrame;
    .param p2, "decodeTimeMs"    # Ljava/lang/Integer;
    .param p3, "qp"    # Ljava/lang/Integer;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 25
    iget-wide v0, p0, Lorg/webrtc/ali/VideoDecoderWrapperCallback;->nativeDecoder:J

    invoke-static {v0, v1, p1, p2, p3}, Lorg/webrtc/ali/VideoDecoderWrapperCallback;->nativeOnDecodedFrame(JLorg/webrtc/ali/VideoFrame;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 26
    return-void
.end method
