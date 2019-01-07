.class public Lcom/taobao/artc/api/ArtcExternalAudioProcess$AudioFrame;
.super Ljava/lang/Object;
.source "ArtcExternalAudioProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/artc/api/ArtcExternalAudioProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioFrame"
.end annotation


# instance fields
.field public buffer:Ljava/nio/ByteBuffer;

.field public channels:I

.field public sample_rate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
