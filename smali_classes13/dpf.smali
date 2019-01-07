.class public final Ldpf;
.super Ljava/lang/Object;
.source "MenuRecallHandler.java"

# interfaces
.implements Ldon;


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ldpf;Landroid/content/Context;)V
    .locals 3
    .param p0, "x0"    # Ldpf;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 50
    .line 1217
    if-eqz p1, :cond_0

    .line 1220
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "pref_key_recalled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1221
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1222
    sget v1, Lctk$i;->msg_recall_success:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1223
    sget v1, Lctk$i;->sure:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1224
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1225
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "pref_key_recalled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Ldpf;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldpf;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Ldpf;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 214
    :cond_0
    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 195
    iget-object v0, p0, Ldpf;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Ldpf;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Ldpf;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    if-eqz p1, :cond_0

    .line 204
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ldpf;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 205
    iget-object v0, p0, Ldpf;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lctk$i;->msg_recalling:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Ldpf;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 207
    iget-object v0, p0, Ldpf;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setCancelable(Z)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JLeav;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p4, "atSeed"    # J
    .param p6, "chatMsgMenuContext"    # Leav;

    .prologue
    const/4 v1, 0x0

    .line 55
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v2, "chat_recall_success"

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p1}, Ldpf;->a(Landroid/content/Context;)V

    .line 64
    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 65
    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v5

    .line 1145
    .local v5, "contentType":I
    :goto_1
    const/16 v0, 0x1f8

    if-eq v5, v0, :cond_3

    move v0, v1

    .line 70
    :goto_2
    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0, p1, p3, v5}, Ldpf;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;I)V

    goto :goto_0

    .line 67
    .end local v5    # "contentType":I
    :cond_2
    const/4 v5, -0x1

    .restart local v5    # "contentType":I
    goto :goto_1

    .line 1149
    :cond_3
    if-eqz p1, :cond_4

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_4

    if-nez p2, :cond_5

    :cond_4
    move v0, v1

    .line 1150
    goto :goto_2

    .line 1152
    :cond_5
    if-eqz p3, :cond_6

    instance-of v0, p3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-nez v0, :cond_7

    :cond_6
    move v0, v1

    .line 1153
    goto :goto_2

    :cond_7
    move-object v0, p3

    .line 1155
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 1156
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    if-nez v2, :cond_9

    :cond_8
    move v0, v1

    .line 1157
    goto :goto_2

    .line 1159
    :cond_9
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    .line 1161
    new-instance v0, Ldpf$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ldpf$3;-><init>(Ldpf;Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;I)V

    .line 1188
    const-class v2, Lcma;

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v0, v2, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1189
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v2, v1, v6, p2, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->b(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;Lcma;)V

    .line 1191
    const/4 v0, 0x1

    goto :goto_2
.end method

.method a(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "contentType"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 79
    :cond_0
    invoke-virtual {p0}, Ldpf;->a()V

    .line 141
    .end local p1    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 83
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    invoke-virtual {p0, p1}, Ldpf;->a(Landroid/content/Context;)V

    .line 85
    const/16 v0, 0x640

    if-ne p3, v0, :cond_2

    .line 86
    const-string/jumbo v0, "im_ding_card_recall"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    .line 89
    :cond_2
    const/16 v0, 0x1f4

    if-eq p3, v0, :cond_3

    const/16 v0, 0x1f5

    if-eq p3, v0, :cond_3

    const/16 v0, 0x1f8

    if-eq p3, v0, :cond_3

    .line 92
    invoke-static {p2}, Ldkc;->u(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 94
    :cond_3
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v0

    invoke-virtual {v0}, Ldyn;->c()Ldxx;

    move-result-object v1

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    const-string/jumbo v0, "EVENTBUTLER"

    .line 95
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Ldpf$1;

    invoke-direct {v4, p0, p1, p2}, Ldpf$1;-><init>(Ldpf;Landroid/content/Context;Lcom/alibaba/wukong/im/Message;)V

    const-class v5, Lcma;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-interface {v0, v4, v5, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 94
    invoke-interface {v1, v2, v3, v0}, Ldxx;->a(JLcma;)V

    goto :goto_0

    .line 118
    .restart local p1    # "context":Landroid/content/Context;
    :cond_4
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Ldpf$2;

    invoke-direct {v1, p0, p1}, Ldpf$2;-><init>(Ldpf;Landroid/content/Context;)V

    const-class v2, Lcom/alibaba/wukong/Callback;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-interface {v0, v1, v2, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {p2, v0}, Lcom/alibaba/wukong/im/Message;->recallMessage(Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
