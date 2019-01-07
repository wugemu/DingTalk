.class public final Ldqm$a;
.super Ldbw;
.source "BurnChatModel.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldqm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldbw;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field a:Z

.field b:Landroid/app/Activity;

.field c:Ldbw$a;

.field d:Ljava/lang/String;

.field private e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private f:Z


# direct methods
.method private constructor <init>(Landroid/app/Activity;ZLjava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "checkPwd"    # Z
    .param p3, "statisticFrom"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-direct {p0}, Ldbw;-><init>()V

    .line 113
    iput-object p1, p0, Ldqm$a;->b:Landroid/app/Activity;

    .line 114
    iput-boolean p2, p0, Ldqm$a;->f:Z

    .line 115
    iput-object p3, p0, Ldqm$a;->d:Ljava/lang/String;

    .line 116
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;ZLjava/lang/String;B)V
    .locals 0
    .param p1, "x0"    # Landroid/app/Activity;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3}, Ldqm$a;-><init>(Landroid/app/Activity;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldqm$a;->a:Z

    .line 126
    iput-object v1, p0, Ldqm$a;->b:Landroid/app/Activity;

    .line 127
    iput-object v1, p0, Ldqm$a;->c:Ldbw$a;

    .line 128
    iput-object v1, p0, Ldqm$a;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 129
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 8
    .param p1, "data"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v6, 0x4

    const/4 v4, 0x0

    .line 154
    iget-boolean v1, p0, Ldqm$a;->a:Z

    if-eqz v1, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Ldqm$a;->b:Landroid/app/Activity;

    if-nez v1, :cond_3

    .line 158
    :cond_2
    iget-object v1, p0, Ldqm$a;->c:Ldbw$a;

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Ldqm$a;->c:Ldbw$a;

    invoke-interface {v1, v4, v4}, Ldbw$a;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_3
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    cmp-long v1, v6, v2

    if-eqz v1, :cond_5

    .line 164
    iget-object v1, p0, Ldqm$a;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcms;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 165
    new-instance v1, Ldqm$a$2;

    invoke-direct {v1, p0, p1}, Ldqm$a$2;-><init>(Ldqm$a;Lcom/alibaba/wukong/im/Conversation;)V

    invoke-interface {p1, v6, v7, v1}, Lcom/alibaba/wukong/im/Conversation;->updateTag(JLcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 191
    :cond_4
    invoke-virtual {p0, v4, v4}, Ldqm$a;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_5
    iget-object v1, p0, Ldqm$a;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v1, :cond_6

    .line 196
    iget-object v1, p0, Ldqm$a;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 198
    :cond_6
    iget-object v1, p0, Ldqm$a;->c:Ldbw$a;

    if-eqz v1, :cond_7

    .line 199
    iget-object v1, p0, Ldqm$a;->c:Ldbw$a;

    invoke-interface {v1}, Ldbw$a;->onSuccess()V

    .line 202
    :cond_7
    iget-boolean v1, p0, Ldqm$a;->f:Z

    if-eqz v1, :cond_8

    .line 203
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    new-instance v2, Ldqm$a$3;

    invoke-direct {v2, p0, p1}, Ldqm$a$3;-><init>(Ldqm$a;Lcom/alibaba/wukong/im/Conversation;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 232
    :cond_8
    iget-object v1, p0, Ldqm$a;->b:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldqm$a;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 234
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "conversation_id"

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string/jumbo v1, "to_page"

    const-string/jumbo v2, "to_chat"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string/jumbo v1, "intent_is_burn_chat"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 237
    const-string/jumbo v1, "im_navigator_from"

    iget-object v2, p0, Ldqm$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    iget-object v2, p0, Ldqm$a;->b:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 132
    iget-object v0, p0, Ldqm$a;->b:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Ldqm$a;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    iget-object v1, p0, Ldqm$a;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ldqm$a;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 135
    iget-object v0, p0, Ldqm$a;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    iget-object v1, p0, Ldqm$a;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lctk$i;->create_burn_waiting:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Ldqm$a;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setCancelable(Z)V

    .line 137
    iget-object v0, p0, Ldqm$a;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    new-instance v1, Ldqm$a$1;

    invoke-direct {v1, p0}, Ldqm$a$1;-><init>(Ldqm$a;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 144
    :cond_0
    iget-object v0, p0, Ldqm$a;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 146
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 246
    iget-boolean v0, p0, Ldqm$a;->a:Z

    if-eqz v0, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Ldqm$a;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Ldqm$a;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 252
    :cond_2
    const-string/jumbo v0, "im"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[createBurnChat] error: code:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ",reason:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    .line 253
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-static {v0, v4, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Ldqm$a;->c:Ldbw$a;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Ldqm$a;->b:Landroid/app/Activity;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ldqm$a;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 256
    const-string/jumbo v0, "101008"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 257
    iget-object v0, p0, Ldqm$a;->c:Ldbw$a;

    iget-object v1, p0, Ldqm$a;->b:Landroid/app/Activity;

    sget v2, Lctk$i;->create_burn_con_error_case_reject:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ldbw$a;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_3
    iget-object v0, p0, Ldqm$a;->c:Ldbw$a;

    invoke-interface {v0, p1, p2}, Ldbw$a;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :cond_4
    iget-object v0, p0, Ldqm$a;->c:Ldbw$a;

    invoke-interface {v0, p1, p2}, Ldbw$a;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 103
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p0, p1}, Ldqm$a;->a(Lcom/alibaba/wukong/im/Conversation;)V

    return-void
.end method
