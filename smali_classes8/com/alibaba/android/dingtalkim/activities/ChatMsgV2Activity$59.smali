.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;
.super Ljava/lang/Object;
.source "ChatMsgV2Activity.java"

# interfaces
.implements Lddx$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 3072
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 1

    .prologue
    .line 3367
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->dismissLoadingDialog()V

    .line 3368
    return-void
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 3094
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->u:Lcug;

    if-eqz v0, :cond_0

    .line 3095
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->u:Lcug;

    invoke-virtual {v0}, Lcug;->notifyDataSetChanged()V

    .line 3097
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 3
    .param p1, "dataPosition"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 3161
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    if-eqz v0, :cond_0

    .line 3162
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a(IIZZ)V

    .line 3164
    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "unreadCount"    # I
    .param p2, "anchorType"    # Ljava/lang/String;
    .param p3, "anchorMsgId"    # Ljava/lang/String;

    .prologue
    .line 3101
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->e(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;I)I

    .line 3102
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0, p2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Ljava/lang/String;)Ljava/lang/String;

    .line 3103
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0, p3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->c(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Ljava/lang/String;)Ljava/lang/String;

    .line 3104
    return-void
.end method

.method public final a(J)V
    .locals 3
    .param p1, "messageId"    # J

    .prologue
    .line 3125
    invoke-static {}, Lder;->a()Lder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v1, p1, p2}, Lder;->a(Lcom/alibaba/wukong/im/Conversation;J)V

    .line 3126
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3086
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iput-object p1, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 3087
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->k(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    .line 3088
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->c(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Lcom/alibaba/wukong/im/Conversation;)V

    .line 3089
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->l(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    .line 3090
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;Z)V
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "resetConversationInfo"    # Z

    .prologue
    .line 3076
    if-eqz p1, :cond_0

    .line 3077
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iput-object p1, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 3078
    if-eqz p2, :cond_0

    .line 3079
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->l(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    .line 3082
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;)V
    .locals 1
    .param p1, "data"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 3130
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->u:Lcug;

    if-eqz v0, :cond_0

    .line 3131
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->u:Lcug;

    .line 4119
    iput-object p1, v0, Lcug;->h:Lcom/alibaba/wukong/im/Message;

    .line 3133
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;IZ)V
    .locals 4
    .param p1, "data"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "anchorPosition"    # I
    .param p3, "animation"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 3138
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    if-eqz v0, :cond_0

    .line 3139
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v2, v2, v1}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a(IIZZ)V

    .line 3140
    if-eqz p3, :cond_0

    .line 3141
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;ILcom/alibaba/wukong/im/Message;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3157
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/VoiceTranslateData;)V
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "data"    # Lcom/alibaba/wukong/im/VoiceTranslateData;

    .prologue
    .line 3285
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->M()Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->a(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/VoiceTranslateData;)V

    .line 3286
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;Z)V
    .locals 2
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "select"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3246
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->F:Ldru;

    if-eqz v0, :cond_0

    .line 3247
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->F:Ldru;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ldru;->a(Lcom/alibaba/wukong/im/Message;Z)V

    .line 3249
    :cond_0
    return-void
.end method

.method public final a(Ldqq;)V
    .locals 1
    .param p1, "chatMsgListModel"    # Ldqq;

    .prologue
    .line 3324
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iput-object p1, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->t:Ldqq;

    .line 3325
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "newTitle"    # Ljava/lang/String;

    .prologue
    .line 3290
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iput-object p1, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->D:Ljava/lang/String;

    .line 3291
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(Ljava/lang/String;)V

    .line 3292
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "msg"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 3168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    .line 3169
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v1, p2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/wukong/im/Message;

    .line 3170
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    sget v2, Lctk$f;->unread_tip_button:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3171
    .local v0, "unreadTip":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3172
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59$2;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;Lcom/alibaba/wukong/im/Message;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3179
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->d:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 3180
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 3181
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->d:Landroid/animation/ObjectAnimator;

    .line 3183
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 3184
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3185
    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 3187
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    const-string/jumbo v2, "translationX"

    const/4 v3, 0x2

    new-array v3, v3, [F

    invoke-virtual {v0}, Landroid/widget/TextView;->getTranslationX()F

    move-result v4

    aput v4, v3, v5

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->d:Landroid/animation/ObjectAnimator;

    .line 3188
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->d:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3189
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 3191
    .end local v0    # "unreadTip":Landroid/widget/TextView;
    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "typingTitle"    # Ljava/lang/String;
    .param p2, "updateReceiveTypingTime"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3265
    if-eqz p2, :cond_0

    .line 3266
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->c(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;J)J

    .line 3268
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    if-eqz v0, :cond_2

    .line 3269
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    if-nez p1, :cond_1

    const-string/jumbo p1, ""

    .end local p1    # "typingTitle":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, p1}, Ldvw;->b(Ljava/lang/String;)V

    .line 3271
    :cond_2
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3229
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->d()V

    .line 3230
    return-void
.end method

.method public final a(Ljava/util/List;Lcom/alibaba/wukong/im/MessageListener$DataType;)V
    .locals 6
    .param p2, "dataType"    # Lcom/alibaba/wukong/im/MessageListener$DataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Lcom/alibaba/wukong/im/MessageListener$DataType;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3215
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(Ljava/util/List;)V

    .line 3216
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->X(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Ldmg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3217
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->X(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Ldmg;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ldmg;->a(Ljava/util/List;Lcom/alibaba/wukong/im/MessageListener$DataType;)V

    .line 3220
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-ne v0, v1, :cond_2

    :cond_1
    if-eqz p1, :cond_2

    .line 3222
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aj(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->f(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;I)I

    .line 3223
    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->l()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Receive message "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aj(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ak(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3225
    :cond_2
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "shouldSendTypingState"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3108
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ai(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    .line 3110
    if-eqz p1, :cond_0

    .line 3111
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->c(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Z)Z

    .line 3113
    :cond_0
    return-void
.end method

.method public final a(ZZ)V
    .locals 3
    .param p1, "smooth"    # Z
    .param p2, "safe"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3117
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    if-eqz v0, :cond_0

    .line 3118
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a(ZZ)V

    .line 3120
    :cond_0
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 3372
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3373
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 3362
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->showLoadingDialog()V

    .line 3363
    return-void
.end method

.method public final b(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 3260
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->g(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;I)V

    .line 3261
    return-void
.end method

.method public final b(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 3239
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    if-eqz v0, :cond_0

    .line 3240
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    .line 5177
    iput-wide p1, v0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->f:J

    .line 3242
    :cond_0
    return-void
.end method

.method public final b(Lcom/alibaba/wukong/im/Message;)V
    .locals 1
    .param p1, "lastValidateMsg"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 3319
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iput-object p1, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->S:Lcom/alibaba/wukong/im/Message;

    .line 3320
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3234
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->e()V

    .line 3235
    return-void
.end method

.method public final b(Z)V
    .locals 2
    .param p1, "isEnterprise"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3296
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->c(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59$3;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3303
    return-void
.end method

.method public final c(I)V
    .locals 1
    .param p1, "unreadCount"    # I

    .prologue
    .line 3352
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->e(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;I)I

    .line 3353
    return-void
.end method

.method public final c(Z)V
    .locals 1
    .param p1, "refreshing"    # Z

    .prologue
    .line 3312
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->am(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3313
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->am(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 3315
    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 3377
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->t(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 3195
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    if-eqz v0, :cond_0

    .line 3196
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a()V

    .line 3198
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3202
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getLastVisibleDataPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->t:Ldqq;

    invoke-virtual {v1}, Ldqq;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->t:Ldqq;

    .line 4321
    iget-boolean v0, v0, Ldqq;->f:Z

    .line 3202
    if-eqz v0, :cond_0

    .line 3203
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->c()V

    .line 3204
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a(ZZ)V

    .line 3206
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 3210
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->supportInvalidateOptionsMenu()V

    .line 3211
    return-void
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 3253
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3254
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->finish()V

    .line 3256
    :cond_0
    return-void
.end method

.method public final i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3275
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->al(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(Ljava/lang/String;)V

    .line 3276
    return-void
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 3280
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->g()V

    .line 3281
    return-void
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 3307
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->l(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    .line 3308
    return-void
.end method

.method public final l()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3329
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    if-eqz v0, :cond_0

    .line 3330
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getCurrentAnchor()Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$a;)Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$a;

    .line 3332
    :cond_0
    return-void
.end method

.method public final m()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3336
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    if-eqz v0, :cond_0

    .line 3337
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->an(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$a;)V

    .line 3339
    :cond_0
    return-void
.end method

.method public final n()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3344
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    if-eqz v0, :cond_0

    .line 3345
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->c()V

    .line 3346
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a(ZZ)V

    .line 3348
    :cond_0
    return-void
.end method

.method public final synthetic setPresenter(Lcjd;)V
    .locals 1

    .prologue
    .line 3072
    check-cast p1, Lddx$a;

    .line 5357
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Lddx$a;)Lddx$a;

    .line 3072
    return-void
.end method
