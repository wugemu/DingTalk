.class final Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$2;
.super Landroid/os/Handler;
.source "OAuthLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 458
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 460
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    invoke-virtual {v6}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->F()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    iget-object v6, v6, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v6, :cond_2

    .line 463
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    iget-object v6, v6, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 466
    :cond_2
    if-eqz p1, :cond_0

    .line 469
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    .line 471
    :sswitch_0
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    invoke-virtual {v6, v10}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->a(Z)V

    goto :goto_0

    .line 474
    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 476
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_3

    .line 477
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    const-string/jumbo v7, "unknown"

    const-string/jumbo v8, "unknown"

    invoke-virtual {v6, v7, v8, v9}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 480
    :cond_3
    const-string/jumbo v6, "error_code"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 481
    .local v2, "errorCode":Ljava/lang/String;
    const-string/jumbo v6, "error_mgs"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 482
    .local v3, "errorMsg":Ljava/lang/String;
    new-array v6, v13, [Ljava/lang/String;

    const-string/jumbo v7, "errorCode:"

    aput-object v7, v6, v9

    aput-object v2, v6, v10

    const-string/jumbo v7, ", errorMsg:"

    aput-object v7, v6, v11

    aput-object v3, v6, v12

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    .line 484
    const-string/jumbo v6, "is_agent"

    invoke-virtual {v0, v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 485
    .local v4, "isAgentMail":Z
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    invoke-virtual {v6, v2, v3, v4}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 487
    sget-object v6, Lcom/alibaba/alimei/cmail/CMailRpcError;->AGENT_SETTINGS_EMPTY_ERROR:Lcom/alibaba/alimei/cmail/CMailRpcError;

    invoke-virtual {v6}, Lcom/alibaba/alimei/cmail/CMailRpcError;->getErrorCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 489
    new-array v6, v12, [Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    sget v8, Laxo$i;->dt_mail_agent_settings_empty:I

    invoke-virtual {v7, v8}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string/jumbo v7, " "

    aput-object v7, v6, v10

    aput-object v3, v6, v11

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, "desc":Ljava/lang/String;
    invoke-static {v1, v9}, Lcms;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 492
    .end local v1    # "desc":Ljava/lang/String;
    :cond_4
    sget-object v6, Lcom/alibaba/alimei/cmail/CMailRpcError;->EMAIL_BIND_ERROR:Lcom/alibaba/alimei/cmail/CMailRpcError;

    invoke-virtual {v6}, Lcom/alibaba/alimei/cmail/CMailRpcError;->getErrorCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 494
    new-array v6, v12, [Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    sget v8, Laxo$i;->dt_mail_bind_error:I

    invoke-virtual {v7, v8}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string/jumbo v7, " "

    aput-object v7, v6, v10

    aput-object v3, v6, v11

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 495
    .restart local v1    # "desc":Ljava/lang/String;
    invoke-static {v1, v9}, Lcms;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 497
    .end local v1    # "desc":Ljava/lang/String;
    :cond_5
    if-eqz v2, :cond_6

    const-string/jumbo v6, "9999"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 498
    invoke-virtual {v2, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 499
    .local v5, "subCode":Ljava/lang/String;
    invoke-static {v5, v3}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 504
    .end local v5    # "subCode":Ljava/lang/String;
    :cond_6
    sget-object v6, Lcom/alibaba/alimei/framework/SDKError;->CommonAccountConnectionError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v6}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    sget-object v6, Lcom/alibaba/alimei/framework/SDKError;->CommonAccountIncomingAuthError:Lcom/alibaba/alimei/framework/SDKError;

    .line 505
    invoke-virtual {v6}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    sget-object v6, Lcom/alibaba/alimei/framework/SDKError;->CommonAccountOutgoingAuthError:Lcom/alibaba/alimei/framework/SDKError;

    .line 506
    invoke-virtual {v6}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 507
    :cond_7
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    iget-object v7, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    sget v8, Laxo$i;->dt_mail_scs_login_failed:I

    invoke-virtual {v7, v8}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->a(Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 509
    :cond_8
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    iget-object v7, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    sget v8, Laxo$i;->dt_mail_scs_login_failed:I

    invoke-virtual {v7, v8}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2, v3}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->a(Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 469
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method
