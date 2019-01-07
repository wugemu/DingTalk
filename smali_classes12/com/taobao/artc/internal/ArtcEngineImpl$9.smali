.class final Lcom/taobao/artc/internal/ArtcEngineImpl$9;
.super Ljava/lang/Object;
.source "ArtcEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/artc/internal/ArtcEngineImpl;->setBroadcast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/taobao/artc/internal/ArtcEngineImpl;


# direct methods
.method constructor <init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 1100
    iput-object p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$9;->b:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iput-object p2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$9;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1104
    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$9;->b:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$3000(Lcom/taobao/artc/internal/ArtcEngineImpl;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1112
    const v0, 0xf3e58

    .line 1115
    .local v0, "bitrate":I
    :goto_0
    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$9;->b:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iget-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$9;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$3600(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/lang/String;I)I

    .line 1116
    return-void

    .line 1106
    .end local v0    # "bitrate":I
    :sswitch_0
    const v0, 0xaae60

    .line 1107
    .restart local v0    # "bitrate":I
    goto :goto_0

    .line 1109
    .end local v0    # "bitrate":I
    :sswitch_1
    const v0, 0x16e360

    .line 1110
    .restart local v0    # "bitrate":I
    goto :goto_0

    .line 1104
    nop

    :sswitch_data_0
    .sparse-switch
        0x280 -> :sswitch_0
        0x500 -> :sswitch_1
    .end sparse-switch
.end method
