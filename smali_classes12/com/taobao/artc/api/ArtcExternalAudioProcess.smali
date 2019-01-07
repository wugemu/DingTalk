.class public Lcom/taobao/artc/api/ArtcExternalAudioProcess;
.super Ljava/lang/Object;
.source "ArtcExternalAudioProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/artc/api/ArtcExternalAudioProcess$AudioFrame;
    }
.end annotation


# instance fields
.field private callback:Ljkd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/artc/api/ArtcExternalAudioProcess;->callback:Ljkd;

    return-void
.end method


# virtual methods
.method public onProcess([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "sample_rate"    # I
    .param p3, "channels"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 25
    iget-object v1, p0, Lcom/taobao/artc/api/ArtcExternalAudioProcess;->callback:Ljkd;

    if-eqz v1, :cond_0

    .line 26
    new-instance v0, Lcom/taobao/artc/api/ArtcExternalAudioProcess$AudioFrame;

    invoke-direct {v0}, Lcom/taobao/artc/api/ArtcExternalAudioProcess$AudioFrame;-><init>()V

    .line 27
    .local v0, "af":Lcom/taobao/artc/api/ArtcExternalAudioProcess$AudioFrame;
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/artc/api/ArtcExternalAudioProcess$AudioFrame;->buffer:Ljava/nio/ByteBuffer;

    .line 28
    iput p2, v0, Lcom/taobao/artc/api/ArtcExternalAudioProcess$AudioFrame;->sample_rate:I

    .line 29
    iput p3, v0, Lcom/taobao/artc/api/ArtcExternalAudioProcess$AudioFrame;->channels:I

    .line 32
    .end local v0    # "af":Lcom/taobao/artc/api/ArtcExternalAudioProcess$AudioFrame;
    :cond_0
    return-void
.end method

.method public setProcessCallback(Ljkd;)V
    .locals 0
    .param p1, "callback"    # Ljkd;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/taobao/artc/api/ArtcExternalAudioProcess;->callback:Ljkd;

    .line 22
    return-void
.end method
