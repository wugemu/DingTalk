.class public final Ldow;
.super Ljava/lang/Object;
.source "MenuDingPegHandler.java"

# interfaces
.implements Ldon;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JLeav;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p4, "atSeed"    # J
    .param p6, "chatMsgMenuContext"    # Leav;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_dingzhu_success"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 36
    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-eq v0, v1, :cond_2

    .line 41
    sget v0, Lctk$i;->chat_menu_ding_forbidden:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 45
    :cond_2
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    move-object v0, p1

    .line 47
    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p2, p3, v2}, Ldjm;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;Z)V

    .line 49
    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 50
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sended_ding_guide"

    invoke-static {v0, v1, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 53
    :cond_3
    const-string/jumbo v0, "ding_peg_guide_first_show"

    invoke-static {v0, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    const-string/jumbo v0, "ding_peg_guide_first_show"

    invoke-static {v0, v3}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 1061
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 1062
    sget v1, Lctk$e;->ding_peg_guide_icon:I

    .line 1243
    iput v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->h:I

    .line 1063
    sget v1, Lctk$i;->dt_ding_guide_popview_title:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2218
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->c:Ljava/lang/String;

    .line 2230
    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 1065
    sget v1, Lctk$i;->ding_create_pin_first_use_content:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2239
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 1066
    sget v1, Lctk$i;->guide_text_i_know_that:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2259
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->f:Ljava/lang/String;

    .line 1067
    new-instance v1, Ldow$1;

    invoke-direct {v1, p0, v0}, Ldow$1;-><init>(Ldow;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    .line 2271
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a:Landroid/view/View$OnClickListener;

    .line 1072
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Ldow$2;

    invoke-direct {v2, p0, v0}, Ldow$2;-><init>(Ldow;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
