.class public Lorg/webrtc/ali/VideoDecoder$DecodeInfo;
.super Ljava/lang/Object;
.source "VideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/VideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecodeInfo"
.end annotation


# instance fields
.field public final isMissingFrames:Z

.field public final renderTimeMs:J


# direct methods
.method public constructor <init>(ZJ)V
    .locals 0
    .param p1, "isMissingFrames"    # Z
    .param p2, "renderTimeMs"    # J

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean p1, p0, Lorg/webrtc/ali/VideoDecoder$DecodeInfo;->isMissingFrames:Z

    .line 38
    iput-wide p2, p0, Lorg/webrtc/ali/VideoDecoder$DecodeInfo;->renderTimeMs:J

    .line 39
    return-void
.end method
