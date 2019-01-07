.class public final Lcut;
.super Ldaj;
.source "DingVoiceToViewHolder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ldaj;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageContent$AudioContent;I)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "entity"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "audioContent"    # Lcom/alibaba/wukong/im/MessageContent$AudioContent;
    .param p4, "position"    # I

    .prologue
    .line 34
    invoke-super {p0, p1, p2, p3, p4}, Ldaj;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageContent$AudioContent;I)V

    .line 35
    invoke-virtual {p0, p2}, Lcut;->b(Lcom/alibaba/wukong/im/Message;)Z

    .line 36
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lctk$g;->chatting_item_to:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lctk$g;->chatting_item_to_voice_ding:I

    return v0
.end method

.method protected final c(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 18
    invoke-super {p0, p1}, Ldaj;->c(Landroid/view/View;)V

    .line 20
    iget-object v0, p0, Lcut;->r:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcut;->r:Landroid/view/View;

    new-instance v1, Lcut$1;

    invoke-direct {v1, p0}, Lcut$1;-><init>(Lcut;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    :cond_0
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcut;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lctk$i;->dt_accessibility_conversation_send_audio_ding:I

    invoke-static {v2}, Lcut;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcut;->Z:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->getDurationString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Lctk$i;->dt_accessibility_message_type_ding_audio:I

    invoke-static {v2}, Lcut;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcut;->Z:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->getDurationString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final p()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    iget-object v0, p0, Lcut;->r:Landroid/view/View;

    sget v1, Lctk$e;->im_ding_to_bg_left_pressed:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 52
    return-void
.end method

.method protected final q()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    iget-object v0, p0, Lcut;->r:Landroid/view/View;

    sget v1, Lctk$e;->im_ding_to_bg_left_normal:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 57
    return-void
.end method
