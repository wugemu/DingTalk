.class public Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;
.super Ljava/lang/Object;
.source "ArtcExternalVideoProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/artc/api/ArtcExternalVideoProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoFrame"
.end annotation


# instance fields
.field public buffer:Ljava/nio/ByteBuffer;

.field public colorspace:Lcom/taobao/artc/api/AConstants$ColorSpace;

.field public front:Z

.field public height:I

.field public rotationDegree:I

.field public textureId:I

.field public timestamp_ns:J

.field public transformMatrix:[F

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
