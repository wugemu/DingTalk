.class public final Lcus;
.super Ldai;
.source "DingVoiceFromViewHolder.java"


# instance fields
.field private ae:Lcum;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ldai;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageContent$AudioContent;I)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "entity"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "audioContent"    # Lcom/alibaba/wukong/im/MessageContent$AudioContent;
    .param p4, "position"    # I

    .prologue
    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Ldai;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageContent$AudioContent;I)V

    .line 32
    invoke-virtual {p0, p2}, Lcus;->b(Lcom/alibaba/wukong/im/Message;)Z

    .line 33
    iget-object v0, p0, Lcus;->ae:Lcum;

    invoke-virtual {v0, p1, p2}, Lcum;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    .line 34
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lctk$g;->chatting_item_from:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lctk$g;->chatting_item_from_voice_ding:I

    return v0
.end method

.method protected final c(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 20
    invoke-super {p0, p1}, Ldai;->c(Landroid/view/View;)V

    .line 22
    iget-object v0, p0, Lcus;->ae:Lcum;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcum;

    invoke-direct {v0}, Lcum;-><init>()V

    iput-object v0, p0, Lcus;->ae:Lcum;

    .line 25
    :cond_0
    iget-object v0, p0, Lcus;->ae:Lcum;

    iget-object v1, p0, Lcus;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcum;->a(Landroid/view/View;)V

    .line 26
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcus;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lctk$i;->dt_accessibility_conversation_send_audio_ding:I

    invoke-static {v2}, Lcus;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcus;->Z:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

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
    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Lctk$i;->dt_accessibility_message_type_ding_audio:I

    invoke-static {v2}, Lcus;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcus;->Z:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->getDurationString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final p()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method protected final q()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method
