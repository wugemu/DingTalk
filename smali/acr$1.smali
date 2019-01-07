.class final Lacr$1;
.super Landroid/content/BroadcastReceiver;
.source "MultiMailManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacr;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacr;


# direct methods
.method constructor <init>(Lacr;)V
    .locals 0
    .param p1, "this$0"    # Lacr;

    .prologue
    .line 142
    iput-object p1, p0, Lacr$1;->a:Lacr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 145
    if-nez p2, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "action":Ljava/lang/String;
    const-string/jumbo v4, "action_dingtalk_mail_changed"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 149
    const-string/jumbo v4, "account_name"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "accountName":Ljava/lang/String;
    iget-object v4, p0, Lacr$1;->a:Lacr;

    invoke-virtual {v4, v0}, Lacr;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    .end local v0    # "accountName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "mail_new_org_mail"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 152
    const-string/jumbo v4, "account_name"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .restart local v0    # "accountName":Ljava/lang/String;
    iget-object v4, p0, Lacr$1;->a:Lacr;

    .line 1903
    invoke-virtual {v4, v0, v8, v8}, Lacr;->a(Ljava/lang/String;Ljava/lang/Long;Lcma;)V

    goto :goto_0

    .line 154
    .end local v0    # "accountName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "mail_remove_org_mail"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 155
    const-string/jumbo v4, "account_name"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .restart local v0    # "accountName":Ljava/lang/String;
    iget-object v4, p0, Lacr$1;->a:Lacr;

    invoke-static {v4, v0}, Lacr;->a(Lacr;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    .end local v0    # "accountName":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "action_mail_force_out_account"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 158
    iget-object v4, p0, Lacr$1;->a:Lacr;

    invoke-static {v4}, Lacr;->a(Lacr;)V

    .line 160
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->k()Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->j()V

    goto :goto_0

    .line 161
    :cond_5
    const-string/jumbo v4, "com.alibaba.alimei.common.sdk.auth.failed"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 162
    const-string/jumbo v4, "account_name"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .restart local v0    # "accountName":Ljava/lang/String;
    iget-object v4, p0, Lacr$1;->a:Lacr;

    invoke-static {v4, v0}, Lacr;->b(Lacr;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    .end local v0    # "accountName":Ljava/lang/String;
    :cond_6
    const-string/jumbo v4, "action_ali_mail_token_expired"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 165
    const-string/jumbo v4, "account_name"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .restart local v0    # "accountName":Ljava/lang/String;
    iget-object v4, p0, Lacr$1;->a:Lacr;

    .line 2399
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v5

    invoke-interface {v5, v0}, Lpq;->isCommonAccount(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 168
    :cond_7
    :goto_1
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->k()Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->j()V

    goto/16 :goto_0

    .line 2403
    :cond_8
    invoke-virtual {v4}, Lacr;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2880
    const-string/jumbo v5, "JustForStatisticActivity"

    const-string/jumbo v6, "mail_logout_token_expired_dingtalk"

    invoke-static {v5, v6, v8}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2406
    iget-object v5, v4, Lacr;->d:Landroid/content/Context;

    invoke-static {}, Lacr;->d()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lacr$4;

    invoke-direct {v7, v4, v8}, Lacr$4;-><init>(Lacr;Lcma;)V

    invoke-static {v5, v6, v7}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;Lgqq;)V

    goto :goto_1

    .line 2425
    :cond_9
    invoke-virtual {v4, v0, v8}, Lacr;->a(Ljava/lang/String;Lcma;)V

    goto :goto_1

    .line 169
    .end local v0    # "accountName":Ljava/lang/String;
    :cond_a
    const-string/jumbo v4, "action_mail_account_logout"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 170
    const-string/jumbo v4, "mail_account_logout"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .restart local v0    # "accountName":Ljava/lang/String;
    invoke-static {v0}, Lafh;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 172
    iget-object v4, p0, Lacr$1;->a:Lacr;

    invoke-static {v4, v0}, Lacr;->c(Lacr;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    .end local v0    # "accountName":Ljava/lang/String;
    :cond_b
    const-string/jumbo v4, "action_mail_has_increment"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 175
    const-string/jumbo v4, "mail_increment_payload"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3080
    .local v3, "payload":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3084
    new-instance v4, Lace$2;

    invoke-direct {v4, v3}, Lace$2;-><init>(Ljava/lang/String;)V

    .line 3091
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 177
    .end local v3    # "payload":Ljava/lang/String;
    :cond_c
    const-string/jumbo v4, "action_mail_operations"

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 178
    const-string/jumbo v4, "mail_operations_data"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "msgJson":Ljava/lang/String;
    invoke-static {v2}, Lcom/alibaba/alimei/mail/operation/MailOperationsDispatcher;->handleMailOperations(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
