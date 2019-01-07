.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin$1;
.super Ljava/lang/Object;
.source "MiniappAudioPlugin.java"

# interfaces
.implements Lcom/alibaba/doraemon/audio/OnPlayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->onPrepare(Liof;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;

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
    .line 147
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;

    invoke-static {v0, p2, p3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;ILjava/lang/String;)V

    .line 148
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
    .line 102
    packed-switch p2, :pswitch_data_0

    .line 128
    :goto_0
    :pswitch_0
    return-void

    .line 104
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;

    const-string/jumbo v1, "onplay"

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;

    const-string/jumbo v1, "onpause"

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;

    const-string/jumbo v1, "onended"

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :pswitch_4
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;

    const-string/jumbo v1, "onstop"

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :pswitch_5
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;

    const-string/jumbo v1, "oncanplay"

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :pswitch_6
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;

    const-string/jumbo v1, "onwaiting"

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :pswitch_7
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;

    const-string/jumbo v1, "onseeking"

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :pswitch_8
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;

    const-string/jumbo v1, "onseeked"

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_5
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
    .line 142
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;

    div-int/lit16 v1, p2, 0x3e8

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAudioPlugin;I)V

    .line 143
    return-void
.end method

.method public final onRequestFinsh(Ljava/lang/String;I)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    .line 138
    return-void
.end method

.method public final onRequestStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 133
    return-void
.end method
