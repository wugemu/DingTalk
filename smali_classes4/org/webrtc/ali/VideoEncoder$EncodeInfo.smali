.class public Lorg/webrtc/ali/VideoEncoder$EncodeInfo;
.super Ljava/lang/Object;
.source "VideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/VideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncodeInfo"
.end annotation


# instance fields
.field public final frameTypes:[Lorg/webrtc/ali/EncodedImage$FrameType;


# direct methods
.method public constructor <init>([Lorg/webrtc/ali/EncodedImage$FrameType;)V
    .locals 0
    .param p1, "frameTypes"    # [Lorg/webrtc/ali/EncodedImage$FrameType;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/webrtc/ali/VideoEncoder$EncodeInfo;->frameTypes:[Lorg/webrtc/ali/EncodedImage$FrameType;

    .line 41
    return-void
.end method
