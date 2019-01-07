.class final Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$1;
.super Landroid/os/Handler;
.source "MailAgentConfigActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

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
    const/16 v11, 0xbb8

    const/4 v5, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 110
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 112
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-static {v4}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 182
    :goto_0
    :pswitch_0
    return-void

    .line 114
    :cond_0
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-virtual {v4}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->dismissLoadingDialog()V

    .line 116
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-static {v4}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)Lrz;

    move-result-object v4

    .line 1045
    const-wide/16 v6, -0x1

    iput-wide v6, v4, Lrz;->a:J

    .line 118
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 119
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "error_code"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "errorCode":Ljava/lang/String;
    const-string/jumbo v4, "error_mgs"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "errorMsg":Ljava/lang/String;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 128
    :pswitch_1
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    sget v5, Laxo$i;->and_concern_setting_success:I

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcms;->a(Ljava/lang/String;)V

    .line 129
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    .line 1732
    invoke-static {}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a()Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a(Z)V

    .line 1733
    invoke-static {}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a()Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->b()V

    .line 1736
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v5

    .line 1737
    invoke-virtual {v5}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->h()V

    .line 1738
    invoke-static {v4, v9, v9}, Lacg;->a(Landroid/content/Context;IZ)V

    .line 1740
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "mail_login_success"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1741
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v5

    invoke-virtual {v5, v4}, Ldq;->a(Landroid/content/Intent;)Z

    .line 130
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-virtual {v4}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->finish()V

    goto :goto_0

    .line 134
    :pswitch_2
    invoke-static {}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a()Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a(Z)V

    .line 136
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    sget v5, Laxo$i;->dt_mail_config_check_success:I

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :pswitch_3
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    sget v5, Laxo$i;->cspace_save_success:I

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcms;->a(Ljava/lang/String;)V

    .line 142
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-static {v4}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->b(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 143
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-static {v4}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->c(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)V

    goto/16 :goto_0

    .line 147
    :cond_1
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-static {v4}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->b(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)I

    move-result v4

    if-ne v4, v10, :cond_2

    .line 148
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-static {v4}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->d(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)V

    .line 151
    :cond_2
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-virtual {v4}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->finish()V

    goto/16 :goto_0

    .line 157
    :pswitch_4
    invoke-static {}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a()Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v8}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 160
    sget-object v4, Lcom/alibaba/alimei/framework/SDKError;->CommonAccountConnectionError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v4}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 161
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    sget v5, Laxo$i;->dt_mail_server_connect_failed:I

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    :cond_3
    sget-object v4, Lcom/alibaba/alimei/framework/SDKError;->CommonAccountIncomingAuthError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v4}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 163
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    sget v5, Laxo$i;->dt_mail_config_check_failed_imap:I

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 164
    :cond_4
    sget-object v4, Lcom/alibaba/alimei/framework/SDKError;->CommonAccountOutgoingAuthError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v4}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 165
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    sget v5, Laxo$i;->dt_mail_config_check_failed_stmp:I

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 166
    :cond_5
    sget-object v4, Lcom/alibaba/alimei/cmail/CMailRpcError;->AGENT_SETTINGS_EMPTY_ERROR:Lcom/alibaba/alimei/cmail/CMailRpcError;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cmail/CMailRpcError;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 167
    new-array v4, v5, [Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    sget v6, Laxo$i;->dt_mail_agent_settings_empty:I

    invoke-virtual {v5, v6}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const-string/jumbo v5, " "

    aput-object v5, v4, v8

    aput-object v3, v4, v10

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "desc":Ljava/lang/String;
    invoke-static {v1, v11}, Lcms;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 169
    .end local v1    # "desc":Ljava/lang/String;
    :cond_6
    sget-object v4, Lcom/alibaba/alimei/cmail/CMailRpcError;->EMAIL_BIND_ERROR:Lcom/alibaba/alimei/cmail/CMailRpcError;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cmail/CMailRpcError;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 170
    new-array v4, v5, [Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    sget v6, Laxo$i;->dt_mail_bind_error:I

    invoke-virtual {v5, v6}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const-string/jumbo v5, " "

    aput-object v5, v4, v8

    aput-object v3, v4, v10

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    .restart local v1    # "desc":Ljava/lang/String;
    invoke-static {v1, v11}, Lcms;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 174
    .end local v1    # "desc":Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-static {v4, v2, v3}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
