.class public final Ldov;
.super Ljava/lang/Object;
.source "MenuDingHandler.java"

# interfaces
.implements Ldon;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JLeav;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p4, "atSeed"    # J
    .param p6, "chatMsgMenuContext"    # Leav;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 31
    if-eqz p3, :cond_0

    .line 32
    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v2

    sget-object v3, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-eq v2, v3, :cond_1

    .line 33
    sget v0, Lctk$i;->chat_menu_ding_forbidden:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1052
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1061
    if-eqz p3, :cond_3

    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1062
    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    .line 1063
    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/16 v3, 0xfc

    if-eq v2, v3, :cond_2

    const/16 v3, 0xcc

    if-ne v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 1068
    :cond_3
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v2, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1097
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    .line 1098
    if-nez p3, :cond_4

    .line 1099
    sget v0, Lctk$b;->menu_ding_new_ding_item:I

    .line 1070
    :goto_1
    new-instance v3, Ldjm$1;

    invoke-direct {v3, p1, p2, p3}, Ldjm$1;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;)V

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1093
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 42
    :goto_2
    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v2, "sended_ding_guide"

    invoke-static {v0, v2, v1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1103
    :cond_4
    if-eqz v0, :cond_5

    .line 1104
    sget v0, Lctk$b;->menu_ding_audio_item:I

    goto :goto_1

    .line 1108
    :cond_5
    sget v0, Lctk$b;->menu_ding_non_audio_item:I

    goto :goto_1

    .line 1055
    :cond_6
    invoke-static {p1, p2, p3, v0}, Ldjm;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;Z)V

    goto :goto_2
.end method
