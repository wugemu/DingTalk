.class final Lcom/alibaba/android/ding/widget/VoicePlayView$1;
.super Ljava/lang/Object;
.source "VoicePlayView.java"

# interfaces
.implements Lcom/alibaba/doraemon/audio/OnPlayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/VoicePlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/VoicePlayView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/VoicePlayView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/VoicePlayView;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$1;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPlayErrorListener(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "error"    # I
    .param p3, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 148
    sget-object v0, Lcom/alibaba/android/ding/widget/VoicePlayView;->a:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "onPlayErrorListener error:"

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$1;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->a(Lcom/alibaba/android/ding/widget/VoicePlayView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$1;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->c(Lcom/alibaba/android/ding/widget/VoicePlayView;)Lcom/alibaba/android/ding/widget/VoicePlayView$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$1;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->c(Lcom/alibaba/android/ding/widget/VoicePlayView;)Lcom/alibaba/android/ding/widget/VoicePlayView$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$1;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/VoicePlayView;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/VoicePlayView$a;->b(Ljava/lang/String;)V

    .line 157
    :cond_1
    if-ne v6, p2, :cond_2

    .line 158
    sget v0, Laxp$i;->audio_file_not_exist:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 163
    :goto_1
    new-array v0, v6, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string/jumbo v1, "voice play error :"

    aput-object v1, v0, v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string/jumbo v2, "\n"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object p3, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_2
    sget v0, Laxp$i;->audio_play_failed:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_1
.end method

.method public final onPlayStateListener(Ljava/lang/String;I)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "state"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 85
    sget-object v0, Lcom/alibaba/android/ding/widget/VoicePlayView;->a:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "onPlayStateListener url:"

    aput-object v2, v0, v1

    aput-object p1, v0, v6

    const-string/jumbo v1, " state:"

    aput-object v1, v0, v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    .line 86
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$1;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->a(Lcom/alibaba/android/ding/widget/VoicePlayView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$1;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-static {v0, p2}, Lcom/alibaba/android/ding/widget/VoicePlayView;->a(Lcom/alibaba/android/ding/widget/VoicePlayView;I)I

    .line 91
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 93
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$1;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->b(Lcom/alibaba/android/ding/widget/VoicePlayView;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v3, v5, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 94
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$1;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->c(Lcom/alibaba/android/ding/widget/VoicePlayView;)Lcom/alibaba/android/ding/widget/VoicePlayView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$1;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->c(Lcom/alibaba/android/ding/widget/VoicePlayView;)Lcom/alibaba/android/ding/widget/VoicePlayView$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$1;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/VoicePlayView;->getMessageId()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/VoicePlayView$a;->a()V

    goto :goto_0

    .line 100
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$1;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->b(Lcom/alibaba/android/ding/widget/VoicePlayView;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$1;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->c(Lcom/alibaba/android/ding/widget/VoicePlayView;)Lcom/alibaba/android/ding/widget/VoicePlayView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$1;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->c(Lcom/alibaba/android/ding/widget/VoicePlayView;)Lcom/alibaba/android/ding/widget/VoicePlayView$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$1;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/VoicePlayView;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/VoicePlayView$a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$1;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->b(Lcom/alibaba/android/ding/widget/VoicePlayView;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 107
    invoke-static {}, Lciu;->a()Lciu;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/widget/VoicePlayView;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Lciu;->a(Ljava/lang/String;I)V

    .line 108
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$1;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->c(Lcom/alibaba/android/ding/widget/VoicePlayView;)Lcom/alibaba/android/ding/widget/VoicePlayView$a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$1;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->c(Lcom/alibaba/android/ding/widget/VoicePlayView;)Lcom/alibaba/android/ding/widget/VoicePlayView$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$1;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/VoicePlayView;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/VoicePlayView$a;->a(Ljava/lang/String;)V

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$1;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->a()V

    goto :goto_0

    .line 114
    :pswitch_4
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$1;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->b(Lcom/alibaba/android/ding/widget/VoicePlayView;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v3, v5, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    goto/16 :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final onProgressListener(Ljava/lang/String;II)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "progress"    # I
    .param p3, "duration"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 133
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$1;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->a(Lcom/alibaba/android/ding/widget/VoicePlayView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$1;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->d(Lcom/alibaba/android/ding/widget/VoicePlayView;)Lbla;

    move-result-object v0

    .line 1050
    iput p2, v0, Lbla;->c:I

    .line 138
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/VoicePlayView$1;->a:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/widget/VoicePlayView$1$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/alibaba/android/ding/widget/VoicePlayView$1$1;-><init>(Lcom/alibaba/android/ding/widget/VoicePlayView$1;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final onRequestFinsh(Ljava/lang/String;I)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "downloadSize"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 128
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "voice play request finished :"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public final onRequestStart(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 123
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "voice play request start :"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 124
    return-void
.end method
