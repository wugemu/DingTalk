.class final Lcom/taobao/artc/internal/ArtcEngineImpl$12;
.super Landroid/os/Handler;
.source "ArtcEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/artc/internal/ArtcEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/artc/internal/ArtcEngineImpl;


# direct methods
.method constructor <init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$12;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 206
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 213
    :goto_0
    return-void

    .line 208
    :pswitch_0
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$12;->a:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$100(Lcom/taobao/artc/internal/ArtcEngineImpl;)V

    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
