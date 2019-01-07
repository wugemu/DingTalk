.class public Lorg/webrtc/ali/VideoDecoder$Settings;
.super Ljava/lang/Object;
.source "VideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/VideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field public final height:I

.field public final numberOfCores:I

.field public final width:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "numberOfCores"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lorg/webrtc/ali/VideoDecoder$Settings;->numberOfCores:I

    .line 26
    iput p2, p0, Lorg/webrtc/ali/VideoDecoder$Settings;->width:I

    .line 27
    iput p3, p0, Lorg/webrtc/ali/VideoDecoder$Settings;->height:I

    .line 28
    return-void
.end method
