.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin$1;
.super Ljava/lang/Object;
.source "MiniappBackgroundAudioPlugin.java"

# interfaces
.implements Lcom/alibaba/doraemon/audio/OnPlayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->onPrepare(Liof;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPlayErrorListener(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;

    invoke-static {v0, p2, p3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;ILjava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->b(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;)V

    .line 119
    return-void
.end method

.method public final onPlayStateListener(Ljava/lang/String;I)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "state"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    packed-switch p2, :pswitch_data_0

    .line 98
    :goto_0
    :pswitch_0
    return-void

    .line 80
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;)V

    .line 81
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;

    const-string/jumbo v1, "onPlay"

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->b(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;)V

    .line 85
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->b(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;)V

    .line 89
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->c(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;)V

    .line 90
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;

    const-string/jumbo v1, "onEnded"

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :pswitch_4
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->b(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;)V

    .line 94
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->c(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;)V

    .line 95
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final onProgressListener(Ljava/lang/String;II)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;

    div-int/lit16 v1, p2, 0x3e8

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappBackgroundAudioPlugin;I)V

    .line 113
    return-void
.end method

.method public final onRequestFinsh(Ljava/lang/String;I)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    .line 108
    return-void
.end method

.method public final onRequestStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 103
    return-void
.end method
