.class final Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$1;
.super Landroid/os/Handler;
.source "MailLoginNativeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 200
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 202
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-virtual {v8}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->F()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    iget-object v8, v8, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v8, :cond_2

    .line 205
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    iget-object v8, v8, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 208
    :cond_2
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v8}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Lrz;

    move-result-object v8

    .line 1045
    const-wide/16 v10, -0x1

    iput-wide v10, v8, Lrz;->a:J

    .line 210
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Z)V

    .line 212
    if-eqz p1, :cond_0

    .line 215
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    .line 217
    :sswitch_0
    iget v8, p1, Landroid/os/Message;->arg1:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    const/4 v5, 0x1

    .line 218
    .local v5, "isAgent":Z
    :goto_1
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-virtual {v8, v5}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Z)V

    goto :goto_0

    .line 217
    .end local v5    # "isAgent":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 221
    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 223
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_5

    .line 224
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    const-string/jumbo v9, "unknown"

    const-string/jumbo v10, "unknown"

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 225
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v8}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->b(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v8}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->b(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 226
    const-string/jumbo v8, "MailLoginNativeFragment.handleMessage"

    const-string/jumbo v9, "unknown"

    invoke-static {v8, v9}, Lafe;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_4
    const-string/jumbo v8, "MailLoginNativeFragment.handleMessage"

    const-string/jumbo v9, "unknown"

    invoke-static {v8, v9}, Lafe;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_5
    const-string/jumbo v8, "error_code"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, "errorCode":Ljava/lang/String;
    const-string/jumbo v8, "error_mgs"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 239
    .local v4, "errorMsg":Ljava/lang/String;
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "errorCode:"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, ", errorMsg:"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v4, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "error":Ljava/lang/String;
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v8}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->b(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v8}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->b(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 241
    const-string/jumbo v8, "MailLoginNativeFragment.handleMessage"

    invoke-static {v8, v2}, Lafe;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :goto_2
    const-string/jumbo v8, "is_agent"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 251
    .local v6, "isAgentMail":Z
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-virtual {v8, v3, v4, v6}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 253
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    iget v8, v8, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->e:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    .line 254
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 245
    .end local v6    # "isAgentMail":Z
    :cond_6
    const-string/jumbo v8, "MailLoginNativeFragment.handleMessage"

    invoke-static {v8, v2}, Lafe;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 258
    .restart local v6    # "isAgentMail":Z
    :cond_7
    sget-object v8, Lcom/alibaba/alimei/cmail/CMailRpcError;->AGENT_SETTINGS_EMPTY_ERROR:Lcom/alibaba/alimei/cmail/CMailRpcError;

    invoke-virtual {v8}, Lcom/alibaba/alimei/cmail/CMailRpcError;->getErrorCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 260
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    sget v11, Laxo$i;->dt_mail_agent_settings_empty:I

    invoke-virtual {v10, v11}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string/jumbo v10, " "

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object v4, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "desc":Ljava/lang/String;
    const/16 v8, 0xbb8

    invoke-static {v1, v8}, Lcms;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 263
    .end local v1    # "desc":Ljava/lang/String;
    :cond_8
    sget-object v8, Lcom/alibaba/alimei/cmail/CMailRpcError;->EMAIL_BIND_ERROR:Lcom/alibaba/alimei/cmail/CMailRpcError;

    invoke-virtual {v8}, Lcom/alibaba/alimei/cmail/CMailRpcError;->getErrorCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 265
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    sget v11, Laxo$i;->dt_mail_bind_error:I

    invoke-virtual {v10, v11}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string/jumbo v10, " "

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object v4, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 266
    .restart local v1    # "desc":Ljava/lang/String;
    const/16 v8, 0xbb8

    invoke-static {v1, v8}, Lcms;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 268
    .end local v1    # "desc":Ljava/lang/String;
    :cond_9
    if-eqz v3, :cond_a

    const-string/jumbo v8, "9999"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 269
    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 270
    .local v7, "subCode":Ljava/lang/String;
    invoke-static {v7, v4}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 275
    .end local v7    # "subCode":Ljava/lang/String;
    :cond_a
    sget-object v8, Lcom/alibaba/alimei/framework/SDKError;->CommonAccountConnectionError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v8}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    sget-object v8, Lcom/alibaba/alimei/framework/SDKError;->CommonAccountIncomingAuthError:Lcom/alibaba/alimei/framework/SDKError;

    .line 276
    invoke-virtual {v8}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    sget-object v8, Lcom/alibaba/alimei/framework/SDKError;->CommonAccountOutgoingAuthError:Lcom/alibaba/alimei/framework/SDKError;

    .line 277
    invoke-virtual {v8}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 278
    :cond_b
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    iget-object v9, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    sget v10, Laxo$i;->dt_mail_scs_login_failed:I

    invoke-virtual {v9, v10}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 280
    :cond_c
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    iget-object v9, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    sget v10, Laxo$i;->dt_mail_scs_login_failed:I

    invoke-virtual {v9, v10}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3, v4}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 215
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method
