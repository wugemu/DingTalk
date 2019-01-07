.class public final Ldpq;
.super Ljava/lang/Object;
.source "MenuVoiceTranslateHandler.java"

# interfaces
.implements Ldon;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JLeav;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p4, "atSeed"    # J
    .param p6, "chatMsgMenuContext"    # Leav;

    .prologue
    .line 46
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    instance-of v2, p1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v2, :cond_0

    .line 48
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "chat_transtotext_click"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    move-object v0, p1

    .line 50
    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 52
    .local v0, "activity":Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;
    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0xcc

    if-ne v2, v3, :cond_2

    .line 53
    invoke-static {}, Ldrg;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 86
    .end local v0    # "activity":Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;
    :cond_0
    :goto_0
    return-void

    .line 58
    .restart local v0    # "activity":Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;
    :cond_1
    const-string/jumbo v2, "key_allow_trans_encrypt_voice"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 59
    .local v1, "permissionAllow":Z
    if-nez v1, :cond_2

    .line 61
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lctk$i;->tip:I

    .line 62
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lctk$i;->dt_message_encrypt_audio_to_text_privacy:I

    .line 63
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lctk$i;->ok:I

    .line 64
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ldpq$2;

    invoke-direct {v4, p0, v0, p3}, Ldpq$2;-><init>(Ldpq;Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;Lcom/alibaba/wukong/im/Message;)V

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lctk$i;->dt_permission_deny:I

    .line 73
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ldpq$1;

    invoke-direct {v4, p0}, Ldpq$1;-><init>(Ldpq;)V

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 78
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 84
    .end local v1    # "permissionAllow":Z
    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->M()Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;

    move-result-object v2

    const/16 v3, 0x13

    invoke-virtual {v2, p3, v3}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->a(Lcom/alibaba/wukong/im/Message;I)V

    goto :goto_0
.end method
