.class public Lorg/webrtc/ali/VideoEncoder$ScalingSettings;
.super Ljava/lang/Object;
.source "VideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/VideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScalingSettings"
.end annotation


# instance fields
.field public final high:I

.field public final low:I

.field public final on:Z


# direct methods
.method public constructor <init>(ZII)V
    .locals 0
    .param p1, "on"    # Z
    .param p2, "low"    # I
    .param p3, "high"    # I

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-boolean p1, p0, Lorg/webrtc/ali/VideoEncoder$ScalingSettings;->on:Z

    .line 99
    iput p2, p0, Lorg/webrtc/ali/VideoEncoder$ScalingSettings;->low:I

    .line 100
    iput p3, p0, Lorg/webrtc/ali/VideoEncoder$ScalingSettings;->high:I

    .line 101
    return-void
.end method
